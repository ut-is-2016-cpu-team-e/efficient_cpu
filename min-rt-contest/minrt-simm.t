data

fundefs
vecunit_sgn.2687 (args) : v.2688 inv.2689 (fargs) : 
	Let Td2533.6294
		Lfd v.2688 0
		Let Td2534.6290
			FMul Td2533.6294 Td2533.6294
			Let Td2536.6292
				Lfd v.2688 4
				Let Td2537.6291
					FMul Td2536.6292 Td2536.6292
					Let Td2538.6286
						FAdd Td2534.6290 Td2537.6291
						Let Td2540.6288
							Lfd v.2688 8
							Let Td2541.6287
								FMul Td2540.6288 Td2540.6288
								Let Td2542.6285
									FAdd Td2538.6286 Td2541.6287
									Let l.6262
										CallDir min_caml_sqrt d:f:Td2542.6285 
										Let Td2636.6381.10484
											FLi 0.000000
											Let Tb2543.6278
												IfFEq l.6262 Td2636.6381.10484
													Ans
														Li 1
													Ans
														Li 0
												Let Ti2544.6279
													Li 0
													Let il.6263
														IfEq Tb2543.6278 Ti2544.6279
															Let Ti2545.6280
																Li 0
																Ans
																	IfEq inv.2689 Ti2545.6280
																		Let Td2547.6284
																			FReciprocal l.6262
																			Let Td.e.10726
																				FLi 1.000000
																				Ans
																					FMul Td.e.10726 Td2547.6284
																		Let Td2549.6282
																			FReciprocal l.6262
																			Let Td.e.10725
																				FLi -1.000000
																				Ans
																					FMul Td.e.10725 Td2549.6282
															Ans
																FLi 1.000000
														Let Td2552.6276
															Lfd v.2688 0
															Let Td2553.6275
																FMul Td2552.6276 il.6263
																Let Tu10.6264
																	Stfd Td2553.6275 v.2688 0
																	Let Td2556.6272
																		Lfd v.2688 4
																		Let Td2557.6271
																			FMul Td2556.6272 il.6263
																			Let Tu9.6265
																				Stfd Td2557.6271 v.2688 4
																				Let Td2560.6268
																					Lfd v.2688 8
																					Let Td2561.6267
																						FMul Td2560.6268 il.6263
																						Ans
																							Stfd Td2561.6267 v.2688 8
read_screen_settings.2788 (args) : (fargs) : 
	Let Ta2317.5793
		SetExt 288
		Let Tu2319.5796
			Nop
			Let Td2320.5795
				CallDir min_caml_read_float d:f:
				Let Tu35.5701
					Stfd Td2320.5795 Ta2317.5793 0
					Let Ta2321.5789
						SetExt 288
						Let Tu2323.5792
							Nop
							Let Td2324.5791
								CallDir min_caml_read_float d:f:
								Let Tu34.5702
									Stfd Td2324.5791 Ta2321.5789 4
									Let Ta2325.5785
										SetExt 288
										Let Tu2327.5788
											Nop
											Let Td2328.5787
												CallDir min_caml_read_float d:f:
												Let Tu33.5703
													Stfd Td2328.5787 Ta2325.5785 8
													Let Tu2329.5784
														Nop
														Let Td2330.5783
															CallDir min_caml_read_float d:f:
															Let Td.e.10719
																FLi 0.017453
																Let v1.5704
																	FMul Td2330.5783 Td.e.10719
																	Let cos_v1.5705
																		CallDir min_caml_cos d:f:v1.5704 
																		Let sin_v1.5706
																			CallDir min_caml_sin d:f:v1.5704 
																			Let Tu2331.5782
																				Nop
																				Let Td2332.5781
																					CallDir min_caml_read_float d:f:
																					Let Td.e.10720
																						FLi 0.017453
																						Let v2.5707
																							FMul Td2332.5781 Td.e.10720
																							Let cos_v2.5708
																								CallDir min_caml_cos d:f:v2.5707 
																								Let sin_v2.5709
																									CallDir min_caml_sin d:f:v2.5707 
																									Let Ta2333.5776
																										SetExt 684
																										Let Td2335.5779
																											FMul cos_v1.5705 sin_v2.5709
																											Let Td.e.10721
																												FLi 200.000000
																												Let Td2337.5778
																													FMul Td2335.5779 Td.e.10721
																													Let Tu32.5710
																														Stfd Td2337.5778 Ta2333.5776 0
																														Let Ta2338.5772
																															SetExt 684
																															Let Td.e.10722
																																FLi -200.000000
																																Let Td2341.5774
																																	FMul sin_v1.5706 Td.e.10722
																																	Let Tu31.5711
																																		Stfd Td2341.5774 Ta2338.5772 4
																																		Let Ta2342.5767
																																			SetExt 684
																																			Let Td2344.5770
																																				FMul cos_v1.5705 cos_v2.5708
																																				Let Td.e.10723
																																					FLi 200.000000
																																					Let Td2346.5769
																																						FMul Td2344.5770 Td.e.10723
																																						Let Tu30.5712
																																							Stfd Td2346.5769 Ta2342.5767 8
																																							Let Ta2347.5765
																																								SetExt 660
																																								Let Tu29.5713
																																									Stfd cos_v2.5708 Ta2347.5765 0
																																									Let Ta2349.5762
																																										SetExt 660
																																										Let Td2351.5764
																																											FLi 0.000000
																																											Let Tu28.5714
																																												Stfd Td2351.5764 Ta2349.5762 4
																																												Let Ta2352.5759
																																													SetExt 660
																																													Let Td2354.5761
																																														FNeg sin_v2.5709
																																														Let Tu27.5715
																																															Stfd Td2354.5761 Ta2352.5759 8
																																															Let Ta2355.5755
																																																SetExt 672
																																																Let Td2357.5758
																																																	FNeg sin_v1.5706
																																																	Let Td2358.5757
																																																		FMul Td2357.5758 sin_v2.5709
																																																		Let Tu26.5716
																																																			Stfd Td2358.5757 Ta2355.5755 0
																																																			Let Ta2359.5752
																																																				SetExt 672
																																																				Let Td2361.5754
																																																					FNeg cos_v1.5705
																																																					Let Tu25.5717
																																																						Stfd Td2361.5754 Ta2359.5752 4
																																																						Let Ta2362.5748
																																																							SetExt 672
																																																							Let Td2364.5751
																																																								FNeg sin_v1.5706
																																																								Let Td2365.5750
																																																									FMul Td2364.5751 cos_v2.5708
																																																									Let Tu24.5718
																																																										Stfd Td2365.5750 Ta2362.5748 8
																																																										Let Ta2366.5739
																																																											SetExt 300
																																																											Let Ta2368.5746
																																																												SetExt 288
																																																												Let Td2370.5742
																																																													Lfd Ta2368.5746 0
																																																													Let Ta2371.5744
																																																														SetExt 684
																																																														Let Td2373.5743
																																																															Lfd Ta2371.5744 0
																																																															Let Td2374.5741
																																																																FSub Td2370.5742 Td2373.5743
																																																																Let Tu23.5719
																																																																	Stfd Td2374.5741 Ta2366.5739 0
																																																																	Let Ta2375.5730
																																																																		SetExt 300
																																																																		Let Ta2377.5737
																																																																			SetExt 288
																																																																			Let Td2379.5733
																																																																				Lfd Ta2377.5737 4
																																																																				Let Ta2380.5735
																																																																					SetExt 684
																																																																					Let Td2382.5734
																																																																						Lfd Ta2380.5735 4
																																																																						Let Td2383.5732
																																																																							FSub Td2379.5733 Td2382.5734
																																																																							Let Tu22.5720
																																																																								Stfd Td2383.5732 Ta2375.5730 4
																																																																								Let Ta2384.5721
																																																																									SetExt 300
																																																																									Let Ta2386.5728
																																																																										SetExt 288
																																																																										Let Td2388.5724
																																																																											Lfd Ta2386.5728 8
																																																																											Let Ta2389.5726
																																																																												SetExt 684
																																																																												Let Td2391.5725
																																																																													Lfd Ta2389.5726 8
																																																																													Let Td2392.5723
																																																																														FSub Td2388.5724 Td2391.5725
																																																																														Ans
																																																																															Stfd Td2392.5723 Ta2384.5721 8
read_light.2790 (args) : (fargs) : 
	Let Tu2299.5700
		Nop
		Let nl.5673
			CallDir min_caml_read_int d:f:
			Let Tu2300.5699
				Nop
				Let Td2301.5698
					CallDir min_caml_read_float d:f:
					Let Td.e.10717
						FLi 0.017453
						Let l1.5674
							FMul Td2301.5698 Td.e.10717
							Let sl1.5675
								CallDir min_caml_sin d:f:l1.5674 
								Let Ta2302.5695
									SetExt 312
									Let Td2304.5697
										FNeg sl1.5675
										Let Tu39.5676
											Stfd Td2304.5697 Ta2302.5695 4
											Let Tu2305.5694
												Nop
												Let Td2306.5693
													CallDir min_caml_read_float d:f:
													Let Td.e.10718
														FLi 0.017453
														Let l2.5677
															FMul Td2306.5693 Td.e.10718
															Let cl1.5678
																CallDir min_caml_cos d:f:l1.5674 
																Let sl2.5679
																	CallDir min_caml_sin d:f:l2.5677 
																	Let Ta2307.5690
																		SetExt 312
																		Let Td2309.5692
																			FMul cl1.5678 sl2.5679
																			Let Tu38.5680
																				Stfd Td2309.5692 Ta2307.5690 0
																				Let cl2.5681
																					CallDir min_caml_cos d:f:l2.5677 
																					Let Ta2310.5687
																						SetExt 312
																						Let Td2312.5689
																							FMul cl1.5678 cl2.5681
																							Let Tu37.5682
																								Stfd Td2312.5689 Ta2310.5687 8
																								Let Ta2313.5683
																									SetExt 324
																									Let Tu2315.5686
																										Nop
																										Let Td2316.5685
																											CallDir min_caml_read_float d:f:
																											Ans
																												Stfd Td2316.5685 Ta2313.5683 0
rotate_quadratic_matrix.2792 (args) : abc.2793 rot.2794 (fargs) : 
	Let Td2213.5671
		Lfd rot.2794 0
		Let cos_x.5563
			CallDir min_caml_cos d:f:Td2213.5671 
			Let Td2215.5669
				Lfd rot.2794 0
				Let sin_x.5564
					CallDir min_caml_sin d:f:Td2215.5669 
					Let Td2217.5667
						Lfd rot.2794 4
						Let cos_y.5565
							CallDir min_caml_cos d:f:Td2217.5667 
							Let Td2219.5665
								Lfd rot.2794 4
								Let sin_y.5566
									CallDir min_caml_sin d:f:Td2219.5665 
									Let Td2221.5663
										Lfd rot.2794 8
										Let cos_z.5567
											CallDir min_caml_cos d:f:Td2221.5663 
											Let Td2223.5661
												Lfd rot.2794 8
												Let sin_z.5568
													CallDir min_caml_sin d:f:Td2223.5661 
													Let m00.5569
														FMul cos_y.5565 cos_z.5567
														Let Td2224.5660
															FMul sin_x.5564 sin_y.5566
															Let Td2225.5658
																FMul Td2224.5660 cos_z.5567
																Let Td2226.5659
																	FMul cos_x.5563 sin_z.5568
																	Let m01.5570
																		FSub Td2225.5658 Td2226.5659
																		Let Td2227.5657
																			FMul cos_x.5563 sin_y.5566
																			Let Td2228.5655
																				FMul Td2227.5657 cos_z.5567
																				Let Td2229.5656
																					FMul sin_x.5564 sin_z.5568
																					Let m02.5571
																						FAdd Td2228.5655 Td2229.5656
																						Let m10.5572
																							FMul cos_y.5565 sin_z.5568
																							Let Td2230.5654
																								FMul sin_x.5564 sin_y.5566
																								Let Td2231.5652
																									FMul Td2230.5654 sin_z.5568
																									Let Td2232.5653
																										FMul cos_x.5563 cos_z.5567
																										Let m11.5573
																											FAdd Td2231.5652 Td2232.5653
																											Let Td2233.5651
																												FMul cos_x.5563 sin_y.5566
																												Let Td2234.5649
																													FMul Td2233.5651 sin_z.5568
																													Let Td2235.5650
																														FMul sin_x.5564 cos_z.5567
																														Let m12.5574
																															FSub Td2234.5649 Td2235.5650
																															Let m20.5575
																																FNeg sin_y.5566
																																Let m21.5576
																																	FMul sin_x.5564 cos_y.5565
																																	Let m22.5577
																																		FMul cos_x.5563 cos_y.5565
																																		Let ao.5578
																																			Lfd abc.2793 0
																																			Let bo.5579
																																				Lfd abc.2793 4
																																				Let co.5580
																																					Lfd abc.2793 8
																																					Let Td2240.5645
																																						FMul m00.5569 m00.5569
																																						Let Td2241.5642
																																							FMul ao.5578 Td2240.5645
																																							Let Td2242.5644
																																								FMul m10.5572 m10.5572
																																								Let Td2243.5643
																																									FMul bo.5579 Td2242.5644
																																									Let Td2244.5639
																																										FAdd Td2241.5642 Td2243.5643
																																										Let Td2245.5641
																																											FMul m20.5575 m20.5575
																																											Let Td2246.5640
																																												FMul co.5580 Td2245.5641
																																												Let Td2247.5638
																																													FAdd Td2244.5639 Td2246.5640
																																													Let Tu44.5581
																																														Stfd Td2247.5638 abc.2793 0
																																														Let Td2249.5636
																																															FMul m01.5570 m01.5570
																																															Let Td2250.5633
																																																FMul ao.5578 Td2249.5636
																																																Let Td2251.5635
																																																	FMul m11.5573 m11.5573
																																																	Let Td2252.5634
																																																		FMul bo.5579 Td2251.5635
																																																		Let Td2253.5630
																																																			FAdd Td2250.5633 Td2252.5634
																																																			Let Td2254.5632
																																																				FMul m21.5576 m21.5576
																																																				Let Td2255.5631
																																																					FMul co.5580 Td2254.5632
																																																					Let Td2256.5629
																																																						FAdd Td2253.5630 Td2255.5631
																																																						Let Tu43.5582
																																																							Stfd Td2256.5629 abc.2793 4
																																																							Let Td2258.5627
																																																								FMul m02.5571 m02.5571
																																																								Let Td2259.5624
																																																									FMul ao.5578 Td2258.5627
																																																									Let Td2260.5626
																																																										FMul m12.5574 m12.5574
																																																										Let Td2261.5625
																																																											FMul bo.5579 Td2260.5626
																																																											Let Td2262.5621
																																																												FAdd Td2259.5624 Td2261.5625
																																																												Let Td2263.5623
																																																													FMul m22.5577 m22.5577
																																																													Let Td2264.5622
																																																														FMul co.5580 Td2263.5623
																																																														Let Td2265.5620
																																																															FAdd Td2262.5621 Td2264.5622
																																																															Let Tu42.5583
																																																																Stfd Td2265.5620 abc.2793 8
																																																																Let Td2268.5618
																																																																	FMul ao.5578 m01.5570
																																																																	Let Td2269.5615
																																																																		FMul Td2268.5618 m02.5571
																																																																		Let Td2270.5617
																																																																			FMul bo.5579 m11.5573
																																																																			Let Td2271.5616
																																																																				FMul Td2270.5617 m12.5574
																																																																				Let Td2272.5612
																																																																					FAdd Td2269.5615 Td2271.5616
																																																																					Let Td2273.5614
																																																																						FMul co.5580 m21.5576
																																																																						Let Td2274.5613
																																																																							FMul Td2273.5614 m22.5577
																																																																							Let Td2275.5611
																																																																								FAdd Td2272.5612 Td2274.5613
																																																																								Let Td.e.10714
																																																																									FLi 2.000000
																																																																									Let Td2276.5609
																																																																										FMul Td.e.10714 Td2275.5611
																																																																										Let Tu41.5584
																																																																											Stfd Td2276.5609 rot.2794 0
																																																																											Let Td2279.5607
																																																																												FMul ao.5578 m00.5569
																																																																												Let Td2280.5604
																																																																													FMul Td2279.5607 m02.5571
																																																																													Let Td2281.5606
																																																																														FMul bo.5579 m10.5572
																																																																														Let Td2282.5605
																																																																															FMul Td2281.5606 m12.5574
																																																																															Let Td2283.5601
																																																																																FAdd Td2280.5604 Td2282.5605
																																																																																Let Td2284.5603
																																																																																	FMul co.5580 m20.5575
																																																																																	Let Td2285.5602
																																																																																		FMul Td2284.5603 m22.5577
																																																																																		Let Td2286.5600
																																																																																			FAdd Td2283.5601 Td2285.5602
																																																																																			Let Td.e.10715
																																																																																				FLi 2.000000
																																																																																				Let Td2287.5598
																																																																																					FMul Td.e.10715 Td2286.5600
																																																																																					Let Tu40.5585
																																																																																						Stfd Td2287.5598 rot.2794 4
																																																																																						Let Td2290.5596
																																																																																							FMul ao.5578 m00.5569
																																																																																							Let Td2291.5593
																																																																																								FMul Td2290.5596 m01.5570
																																																																																								Let Td2292.5595
																																																																																									FMul bo.5579 m10.5572
																																																																																									Let Td2293.5594
																																																																																										FMul Td2292.5595 m11.5573
																																																																																										Let Td2294.5590
																																																																																											FAdd Td2291.5593 Td2293.5594
																																																																																											Let Td2295.5592
																																																																																												FMul co.5580 m20.5575
																																																																																												Let Td2296.5591
																																																																																													FMul Td2295.5592 m21.5576
																																																																																													Let Td2297.5589
																																																																																														FAdd Td2294.5590 Td2296.5591
																																																																																														Let Td.e.10716
																																																																																															FLi 2.000000
																																																																																															Let Td2298.5587
																																																																																																FMul Td.e.10716 Td2297.5589
																																																																																																Ans
																																																																																																	Stfd Td2298.5587 rot.2794 8
read_nth_object.2795 (args) : n.2796 (fargs) : 
	Let Tu2115.5562
		Nop
		Let texture.5431
			CallDir min_caml_read_int d:f:
			Let Ti2117.5432
				Li -1
				Ans
					IfEq texture.5431 Ti2117.5432
						Ans
							Li 0
						Let Tu2118.5560
							Nop
							Let form.5433
								CallDir min_caml_read_int d:f:
								Let Tu2119.5559
									Nop
									Let refltype.5434
										CallDir min_caml_read_int d:f:
										Let Tu2120.5558
											Nop
											Let isrot_p.5435
												CallDir min_caml_read_int d:f:
												Let Ti2121.5556
													Li 3
													Let Td2122.5557
														FLi 0.000000
														Let abc.5436
															CallDir min_caml_create_float_array d:Ti2121.5556 f:Td2122.5557 
															Let Tu2124.5555
																Nop
																Let Td2125.5554
																	CallDir min_caml_read_float d:f:
																	Let Tu63.5437
																		Stfd Td2125.5554 abc.5436 0
																		Let Tu2127.5552
																			Nop
																			Let Td2128.5551
																				CallDir min_caml_read_float d:f:
																				Let Tu62.5438
																					Stfd Td2128.5551 abc.5436 4
																					Let Tu2130.5549
																						Nop
																						Let Td2131.5548
																							CallDir min_caml_read_float d:f:
																							Let Tu61.5439
																								Stfd Td2131.5548 abc.5436 8
																								Let Ti2132.5545
																									Li 3
																									Let Td2133.5546
																										FLi 0.000000
																										Let xyz.5440
																											CallDir min_caml_create_float_array d:Ti2132.5545 f:Td2133.5546 
																											Let Tu2135.5544
																												Nop
																												Let Td2136.5543
																													CallDir min_caml_read_float d:f:
																													Let Tu60.5441
																														Stfd Td2136.5543 xyz.5440 0
																														Let Tu2138.5541
																															Nop
																															Let Td2139.5540
																																CallDir min_caml_read_float d:f:
																																Let Tu59.5442
																																	Stfd Td2139.5540 xyz.5440 4
																																	Let Tu2141.5538
																																		Nop
																																		Let Td2142.5537
																																			CallDir min_caml_read_float d:f:
																																			Let Tu58.5443
																																				Stfd Td2142.5537 xyz.5440 8
																																				Let Tu2143.5535
																																					Nop
																																					Let Td2144.5534
																																						CallDir min_caml_read_float d:f:
																																						Let Td2637.6382.10479
																																							FLi 0.000000
																																							Let m_invert.5444
																																								IfFLE Td2637.6382.10479 Td2144.5534
																																									Ans
																																										Li 0
																																									Ans
																																										Li 1
																																								Let Ti2145.5532
																																									Li 2
																																									Let Td2146.5533
																																										FLi 0.000000
																																										Let reflparam.5445
																																											CallDir min_caml_create_float_array d:Ti2145.5532 f:Td2146.5533 
																																											Let Tu2148.5531
																																												Nop
																																												Let Td2149.5530
																																													CallDir min_caml_read_float d:f:
																																													Let Tu57.5446
																																														Stfd Td2149.5530 reflparam.5445 0
																																														Let Tu2151.5528
																																															Nop
																																															Let Td2152.5527
																																																CallDir min_caml_read_float d:f:
																																																Let Tu56.5447
																																																	Stfd Td2152.5527 reflparam.5445 4
																																																	Let Ti2153.5524
																																																		Li 3
																																																		Let Td2154.5525
																																																			FLi 0.000000
																																																			Let color.5448
																																																				CallDir min_caml_create_float_array d:Ti2153.5524 f:Td2154.5525 
																																																				Let Tu2156.5523
																																																					Nop
																																																					Let Td2157.5522
																																																						CallDir min_caml_read_float d:f:
																																																						Let Tu55.5449
																																																							Stfd Td2157.5522 color.5448 0
																																																							Let Tu2159.5520
																																																								Nop
																																																								Let Td2160.5519
																																																									CallDir min_caml_read_float d:f:
																																																									Let Tu54.5450
																																																										Stfd Td2160.5519 color.5448 4
																																																										Let Tu2162.5517
																																																											Nop
																																																											Let Td2163.5516
																																																												CallDir min_caml_read_float d:f:
																																																												Let Tu53.5451
																																																													Stfd Td2163.5516 color.5448 8
																																																													Let Ti2164.5513
																																																														Li 3
																																																														Let Td2165.5514
																																																															FLi 0.000000
																																																															Let rotation.5452
																																																																CallDir min_caml_create_float_array d:Ti2164.5513 f:Td2165.5514 
																																																																Let Ti2166.5498
																																																																	Li 0
																																																																	Let Tu52.5453
																																																																		IfEq isrot_p.5435 Ti2166.5498
																																																																			Ans
																																																																				Nop
																																																																			Let Tu2168.5512
																																																																				Nop
																																																																				Let Td2169.5511
																																																																					CallDir min_caml_read_float d:f:
																																																																					Let Td.e.10711
																																																																						FLi 0.017453
																																																																						Let Td2170.5510
																																																																							FMul Td2169.5511 Td.e.10711
																																																																							Let Tu46.5499
																																																																								Stfd Td2170.5510 rotation.5452 0
																																																																								Let Tu2172.5508
																																																																									Nop
																																																																									Let Td2173.5507
																																																																										CallDir min_caml_read_float d:f:
																																																																										Let Td.e.10712
																																																																											FLi 0.017453
																																																																											Let Td2174.5506
																																																																												FMul Td2173.5507 Td.e.10712
																																																																												Let Tu45.5500
																																																																													Stfd Td2174.5506 rotation.5452 4
																																																																													Let Tu2176.5504
																																																																														Nop
																																																																														Let Td2177.5503
																																																																															CallDir min_caml_read_float d:f:
																																																																															Let Td.e.10713
																																																																																FLi 0.017453
																																																																																Let Td2178.5502
																																																																																	FMul Td2177.5503 Td.e.10713
																																																																																	Ans
																																																																																		Stfd Td2178.5502 rotation.5452 8
																																																																		Let Ti2179.5497
																																																																			Li 2
																																																																			Let m_invert2.5454
																																																																				IfEq form.5433 Ti2179.5497
																																																																					Ans
																																																																						Li 1
																																																																					Ans
																																																																						Mr m_invert.5444
																																																																				Let Ti2180.5495
																																																																					Li 4
																																																																					Let Td2181.5496
																																																																						FLi 0.000000
																																																																						Let ctbl.5455
																																																																							CallDir min_caml_create_float_array d:Ti2180.5495 f:Td2181.5496 
																																																																							Let t.14469
																																																																								Mr $fp
																																																																								Let $fp
																																																																									Add $fp 48
																																																																									Let Tu14480
																																																																										Stw ctbl.5455 t.14469 40
																																																																										Let Tu14479
																																																																											Stw rotation.5452 t.14469 36
																																																																											Let Tu14478
																																																																												Stw color.5448 t.14469 32
																																																																												Let Tu14477
																																																																													Stw reflparam.5445 t.14469 28
																																																																													Let Tu14476
																																																																														Stw m_invert2.5454 t.14469 24
																																																																														Let Tu14475
																																																																															Stw xyz.5440 t.14469 20
																																																																															Let Tu14474
																																																																																Stw abc.5436 t.14469 16
																																																																																Let Tu14473
																																																																																	Stw isrot_p.5435 t.14469 12
																																																																																	Let Tu14472
																																																																																		Stw refltype.5434 t.14469 8
																																																																																		Let Tu14471
																																																																																			Stw form.5433 t.14469 4
																																																																																			Let Tu14470
																																																																																				Stw texture.5431 t.14469 0
																																																																																				Let obj.5456
																																																																																					Mr t.14469
																																																																																					Let Ta2182.5494
																																																																																						SetExt 48
																																																																																						Let o.14481
																																																																																							Slw n.2796 2
																																																																																							Let Tu51.5457
																																																																																								Stw obj.5456 Ta2182.5494 o.14481
																																																																																								Let Ti2183.5461
																																																																																									Li 3
																																																																																									Let Tu50.5458
																																																																																										IfEq form.5433 Ti2183.5461
																																																																																											Let a.5465
																																																																																												Lfd abc.5436 0
																																																																																												Let Td2636.6381.10475
																																																																																													FLi 0.000000
																																																																																													Let Tb2186.5488
																																																																																														IfFEq a.5465 Td2636.6381.10475
																																																																																															Ans
																																																																																																Li 1
																																																																																															Ans
																																																																																																Li 0
																																																																																														Let Ti2187.5489
																																																																																															Li 0
																																																																																															Let Td2191.5487
																																																																																																IfEq Tb2186.5488 Ti2187.5489
																																																																																																	Let Td2636.6381.13809
																																																																																																		FLi 0.000000
																																																																																																		Let Tb2626.6370.10471
																																																																																																			IfFEq a.5465 Td2636.6381.13809
																																																																																																				Ans
																																																																																																					Li 1
																																																																																																				Ans
																																																																																																					Li 0
																																																																																																			Let Ti2627.6371.10472
																																																																																																				Li 0
																																																																																																				Let Td2188.5490
																																																																																																					IfEq Tb2626.6370.10471 Ti2627.6371.10472
																																																																																																						Let Td2638.6383.13808
																																																																																																							FLi 0.000000
																																																																																																							Let Tb2628.6372.10473
																																																																																																								IfFLE a.5465 Td2638.6383.13808
																																																																																																									Ans
																																																																																																										Li 0
																																																																																																									Ans
																																																																																																										Li 1
																																																																																																								Let Ti2629.6373.10474
																																																																																																									Li 0
																																																																																																									Ans
																																																																																																										IfEq Tb2628.6372.10473 Ti2629.6373.10474
																																																																																																											Ans
																																																																																																												FLi -1.000000
																																																																																																											Ans
																																																																																																												FLi 1.000000
																																																																																																						Ans
																																																																																																							FLi 0.000000
																																																																																																					Let Td2189.5491
																																																																																																						FMul a.5465 a.5465
																																																																																																						Let Td2190.5492
																																																																																																							FReciprocal Td2189.5491
																																																																																																							Ans
																																																																																																								FMul Td2188.5490 Td2190.5492
																																																																																																	Ans
																																																																																																		FLi 0.000000
																																																																																																Let Tu48.5466
																																																																																																	Stfd Td2191.5487 abc.5436 0
																																																																																																	Let b.5467
																																																																																																		Lfd abc.5436 4
																																																																																																		Let Td2636.6381.10470
																																																																																																			FLi 0.000000
																																																																																																			Let Tb2194.5480
																																																																																																				IfFEq b.5467 Td2636.6381.10470
																																																																																																					Ans
																																																																																																						Li 1
																																																																																																					Ans
																																																																																																						Li 0
																																																																																																				Let Ti2195.5481
																																																																																																					Li 0
																																																																																																					Let Td2199.5479
																																																																																																						IfEq Tb2194.5480 Ti2195.5481
																																																																																																							Let Td2636.6381.13807
																																																																																																								FLi 0.000000
																																																																																																								Let Tb2626.6370.10466
																																																																																																									IfFEq b.5467 Td2636.6381.13807
																																																																																																										Ans
																																																																																																											Li 1
																																																																																																										Ans
																																																																																																											Li 0
																																																																																																									Let Ti2627.6371.10467
																																																																																																										Li 0
																																																																																																										Let Td2196.5482
																																																																																																											IfEq Tb2626.6370.10466 Ti2627.6371.10467
																																																																																																												Let Td2638.6383.13806
																																																																																																													FLi 0.000000
																																																																																																													Let Tb2628.6372.10468
																																																																																																														IfFLE b.5467 Td2638.6383.13806
																																																																																																															Ans
																																																																																																																Li 0
																																																																																																															Ans
																																																																																																																Li 1
																																																																																																														Let Ti2629.6373.10469
																																																																																																															Li 0
																																																																																																															Ans
																																																																																																																IfEq Tb2628.6372.10468 Ti2629.6373.10469
																																																																																																																	Ans
																																																																																																																		FLi -1.000000
																																																																																																																	Ans
																																																																																																																		FLi 1.000000
																																																																																																												Ans
																																																																																																													FLi 0.000000
																																																																																																											Let Td2197.5483
																																																																																																												FMul b.5467 b.5467
																																																																																																												Let Td2198.5484
																																																																																																													FReciprocal Td2197.5483
																																																																																																													Ans
																																																																																																														FMul Td2196.5482 Td2198.5484
																																																																																																							Ans
																																																																																																								FLi 0.000000
																																																																																																						Let Tu47.5468
																																																																																																							Stfd Td2199.5479 abc.5436 4
																																																																																																							Let c.5469
																																																																																																								Lfd abc.5436 8
																																																																																																								Let Td2636.6381.10465
																																																																																																									FLi 0.000000
																																																																																																									Let Tb2202.5472
																																																																																																										IfFEq c.5469 Td2636.6381.10465
																																																																																																											Ans
																																																																																																												Li 1
																																																																																																											Ans
																																																																																																												Li 0
																																																																																																										Let Ti2203.5473
																																																																																																											Li 0
																																																																																																											Let Td2207.5471
																																																																																																												IfEq Tb2202.5472 Ti2203.5473
																																																																																																													Let Td2636.6381.13805
																																																																																																														FLi 0.000000
																																																																																																														Let Tb2626.6370.10461
																																																																																																															IfFEq c.5469 Td2636.6381.13805
																																																																																																																Ans
																																																																																																																	Li 1
																																																																																																																Ans
																																																																																																																	Li 0
																																																																																																															Let Ti2627.6371.10462
																																																																																																																Li 0
																																																																																																																Let Td2204.5474
																																																																																																																	IfEq Tb2626.6370.10461 Ti2627.6371.10462
																																																																																																																		Let Td2638.6383.13804
																																																																																																																			FLi 0.000000
																																																																																																																			Let Tb2628.6372.10463
																																																																																																																				IfFLE c.5469 Td2638.6383.13804
																																																																																																																					Ans
																																																																																																																						Li 0
																																																																																																																					Ans
																																																																																																																						Li 1
																																																																																																																				Let Ti2629.6373.10464
																																																																																																																					Li 0
																																																																																																																					Ans
																																																																																																																						IfEq Tb2628.6372.10463 Ti2629.6373.10464
																																																																																																																							Ans
																																																																																																																								FLi -1.000000
																																																																																																																							Ans
																																																																																																																								FLi 1.000000
																																																																																																																		Ans
																																																																																																																			FLi 0.000000
																																																																																																																	Let Td2205.5475
																																																																																																																		FMul c.5469 c.5469
																																																																																																																		Let Td2206.5476
																																																																																																																			FReciprocal Td2205.5475
																																																																																																																			Ans
																																																																																																																				FMul Td2204.5474 Td2206.5476
																																																																																																													Ans
																																																																																																														FLi 0.000000
																																																																																																												Ans
																																																																																																													Stfd Td2207.5471 abc.5436 8
																																																																																											Let Ti2208.5462
																																																																																												Li 2
																																																																																												Ans
																																																																																													IfEq form.5433 Ti2208.5462
																																																																																														Let Ti2209.5464
																																																																																															Li 0
																																																																																															Let Ti2210.5463
																																																																																																IfEq m_invert.5444 Ti2209.5464
																																																																																																	Ans
																																																																																																		Li 1
																																																																																																	Ans
																																																																																																		Li 0
																																																																																																Ans
																																																																																																	CallDir vecunit_sgn.2687 d:abc.5436 Ti2210.5463 f:
																																																																																														Ans
																																																																																															Nop
																																																																																										Let Ti2211.5460
																																																																																											Li 0
																																																																																											Let Tu49.5459
																																																																																												IfEq isrot_p.5435 Ti2211.5460
																																																																																													Ans
																																																																																														Nop
																																																																																													Ans
																																																																																														CallDir rotate_quadratic_matrix.2792 d:abc.5436 rotation.5452 f:
																																																																																												Ans
																																																																																													Li 1
read_object.2797 (args) : n.2798 (fargs) : 
	Let Ti2108.5424
		Li 60
		Ans
			IfLE Ti2108.5424 n.2798
				Ans
					Nop
				Let Tb2109.5425
					CallDir read_nth_object.2795 d:n.2798 f:
					Let Ti2110.5426
						Li 0
						Ans
							IfEq Tb2109.5425 Ti2110.5426
								Let Ta2111.5429
									SetExt 0
									Ans
										Stw n.2798 Ta2111.5429 0
								Let Ti2114.5427
									Add n.2798 1
									Let Ti2108.5424.10454
										Li 60
										Ans
											IfLE Ti2108.5424.10454 Ti2114.5427
												Ans
													Nop
												Let Tb2109.5425.10455
													CallDir read_nth_object.2795 d:Ti2114.5427 f:
													Let Ti2110.5426.10456
														Li 0
														Ans
															IfEq Tb2109.5425.10455 Ti2110.5426.10456
																Let Ta2111.5429.10459
																	SetExt 0
																	Ans
																		Stw Ti2114.5427 Ta2111.5429.10459 0
																Let Ti2114.5427.10458
																	Add Ti2114.5427 1
																	Let Ti2108.5424.13790
																		Li 60
																		Ans
																			IfLE Ti2108.5424.13790 Ti2114.5427.10458
																				Ans
																					Nop
																				Let Tb2109.5425.13791
																					CallDir read_nth_object.2795 d:Ti2114.5427.10458 f:
																					Let Ti2110.5426.13792
																						Li 0
																						Ans
																							IfEq Tb2109.5425.13791 Ti2110.5426.13792
																								Let Ta2111.5429.13802
																									SetExt 0
																									Ans
																										Stw Ti2114.5427.10458 Ta2111.5429.13802 0
																								Let Ti2114.5427.13794
																									Add Ti2114.5427.10458 1
																									Let Ti2108.5424.10454.13795
																										Li 60
																										Ans
																											IfLE Ti2108.5424.10454.13795 Ti2114.5427.13794
																												Ans
																													Nop
																												Let Tb2109.5425.10455.13796
																													CallDir read_nth_object.2795 d:Ti2114.5427.13794 f:
																													Let Ti2110.5426.10456.13797
																														Li 0
																														Ans
																															IfEq Tb2109.5425.10455.13796 Ti2110.5426.10456.13797
																																Let Ta2111.5429.10459.13800
																																	SetExt 0
																																	Ans
																																		Stw Ti2114.5427.13794 Ta2111.5429.10459.13800 0
																																Let Ti2114.5427.10458.13799
																																	Add Ti2114.5427.13794 1
																																	Ans
																																		CallDir read_object.2797 d:Ti2114.5427.10458.13799 f:
read_net_item.2801 (args) : length.2802 (fargs) : 
	Let Tu2098.5422
		Nop
		Let item.5411
			CallDir min_caml_read_int d:f:
			Let Ti2100.5412
				Li -1
				Ans
					IfEq item.5411 Ti2100.5412
						Let Ti2102.5417
							Add length.2802 1
							Let Ti2104.5418
								Li -1
								Ans
									CallDir min_caml_create_array d:Ti2102.5417 Ti2104.5418 f:
						Let Ti2106.5415
							Add length.2802 1
							Let Tu2098.5422.10435
								Nop
								Let item.5411.10436
									CallDir min_caml_read_int d:f:
									Let Ti2100.5412.10438
										Li -1
										Let v.5413
											IfEq item.5411.10436 Ti2100.5412.10438
												Let Ti2102.5417.10444
													Add Ti2106.5415 1
													Let Ti2104.5418.10446
														Li -1
														Ans
															CallDir min_caml_create_array d:Ti2102.5417.10444 Ti2104.5418.10446 f:
												Let Ti2106.5415.10440
													Add Ti2106.5415 1
													Let Tu2098.5422.13756
														Nop
														Let item.5411.13757
															CallDir min_caml_read_int d:f:
															Let Ti2100.5412.13758
																Li -1
																Let v.5413.10441
																	IfEq item.5411.13757 Ti2100.5412.13758
																		Let Ti2102.5417.13774
																			Add Ti2106.5415.10440 1
																			Let Ti2104.5418.13775
																				Li -1
																				Ans
																					CallDir min_caml_create_array d:Ti2102.5417.13774 Ti2104.5418.13775 f:
																		Let Ti2106.5415.13760
																			Add Ti2106.5415.10440 1
																			Let Tu2098.5422.10435.13761
																				Nop
																				Let item.5411.10436.13762
																					CallDir min_caml_read_int d:f:
																					Let Ti2100.5412.10438.13763
																						Li -1
																						Let v.5413.13764
																							IfEq item.5411.10436.13762 Ti2100.5412.10438.13763
																								Let Ti2102.5417.10444.13771
																									Add Ti2106.5415.13760 1
																									Let Ti2104.5418.10446.13772
																										Li -1
																										Ans
																											CallDir min_caml_create_array d:Ti2102.5417.10444.13771 Ti2104.5418.10446.13772 f:
																								Let Ti2106.5415.10440.13767
																									Add Ti2106.5415.13760 1
																									Let v.5413.10441.13768
																										CallDir read_net_item.2801 d:Ti2106.5415.10440.13767 f:
																										Let o.14492
																											Slw Ti2106.5415.13760 2
																											Let Tu65.5414.10442.13769
																												Stw item.5411.10436.13762 v.5413.10441.13768 o.14492
																												Ans
																													Mr v.5413.10441.13768
																							Let o.14493
																								Slw Ti2106.5415.10440 2
																								Let Tu65.5414.13765
																									Stw item.5411.13757 v.5413.13764 o.14493
																									Ans
																										Mr v.5413.13764
																	Let o.14494
																		Slw Ti2106.5415 2
																		Let Tu65.5414.10442
																			Stw item.5411.10436 v.5413.10441 o.14494
																			Ans
																				Mr v.5413.10441
											Let o.14495
												Slw length.2802 2
												Let Tu65.5414
													Stw item.5411 v.5413 o.14495
													Ans
														Mr v.5413
read_or_network.2803 (args) : length.2804 (fargs) : 
	Let Tu2098.5422.10423
		Nop
		Let item.5411.10424
			CallDir min_caml_read_int d:f:
			Let Ti2100.5412.10426
				Li -1
				Let net.5399
					IfEq item.5411.10424 Ti2100.5412.10426
						Let Ti2102.5417.10432
							Li 1
							Let Ti2104.5418.10434
								Li -1
								Ans
									CallDir min_caml_create_array d:Ti2102.5417.10432 Ti2104.5418.10434 f:
						Let Tu2098.5422.13736
							Nop
							Let item.5411.13737
								CallDir min_caml_read_int d:f:
								Let Ti2100.5412.13738
									Li -1
									Let v.5413.10429
										IfEq item.5411.13737 Ti2100.5412.13738
											Let Ti2102.5417.13754
												Li 2
												Let Ti2104.5418.13755
													Li -1
													Ans
														CallDir min_caml_create_array d:Ti2102.5417.13754 Ti2104.5418.13755 f:
											Let Tu2098.5422.10435.13741
												Nop
												Let item.5411.10436.13742
													CallDir min_caml_read_int d:f:
													Let Ti2100.5412.10438.13743
														Li -1
														Let v.5413.13744
															IfEq item.5411.10436.13742 Ti2100.5412.10438.13743
																Let Ti2102.5417.10444.13751
																	Li 3
																	Let Ti2104.5418.10446.13752
																		Li -1
																		Ans
																			CallDir min_caml_create_array d:Ti2102.5417.10444.13751 Ti2104.5418.10446.13752 f:
																Let Ti2106.5415.10440.13747
																	Li 3
																	Let v.5413.10441.13748
																		CallDir read_net_item.2801 d:Ti2106.5415.10440.13747 f:
																		Let Tu65.5414.10442.13749
																			Stw item.5411.10436.13742 v.5413.10441.13748 8
																			Ans
																				Mr v.5413.10441.13748
															Let Tu65.5414.13745
																Stw item.5411.13737 v.5413.13744 4
																Ans
																	Mr v.5413.13744
										Let Tu65.5414.10430
											Stw item.5411.10424 v.5413.10429 0
											Ans
												Mr v.5413.10429
					Let Ti2091.5400
						Lwz net.5399 0
						Let Ti2093.5401
							Li -1
							Ans
								IfEq Ti2091.5400 Ti2093.5401
									Let Ti2095.5406
										Add length.2804 1
										Ans
											CallDir min_caml_create_array d:Ti2095.5406 net.5399 f:
									Let Ti2097.5404
										Add length.2804 1
										Let Tu2098.5422.13716
											Nop
											Let item.5411.13717
												CallDir min_caml_read_int d:f:
												Let Ti2100.5412.13718
													Li -1
													Let net.5399.10412
														IfEq item.5411.13717 Ti2100.5412.13718
															Let Ti2102.5417.13734
																Li 1
																Let Ti2104.5418.13735
																	Li -1
																	Ans
																		CallDir min_caml_create_array d:Ti2102.5417.13734 Ti2104.5418.13735 f:
															Let Tu2098.5422.10435.13721
																Nop
																Let item.5411.10436.13722
																	CallDir min_caml_read_int d:f:
																	Let Ti2100.5412.10438.13723
																		Li -1
																		Let v.5413.13724
																			IfEq item.5411.10436.13722 Ti2100.5412.10438.13723
																				Let Ti2102.5417.10444.13731
																					Li 2
																					Let Ti2104.5418.10446.13732
																						Li -1
																						Ans
																							CallDir min_caml_create_array d:Ti2102.5417.10444.13731 Ti2104.5418.10446.13732 f:
																				Let Ti2106.5415.10440.13727
																					Li 2
																					Let v.5413.10441.13728
																						CallDir read_net_item.2801 d:Ti2106.5415.10440.13727 f:
																						Let Tu65.5414.10442.13729
																							Stw item.5411.10436.13722 v.5413.10441.13728 4
																							Ans
																								Mr v.5413.10441.13728
																			Let Tu65.5414.13725
																				Stw item.5411.13717 v.5413.13724 0
																				Ans
																					Mr v.5413.13724
														Let Ti2091.5400.10414
															Lwz net.5399.10412 0
															Let Ti2093.5401.10416
																Li -1
																Let v.5402
																	IfEq Ti2091.5400.10414 Ti2093.5401.10416
																		Let Ti2095.5406.10422
																			Add Ti2097.5404 1
																			Ans
																				CallDir min_caml_create_array d:Ti2095.5406.10422 net.5399.10412 f:
																		Let Ti2097.5404.10418
																			Add Ti2097.5404 1
																			Let v.5402.10419
																				CallDir read_or_network.2803 d:Ti2097.5404.10418 f:
																				Let o.14503
																					Slw Ti2097.5404 2
																					Let Tu66.5403.10420
																						Stw net.5399.10412 v.5402.10419 o.14503
																						Ans
																							Mr v.5402.10419
																	Let o.14504
																		Slw length.2804 2
																		Let Tu66.5403
																			Stw net.5399 v.5402 o.14504
																			Ans
																				Mr v.5402
read_and_network.2805 (args) : n.2806 (fargs) : 
	Let Tu2098.5422.10399
		Nop
		Let item.5411.10400
			CallDir min_caml_read_int d:f:
			Let Ti2100.5412.10402
				Li -1
				Let net.5389
					IfEq item.5411.10400 Ti2100.5412.10402
						Let Ti2102.5417.10408
							Li 1
							Let Ti2104.5418.10410
								Li -1
								Ans
									CallDir min_caml_create_array d:Ti2102.5417.10408 Ti2104.5418.10410 f:
						Let Tu2098.5422.13696
							Nop
							Let item.5411.13697
								CallDir min_caml_read_int d:f:
								Let Ti2100.5412.13698
									Li -1
									Let v.5413.10405
										IfEq item.5411.13697 Ti2100.5412.13698
											Let Ti2102.5417.13714
												Li 2
												Let Ti2104.5418.13715
													Li -1
													Ans
														CallDir min_caml_create_array d:Ti2102.5417.13714 Ti2104.5418.13715 f:
											Let Tu2098.5422.10435.13701
												Nop
												Let item.5411.10436.13702
													CallDir min_caml_read_int d:f:
													Let Ti2100.5412.10438.13703
														Li -1
														Let v.5413.13704
															IfEq item.5411.10436.13702 Ti2100.5412.10438.13703
																Let Ti2102.5417.10444.13711
																	Li 3
																	Let Ti2104.5418.10446.13712
																		Li -1
																		Ans
																			CallDir min_caml_create_array d:Ti2102.5417.10444.13711 Ti2104.5418.10446.13712 f:
																Let Ti2106.5415.10440.13707
																	Li 3
																	Let v.5413.10441.13708
																		CallDir read_net_item.2801 d:Ti2106.5415.10440.13707 f:
																		Let Tu65.5414.10442.13709
																			Stw item.5411.10436.13702 v.5413.10441.13708 8
																			Ans
																				Mr v.5413.10441.13708
															Let Tu65.5414.13705
																Stw item.5411.13697 v.5413.13704 4
																Ans
																	Mr v.5413.13704
										Let Tu65.5414.10406
											Stw item.5411.10400 v.5413.10405 0
											Ans
												Mr v.5413.10405
					Let Ti2083.5390
						Lwz net.5389 0
						Let Ti2085.5391
							Li -1
							Ans
								IfEq Ti2083.5390 Ti2085.5391
									Ans
										Nop
									Let Ta2086.5395
										SetExt 332
										Let o.14509
											Slw n.2806 2
											Let Tu67.5392
												Stw net.5389 Ta2086.5395 o.14509
												Let Ti2088.5393
													Add n.2806 1
													Let Tu2098.5422.13676
														Nop
														Let item.5411.13677
															CallDir min_caml_read_int d:f:
															Let Ti2100.5412.13678
																Li -1
																Let net.5389.10390
																	IfEq item.5411.13677 Ti2100.5412.13678
																		Let Ti2102.5417.13694
																			Li 1
																			Let Ti2104.5418.13695
																				Li -1
																				Ans
																					CallDir min_caml_create_array d:Ti2102.5417.13694 Ti2104.5418.13695 f:
																		Let Tu2098.5422.10435.13681
																			Nop
																			Let item.5411.10436.13682
																				CallDir min_caml_read_int d:f:
																				Let Ti2100.5412.10438.13683
																					Li -1
																					Let v.5413.13684
																						IfEq item.5411.10436.13682 Ti2100.5412.10438.13683
																							Let Ti2102.5417.10444.13691
																								Li 2
																								Let Ti2104.5418.10446.13692
																									Li -1
																									Ans
																										CallDir min_caml_create_array d:Ti2102.5417.10444.13691 Ti2104.5418.10446.13692 f:
																							Let Ti2106.5415.10440.13687
																								Li 2
																								Let v.5413.10441.13688
																									CallDir read_net_item.2801 d:Ti2106.5415.10440.13687 f:
																									Let Tu65.5414.10442.13689
																										Stw item.5411.10436.13682 v.5413.10441.13688 4
																										Ans
																											Mr v.5413.10441.13688
																						Let Tu65.5414.13685
																							Stw item.5411.13677 v.5413.13684 0
																							Ans
																								Mr v.5413.13684
																	Let Ti2083.5390.10392
																		Lwz net.5389.10390 0
																		Let Ti2085.5391.10394
																			Li -1
																			Ans
																				IfEq Ti2083.5390.10392 Ti2085.5391.10394
																					Ans
																						Nop
																					Let Ta2086.5395.10395
																						SetExt 332
																						Let o.14513
																							Slw Ti2088.5393 2
																							Let Tu67.5392.10396
																								Stw net.5389.10390 Ta2086.5395.10395 o.14513
																								Let Ti2088.5393.10398
																									Add Ti2088.5393 1
																									Let Tu2098.5422.10399.13651
																										Nop
																										Let item.5411.10400.13652
																											CallDir min_caml_read_int d:f:
																											Let Ti2100.5412.10402.13653
																												Li -1
																												Let net.5389.13654
																													IfEq item.5411.10400.13652 Ti2100.5412.10402.13653
																														Let Ti2102.5417.10408.13674
																															Li 1
																															Let Ti2104.5418.10410.13675
																																Li -1
																																Ans
																																	CallDir min_caml_create_array d:Ti2102.5417.10408.13674 Ti2104.5418.10410.13675 f:
																														Let Ti2106.5415.10404.13671
																															Li 1
																															Let v.5413.10405.13672
																																CallDir read_net_item.2801 d:Ti2106.5415.10404.13671 f:
																																Let Tu65.5414.10406.13673
																																	Stw item.5411.10400.13652 v.5413.10405.13672 0
																																	Ans
																																		Mr v.5413.10405.13672
																													Let Ti2083.5390.13656
																														Lwz net.5389.13654 0
																														Let Ti2085.5391.13657
																															Li -1
																															Ans
																																IfEq Ti2083.5390.13656 Ti2085.5391.13657
																																	Ans
																																		Nop
																																	Let Ta2086.5395.13658
																																		SetExt 332
																																		Let o.14516
																																			Slw Ti2088.5393.10398 2
																																			Let Tu67.5392.13659
																																				Stw net.5389.13654 Ta2086.5395.13658 o.14516
																																				Let Ti2088.5393.13661
																																					Add Ti2088.5393.10398 1
																																					Let Ti2081.5398.10389.13662
																																						Li 0
																																						Let net.5389.10390.13663
																																							CallDir read_net_item.2801 d:Ti2081.5398.10389.13662 f:
																																							Let Ti2083.5390.10392.13665
																																								Lwz net.5389.10390.13663 0
																																								Let Ti2085.5391.10394.13666
																																									Li -1
																																									Ans
																																										IfEq Ti2083.5390.10392.13665 Ti2085.5391.10394.13666
																																											Ans
																																												Nop
																																											Let Ta2086.5395.10395.13667
																																												SetExt 332
																																												Let o.14518
																																													Slw Ti2088.5393.13661 2
																																													Let Tu67.5392.10396.13668
																																														Stw net.5389.10390.13663 Ta2086.5395.10395.13667 o.14518
																																														Let Ti2088.5393.10398.13670
																																															Add Ti2088.5393.13661 1
																																															Ans
																																																CallDir read_and_network.2805 d:Ti2088.5393.10398.13670 f:
solver_rect_surface.2809 (args) : m.2810 dirvec.2811 i0.2815 i1.2816 i2.2817 (fargs) : b0.2812 b1.2813 b2.2814 
	Let o.14519
		Slw i0.2815 2
		Let Td2046.5376
			Lfd dirvec.2811 o.14519
			Let Td2636.6381.10337
				FLi 0.000000
				Let Tb2047.5346
					IfFEq Td2046.5376 Td2636.6381.10337
						Ans
							Li 1
						Ans
							Li 0
					Let Ti2048.5347
						Li 0
						Ans
							IfEq Tb2047.5346 Ti2048.5347
								Let m_abc.6032.10330
									Lwz m.2810 16
									Let m_invert.6092.10321
										Lwz m.2810 24
										Let o.14520
											Slw i0.2815 2
											Let Td2050.5375
												Lfd dirvec.2811 o.14520
												Let Td2637.6382.10314
													FLi 0.000000
													Let Tb2051.5374
														IfFLE Td2637.6382.10314 Td2050.5375
															Ans
																Li 0
															Ans
																Li 1
														Let Ti2630.6374.10312
															Li 0
															Let Tb2052.5371
																IfEq m_invert.6092.10321 Ti2630.6374.10312
																	Ans
																		Mr Tb2051.5374
																	Let Ti2631.6375.10313
																		Li 0
																		Ans
																			IfEq Tb2051.5374 Ti2631.6375.10313
																				Ans
																					Li 1
																				Ans
																					Li 0
																Let o.14521
																	Slw i0.2815 2
																	Let Td2053.5372
																		Lfd m_abc.6032.10330 o.14521
																		Let Ti2625.6369.10311
																			Li 0
																			Let d.5349
																				IfEq Tb2052.5371 Ti2625.6369.10311
																					Ans
																						FNeg Td2053.5372
																					Ans
																						FMr Td2053.5372
																				Let Td2054.5368
																					FSub d.5349 b0.2812
																					Let o.14522
																						Slw i0.2815 2
																						Let Td2055.5369
																							Lfd dirvec.2811 o.14522
																							Let Td2056.5370
																								FReciprocal Td2055.5369
																								Let d2.5350
																									FMul Td2054.5368 Td2056.5370
																									Let o.14523
																										Slw i1.2816 2
																										Let Td2057.5367
																											Lfd dirvec.2811 o.14523
																											Let Td2058.5366
																												FMul d2.5350 Td2057.5367
																												Let Td2059.5365
																													FAdd Td2058.5366 b1.2813
																													Let Td2634.6379.10310
																														FLi 0.000000
																														Let Td2060.5363
																															IfFLE Td2634.6379.10310 Td2059.5365
																																Ans
																																	FMr Td2059.5365
																																Ans
																																	FNeg Td2059.5365
																															Let o.14524
																																Slw i1.2816 2
																																Let Td2061.5364
																																	Lfd m_abc.6032.10330 o.14524
																																	Let z.6378.10309
																																		FSub Td2060.5363 Td2061.5364
																																		Let Td2637.6382.13649
																																			FLi 0.000000
																																			Let Tb2062.5351
																																				IfFLE Td2637.6382.13649 z.6378.10309
																																					Ans
																																						Li 0
																																					Ans
																																						Li 1
																																				Let Ti2063.5352
																																					Li 0
																																					Ans
																																						IfEq Tb2062.5351 Ti2063.5352
																																							Ans
																																								Li 0
																																							Let o.14525
																																								Slw i2.2817 2
																																								Let Td2064.5362
																																									Lfd dirvec.2811 o.14525
																																									Let Td2065.5361
																																										FMul d2.5350 Td2064.5362
																																										Let Td2066.5360
																																											FAdd Td2065.5361 b2.2814
																																											Let Td2634.6379.10308
																																												FLi 0.000000
																																												Let Td2067.5358
																																													IfFLE Td2634.6379.10308 Td2066.5360
																																														Ans
																																															FMr Td2066.5360
																																														Ans
																																															FNeg Td2066.5360
																																													Let o.14526
																																														Slw i2.2817 2
																																														Let Td2068.5359
																																															Lfd m_abc.6032.10330 o.14526
																																															Let z.6378.10307
																																																FSub Td2067.5358 Td2068.5359
																																																Let Td2637.6382.13648
																																																	FLi 0.000000
																																																	Let Tb2069.5353
																																																		IfFLE Td2637.6382.13648 z.6378.10307
																																																			Ans
																																																				Li 0
																																																			Ans
																																																				Li 1
																																																		Let Ti2070.5354
																																																			Li 0
																																																			Ans
																																																				IfEq Tb2069.5353 Ti2070.5354
																																																					Ans
																																																						Li 0
																																																					Let Ta2071.5356
																																																						SetExt 540
																																																						Let Tu73.5355
																																																							Stfd d2.5350 Ta2071.5356 0
																																																							Ans
																																																								Li 1
								Ans
									Li 0
solver_surface.2824 (args) : m.2825 dirvec.2826 (fargs) : b0.2827 b1.2828 b2.2829 
	Let m_abc.6032.10300
		Lwz m.2825 16
		Let Td2517.6258.10281
			Lfd dirvec.2826 0
			Let Td2519.6259.10283
				Lfd m_abc.6032.10300 0
				Let Td2520.6252.10284
					FMul Td2517.6258.10281 Td2519.6259.10283
					Let Td2522.6254.10286
						Lfd dirvec.2826 4
						Let Td2524.6255.10288
							Lfd m_abc.6032.10300 4
							Let Td2525.6253.10289
								FMul Td2522.6254.10286 Td2524.6255.10288
								Let Td2526.6246.10290
									FAdd Td2520.6252.10284 Td2525.6253.10289
									Let Td2528.6248.10292
										Lfd dirvec.2826 8
										Let Td2530.6249.10294
											Lfd m_abc.6032.10300 8
											Let Td2531.6247.10295
												FMul Td2528.6248.10292 Td2530.6249.10294
												Let d.5321
													FAdd Td2526.6246.10290 Td2531.6247.10295
													Let Td2638.6383.10279
														FLi 0.000000
														Let Tb2023.5322
															IfFLE d.5321 Td2638.6383.10279
																Ans
																	Li 0
																Ans
																	Li 1
															Let Ti2024.5323
																Li 0
																Ans
																	IfEq Tb2023.5322 Ti2024.5323
																		Ans
																			Li 0
																		Let Ta2025.5325
																			SetExt 540
																			Let Td2507.6244.10270
																				Lfd m_abc.6032.10300 0
																				Let Td2508.6240.10271
																					FMul Td2507.6244.10270 b0.2827
																					Let Td2510.6242.10273
																						Lfd m_abc.6032.10300 4
																						Let Td2511.6241.10274
																							FMul Td2510.6242.10273 b1.2828
																							Let Td2512.6236.10275
																								FAdd Td2508.6240.10271 Td2511.6241.10274
																								Let Td2514.6238.10277
																									Lfd m_abc.6032.10300 8
																									Let Td2515.6237.10278
																										FMul Td2514.6238.10277 b2.2829
																										Let Td2027.5330
																											FAdd Td2512.6236.10275 Td2515.6237.10278
																											Let Td2028.5328
																												FNeg Td2027.5330
																												Let Td2029.5329
																													FReciprocal d.5321
																													Let Td2030.5327
																														FMul Td2028.5328 Td2029.5329
																														Let Tu74.5324
																															Stfd Td2030.5327 Ta2025.5325 0
																															Ans
																																Li 1
quadratic.2830 (args) : m.2831 (fargs) : v0.2832 v1.2833 v2.2834 
	Let Td2000.5318
		FMul v0.2832 v0.2832
		Let m_abc.6067.10261
			Lwz m.2831 16
			Let Td2001.5319
				Lfd m_abc.6067.10261 0
				Let Td2002.5314
					FMul Td2000.5318 Td2001.5319
					Let Td2003.5316
						FMul v1.2833 v1.2833
						Let m_abc.6055.10249
							Lwz m.2831 16
							Let Td2004.5317
								Lfd m_abc.6055.10249 4
								Let Td2005.5315
									FMul Td2003.5316 Td2004.5317
									Let Td2006.5310
										FAdd Td2002.5314 Td2005.5315
										Let Td2007.5312
											FMul v2.2834 v2.2834
											Let m_abc.6043.10237
												Lwz m.2831 16
												Let Td2008.5313
													Lfd m_abc.6043.10237 8
													Let Td2009.5311
														FMul Td2007.5312 Td2008.5313
														Let diag_part.5296
															FAdd Td2006.5310 Td2009.5311
															Let m_isrot.6078.10225
																Lwz m.2831 12
																Let Ti2011.5298
																	Li 0
																	Ans
																		IfEq m_isrot.6078.10225 Ti2011.5298
																			Ans
																				FMr diag_part.5296
																			Let Td2012.5308
																				FMul v1.2833 v2.2834
																				Let m_rot123.5929.10219
																					Lwz m.2831 36
																					Let Td2013.5309
																						Lfd m_rot123.5929.10219 0
																						Let Td2014.5307
																							FMul Td2012.5308 Td2013.5309
																							Let Td2015.5303
																								FAdd diag_part.5296 Td2014.5307
																								Let Td2016.5305
																									FMul v2.2834 v0.2832
																									Let m_rot123.5917.10207
																										Lwz m.2831 36
																										Let Td2017.5306
																											Lfd m_rot123.5917.10207 4
																											Let Td2018.5304
																												FMul Td2016.5305 Td2017.5306
																												Let Td2019.5299
																													FAdd Td2015.5303 Td2018.5304
																													Let Td2020.5301
																														FMul v0.2832 v1.2833
																														Let m_rot123.5905.10195
																															Lwz m.2831 36
																															Let Td2021.5302
																																Lfd m_rot123.5905.10195 8
																																Let Td2022.5300
																																	FMul Td2020.5301 Td2021.5302
																																	Ans
																																		FAdd Td2019.5299 Td2022.5300
bilinear.2835 (args) : m.2836 (fargs) : v0.2837 v1.2838 v2.2839 w0.2840 w1.2841 w2.2842 
	Let Td1970.5294
		FMul v0.2837 w0.2840
		Let m_abc.6067.10178
			Lwz m.2836 16
			Let Td1971.5295
				Lfd m_abc.6067.10178 0
				Let Td1972.5290
					FMul Td1970.5294 Td1971.5295
					Let Td1973.5292
						FMul v1.2838 w1.2841
						Let m_abc.6055.10166
							Lwz m.2836 16
							Let Td1974.5293
								Lfd m_abc.6055.10166 4
								Let Td1975.5291
									FMul Td1973.5292 Td1974.5293
									Let Td1976.5286
										FAdd Td1972.5290 Td1975.5291
										Let Td1977.5288
											FMul v2.2839 w2.2842
											Let m_abc.6043.10154
												Lwz m.2836 16
												Let Td1978.5289
													Lfd m_abc.6043.10154 8
													Let Td1979.5287
														FMul Td1977.5288 Td1978.5289
														Let diag_part.5265
															FAdd Td1976.5286 Td1979.5287
															Let m_isrot.6078.10142
																Lwz m.2836 12
																Let Ti1981.5267
																	Li 0
																	Ans
																		IfEq m_isrot.6078.10142 Ti1981.5267
																			Ans
																				FMr diag_part.5265
																			Let Td1982.5284
																				FMul v2.2839 w1.2841
																				Let Td1983.5285
																					FMul v1.2838 w2.2842
																					Let Td1984.5282
																						FAdd Td1982.5284 Td1983.5285
																						Let m_rot123.5929.10136
																							Lwz m.2836 36
																							Let Td1985.5283
																								Lfd m_rot123.5929.10136 0
																								Let Td1986.5276
																									FMul Td1984.5282 Td1985.5283
																									Let Td1987.5280
																										FMul v0.2837 w2.2842
																										Let Td1988.5281
																											FMul v2.2839 w0.2840
																											Let Td1989.5278
																												FAdd Td1987.5280 Td1988.5281
																												Let m_rot123.5917.10124
																													Lwz m.2836 36
																													Let Td1990.5279
																														Lfd m_rot123.5917.10124 4
																														Let Td1991.5277
																															FMul Td1989.5278 Td1990.5279
																															Let Td1992.5270
																																FAdd Td1986.5276 Td1991.5277
																																Let Td1993.5274
																																	FMul v0.2837 w1.2841
																																	Let Td1994.5275
																																		FMul v1.2838 w0.2840
																																		Let Td1995.5272
																																			FAdd Td1993.5274 Td1994.5275
																																			Let m_rot123.5905.10112
																																				Lwz m.2836 36
																																				Let Td1996.5273
																																					Lfd m_rot123.5905.10112 8
																																					Let Td1997.5271
																																						FMul Td1995.5272 Td1996.5273
																																						Let Td1998.5269
																																							FAdd Td1992.5270 Td1997.5271
																																							Let Td.e.10698
																																								FLi 0.500000
																																								Let Td1999.5268
																																									FMul Td1998.5269 Td.e.10698
																																									Ans
																																										FAdd diag_part.5265 Td1999.5268
solver_second.2843 (args) : m.2844 dirvec.2845 (fargs) : b0.2846 b1.2847 b2.2848 
	Let Td1943.5259
		Lfd dirvec.2845 0
		Let Td1945.5260
			Lfd dirvec.2845 4
			Let Td1947.5261
				Lfd dirvec.2845 8
				Let Td2000.5318.10078
					FMul Td1943.5259 Td1943.5259
					Let m_abc.6067.13640
						Lwz m.2844 16
						Let Td2001.5319.10079
							Lfd m_abc.6067.13640 0
							Let Td2002.5314.10080
								FMul Td2000.5318.10078 Td2001.5319.10079
								Let Td2003.5316.10081
									FMul Td1945.5260 Td1945.5260
									Let m_abc.6055.13628
										Lwz m.2844 16
										Let Td2004.5317.10082
											Lfd m_abc.6055.13628 4
											Let Td2005.5315.10083
												FMul Td2003.5316.10081 Td2004.5317.10082
												Let Td2006.5310.10084
													FAdd Td2002.5314.10080 Td2005.5315.10083
													Let Td2007.5312.10085
														FMul Td1947.5261 Td1947.5261
														Let m_abc.6043.13616
															Lwz m.2844 16
															Let Td2008.5313.10086
																Lfd m_abc.6043.13616 8
																Let Td2009.5311.10087
																	FMul Td2007.5312.10085 Td2008.5313.10086
																	Let diag_part.5296.10088
																		FAdd Td2006.5310.10084 Td2009.5311.10087
																		Let m_isrot.6078.13604
																			Lwz m.2844 12
																			Let Ti2011.5298.10090
																				Li 0
																				Let aa.5229
																					IfEq m_isrot.6078.13604 Ti2011.5298.10090
																						Ans
																							FMr diag_part.5296.10088
																						Let Td2012.5308.10091
																							FMul Td1945.5260 Td1947.5261
																							Let m_rot123.5929.13598
																								Lwz m.2844 36
																								Let Td2013.5309.10092
																									Lfd m_rot123.5929.13598 0
																									Let Td2014.5307.10093
																										FMul Td2012.5308.10091 Td2013.5309.10092
																										Let Td2015.5303.10094
																											FAdd diag_part.5296.10088 Td2014.5307.10093
																											Let Td2016.5305.10095
																												FMul Td1947.5261 Td1943.5259
																												Let m_rot123.5917.13586
																													Lwz m.2844 36
																													Let Td2017.5306.10096
																														Lfd m_rot123.5917.13586 4
																														Let Td2018.5304.10097
																															FMul Td2016.5305.10095 Td2017.5306.10096
																															Let Td2019.5299.10098
																																FAdd Td2015.5303.10094 Td2018.5304.10097
																																Let Td2020.5301.10099
																																	FMul Td1943.5259 Td1945.5260
																																	Let m_rot123.5905.13574
																																		Lwz m.2844 36
																																		Let Td2021.5302.10100
																																			Lfd m_rot123.5905.13574 8
																																			Let Td2022.5300.10101
																																				FMul Td2020.5301.10099 Td2021.5302.10100
																																				Ans
																																					FAdd Td2019.5299.10098 Td2022.5300.10101
																					Let Td2636.6381.10077
																						FLi 0.000000
																						Let Tb1948.5230
																							IfFEq aa.5229 Td2636.6381.10077
																								Ans
																									Li 1
																								Ans
																									Li 0
																							Let Ti1949.5231
																								Li 0
																								Ans
																									IfEq Tb1948.5230 Ti1949.5231
																										Let Td1951.5253
																											Lfd dirvec.2845 0
																											Let Td1953.5254
																												Lfd dirvec.2845 4
																												Let Td1955.5255
																													Lfd dirvec.2845 8
																													Let bb.5232
																														CallDir bilinear.2835 d:m.2844 f:Td1951.5253 Td1953.5254 Td1955.5255 b0.2846 b1.2847 b2.2848 
																														Let Td2000.5318.10053
																															FMul b0.2846 b0.2846
																															Let m_abc.6067.13557
																																Lwz m.2844 16
																																Let Td2001.5319.10054
																																	Lfd m_abc.6067.13557 0
																																	Let Td2002.5314.10055
																																		FMul Td2000.5318.10053 Td2001.5319.10054
																																		Let Td2003.5316.10056
																																			FMul b1.2847 b1.2847
																																			Let m_abc.6055.13545
																																				Lwz m.2844 16
																																				Let Td2004.5317.10057
																																					Lfd m_abc.6055.13545 4
																																					Let Td2005.5315.10058
																																						FMul Td2003.5316.10056 Td2004.5317.10057
																																						Let Td2006.5310.10059
																																							FAdd Td2002.5314.10055 Td2005.5315.10058
																																							Let Td2007.5312.10060
																																								FMul b2.2848 b2.2848
																																								Let m_abc.6043.13533
																																									Lwz m.2844 16
																																									Let Td2008.5313.10061
																																										Lfd m_abc.6043.13533 8
																																										Let Td2009.5311.10062
																																											FMul Td2007.5312.10060 Td2008.5313.10061
																																											Let diag_part.5296.10063
																																												FAdd Td2006.5310.10059 Td2009.5311.10062
																																												Let m_isrot.6078.13521
																																													Lwz m.2844 12
																																													Let Ti2011.5298.10065
																																														Li 0
																																														Let cc0.5233
																																															IfEq m_isrot.6078.13521 Ti2011.5298.10065
																																																Ans
																																																	FMr diag_part.5296.10063
																																																Let Td2012.5308.10066
																																																	FMul b1.2847 b2.2848
																																																	Let m_rot123.5929.13515
																																																		Lwz m.2844 36
																																																		Let Td2013.5309.10067
																																																			Lfd m_rot123.5929.13515 0
																																																			Let Td2014.5307.10068
																																																				FMul Td2012.5308.10066 Td2013.5309.10067
																																																				Let Td2015.5303.10069
																																																					FAdd diag_part.5296.10063 Td2014.5307.10068
																																																					Let Td2016.5305.10070
																																																						FMul b2.2848 b0.2846
																																																						Let m_rot123.5917.13503
																																																							Lwz m.2844 36
																																																							Let Td2017.5306.10071
																																																								Lfd m_rot123.5917.13503 4
																																																								Let Td2018.5304.10072
																																																									FMul Td2016.5305.10070 Td2017.5306.10071
																																																									Let Td2019.5299.10073
																																																										FAdd Td2015.5303.10069 Td2018.5304.10072
																																																										Let Td2020.5301.10074
																																																											FMul b0.2846 b1.2847
																																																											Let m_rot123.5905.13491
																																																												Lwz m.2844 36
																																																												Let Td2021.5302.10075
																																																													Lfd m_rot123.5905.13491 8
																																																													Let Td2022.5300.10076
																																																														FMul Td2020.5301.10074 Td2021.5302.10075
																																																														Ans
																																																															FAdd Td2019.5299.10073 Td2022.5300.10076
																																															Let m_shape.6109.10043
																																																Lwz m.2844 4
																																																Let Ti1957.5251
																																																	Li 3
																																																	Let cc.5234
																																																		IfEq m_shape.6109.10043 Ti1957.5251
																																																			Let Td.e.10697
																																																				FLi 1.000000
																																																				Ans
																																																					FSub cc0.5233 Td.e.10697
																																																			Ans
																																																				FMr cc0.5233
																																																		Let Td1959.5248
																																																			FMul bb.5232 bb.5232
																																																			Let Td1960.5249
																																																				FMul aa.5229 cc.5234
																																																				Let d.5235
																																																					FSub Td1959.5248 Td1960.5249
																																																					Let Td2638.6383.10041
																																																						FLi 0.000000
																																																						Let Tb1961.5236
																																																							IfFLE d.5235 Td2638.6383.10041
																																																								Ans
																																																									Li 0
																																																								Ans
																																																									Li 1
																																																							Let Ti1962.5237
																																																								Li 0
																																																								Ans
																																																									IfEq Tb1961.5236 Ti1962.5237
																																																										Ans
																																																											Li 0
																																																										Let sd.5238
																																																											CallDir min_caml_sqrt d:f:d.5235 
																																																											Let m_invert.6092.10036
																																																												Lwz m.2844 24
																																																												Let Ti1964.5247
																																																													Li 0
																																																													Let t1.5239
																																																														IfEq m_invert.6092.10036 Ti1964.5247
																																																															Ans
																																																																FNeg sd.5238
																																																															Ans
																																																																FMr sd.5238
																																																														Let Ta1965.5241
																																																															SetExt 540
																																																															Let Td1967.5244
																																																																FSub t1.5239 bb.5232
																																																																Let Td1968.5245
																																																																	FReciprocal aa.5229
																																																																	Let Td1969.5243
																																																																		FMul Td1967.5244 Td1968.5245
																																																																		Let Tu75.5240
																																																																			Stfd Td1969.5243 Ta1965.5241 0
																																																																			Ans
																																																																				Li 1
																										Ans
																											Li 0
solver.2849 (args) : index.2850 dirvec.2851 org.2852 (fargs) : 
	Let Ta1930.5228
		SetExt 48
		Let o.14569
			Slw index.2850 2
			Let m.5212
				Lwz Ta1930.5228 o.14569
				Let Td1932.5225
					Lfd org.2852 0
					Let m_xyz.6021.10023
						Lwz m.5212 20
						Let Td1933.5226
							Lfd m_xyz.6021.10023 0
							Let b0.5213
								FSub Td1932.5225 Td1933.5226
								Let Td1935.5222
									Lfd org.2852 4
									Let m_xyz.6009.10011
										Lwz m.5212 20
										Let Td1936.5223
											Lfd m_xyz.6009.10011 4
											Let b1.5214
												FSub Td1935.5222 Td1936.5223
												Let Td1938.5219
													Lfd org.2852 8
													Let m_xyz.5997.9999
														Lwz m.5212 20
														Let Td1939.5220
															Lfd m_xyz.5997.9999 8
															Let b2.5215
																FSub Td1938.5219 Td1939.5220
																Let m_shape.6109.9984
																	Lwz m.5212 4
																	Let Ti1940.5217
																		Li 1
																		Ans
																			IfEq m_shape.6109.9984 Ti1940.5217
																				Let Ti2031.5343.9968
																					Li 0
																					Let Ti2032.5344.9969
																						Li 1
																						Let Ti2033.5345.9970
																							Li 2
																							Let Tb2034.5331.9971
																								CallDir solver_rect_surface.2809 d:m.5212 dirvec.2851 Ti2031.5343.9968 Ti2032.5344.9969 Ti2033.5345.9970 f:b0.5213 b1.5214 b2.5215 
																								Let Ti2035.5332.9972
																									Li 0
																									Ans
																										IfEq Tb2034.5331.9971 Ti2035.5332.9972
																											Let Ti2036.5340.9973
																												Li 1
																												Let Ti2037.5341.9974
																													Li 2
																													Let Ti2038.5342.9975
																														Li 0
																														Let Tb2039.5333.9976
																															CallDir solver_rect_surface.2809 d:m.5212 dirvec.2851 Ti2036.5340.9973 Ti2037.5341.9974 Ti2038.5342.9975 f:b1.5214 b2.5215 b0.5213 
																															Let Ti2040.5334.9977
																																Li 0
																																Ans
																																	IfEq Tb2039.5333.9976 Ti2040.5334.9977
																																		Let Ti2041.5337.9978
																																			Li 2
																																			Let Ti2042.5338.9979
																																				Li 0
																																				Let Ti2043.5339.9980
																																					Li 1
																																					Let Tb2044.5335.9981
																																						CallDir solver_rect_surface.2809 d:m.5212 dirvec.2851 Ti2041.5337.9978 Ti2042.5338.9979 Ti2043.5339.9980 f:b2.5215 b0.5213 b1.5214 
																																						Let Ti2045.5336.9982
																																							Li 0
																																							Ans
																																								IfEq Tb2044.5335.9981 Ti2045.5336.9982
																																									Ans
																																										Li 0
																																									Ans
																																										Li 3
																																		Ans
																																			Li 2
																											Ans
																												Li 1
																				Let Ti1941.5218
																					Li 2
																					Ans
																						IfEq m_shape.6109.9984 Ti1941.5218
																							Let m_abc.6032.13475
																								Lwz m.5212 16
																								Let Td2517.6258.13456
																									Lfd dirvec.2851 0
																									Let Td2519.6259.13458
																										Lfd m_abc.6032.13475 0
																										Let Td2520.6252.13459
																											FMul Td2517.6258.13456 Td2519.6259.13458
																											Let Td2522.6254.13461
																												Lfd dirvec.2851 4
																												Let Td2524.6255.13463
																													Lfd m_abc.6032.13475 4
																													Let Td2525.6253.13464
																														FMul Td2522.6254.13461 Td2524.6255.13463
																														Let Td2526.6246.13465
																															FAdd Td2520.6252.13459 Td2525.6253.13464
																															Let Td2528.6248.13467
																																Lfd dirvec.2851 8
																																Let Td2530.6249.13469
																																	Lfd m_abc.6032.13475 8
																																	Let Td2531.6247.13470
																																		FMul Td2528.6248.13467 Td2530.6249.13469
																																		Let d.5321.9958
																																			FAdd Td2526.6246.13465 Td2531.6247.13470
																																			Let Td2638.6383.13454
																																				FLi 0.000000
																																				Let Tb2023.5322.9959
																																					IfFLE d.5321.9958 Td2638.6383.13454
																																						Ans
																																							Li 0
																																						Ans
																																							Li 1
																																					Let Ti2024.5323.9960
																																						Li 0
																																						Ans
																																							IfEq Tb2023.5322.9959 Ti2024.5323.9960
																																								Ans
																																									Li 0
																																								Let Ta2025.5325.9961
																																									SetExt 540
																																									Let Td2507.6244.13445
																																										Lfd m_abc.6032.13475 0
																																										Let Td2508.6240.13446
																																											FMul Td2507.6244.13445 b0.5213
																																											Let Td2510.6242.13448
																																												Lfd m_abc.6032.13475 4
																																												Let Td2511.6241.13449
																																													FMul Td2510.6242.13448 b1.5214
																																													Let Td2512.6236.13450
																																														FAdd Td2508.6240.13446 Td2511.6241.13449
																																														Let Td2514.6238.13452
																																															Lfd m_abc.6032.13475 8
																																															Let Td2515.6237.13453
																																																FMul Td2514.6238.13452 b2.5215
																																																Let Td2027.5330.9963
																																																	FAdd Td2512.6236.13450 Td2515.6237.13453
																																																	Let Td2028.5328.9964
																																																		FNeg Td2027.5330.9963
																																																		Let Td2029.5329.9965
																																																			FReciprocal d.5321.9958
																																																			Let Td2030.5327.9966
																																																				FMul Td2028.5328.9964 Td2029.5329.9965
																																																				Let Tu74.5324.9967
																																																					Stfd Td2030.5327.9966 Ta2025.5325.9961 0
																																																					Ans
																																																						Li 1
																							Ans
																								CallDir solver_second.2843 d:m.5212 dirvec.2851 f:b0.5213 b1.5214 b2.5215 
solver_rect_fast.2853 (args) : m.2854 v.2855 dconst.2856 (fargs) : b0.2857 b1.2858 b2.2859 
	Let Td1844.5210
		Lfd dconst.2856 0
		Let Td1845.5207
			FSub Td1844.5210 b0.2857
			Let Td1847.5208
				Lfd dconst.2856 4
				Let d0.5119
					FMul Td1845.5207 Td1847.5208
					Let Td1849.5205
						Lfd v.2855 4
						Let Td1850.5204
							FMul d0.5119 Td1849.5205
							Let Td1851.5203
								FAdd Td1850.5204 b1.2858
								Let Td2634.6379.9956
									FLi 0.000000
									Let Td1852.5201
										IfFLE Td2634.6379.9956 Td1851.5203
											Ans
												FMr Td1851.5203
											Ans
												FNeg Td1851.5203
										Let m_abc.6055.9948
											Lwz m.2854 16
											Let Td1853.5202
												Lfd m_abc.6055.9948 4
												Let z.6378.9943
													FSub Td1852.5201 Td1853.5202
													Let Td2637.6382.13443
														FLi 0.000000
														Let Tb1854.5187
															IfFLE Td2637.6382.13443 z.6378.9943
																Ans
																	Li 0
																Ans
																	Li 1
															Let Ti1855.5188
																Li 0
																Let Ti1868.5120
																	IfEq Tb1854.5187 Ti1855.5188
																		Ans
																			Li 0
																		Let Td1857.5199
																			Lfd v.2855 8
																			Let Td1858.5198
																				FMul d0.5119 Td1857.5199
																				Let Td1859.5197
																					FAdd Td1858.5198 b2.2859
																					Let Td2634.6379.9942
																						FLi 0.000000
																						Let Td1860.5195
																							IfFLE Td2634.6379.9942 Td1859.5197
																								Ans
																									FMr Td1859.5197
																								Ans
																									FNeg Td1859.5197
																							Let m_abc.6043.9934
																								Lwz m.2854 16
																								Let Td1861.5196
																									Lfd m_abc.6043.9934 8
																									Let z.6378.9929
																										FSub Td1860.5195 Td1861.5196
																										Let Td2637.6382.13442
																											FLi 0.000000
																											Let Tb1862.5189
																												IfFLE Td2637.6382.13442 z.6378.9929
																													Ans
																														Li 0
																													Ans
																														Li 1
																												Let Ti1863.5190
																													Li 0
																													Ans
																														IfEq Tb1862.5189 Ti1863.5190
																															Ans
																																Li 0
																															Let Td1865.5193
																																Lfd dconst.2856 4
																																Let Td2636.6381.9928
																																	FLi 0.000000
																																	Let Tb1866.5191
																																		IfFEq Td1865.5193 Td2636.6381.9928
																																			Ans
																																				Li 1
																																			Ans
																																				Li 0
																																		Let Ti1867.5192
																																			Li 0
																																			Ans
																																				IfEq Tb1866.5191 Ti1867.5192
																																					Ans
																																						Li 1
																																					Ans
																																						Li 0
																	Let Ti1869.5121
																		Li 0
																		Ans
																			IfEq Ti1868.5120 Ti1869.5121
																				Let Td1871.5185
																					Lfd dconst.2856 8
																					Let Td1872.5182
																						FSub Td1871.5185 b1.2858
																						Let Td1874.5183
																							Lfd dconst.2856 12
																							Let d1.5125
																								FMul Td1872.5182 Td1874.5183
																								Let Td1876.5180
																									Lfd v.2855 0
																									Let Td1877.5179
																										FMul d1.5125 Td1876.5180
																										Let Td1878.5178
																											FAdd Td1877.5179 b0.2857
																											Let Td2634.6379.9927
																												FLi 0.000000
																												Let Td1879.5176
																													IfFLE Td2634.6379.9927 Td1878.5178
																														Ans
																															FMr Td1878.5178
																														Ans
																															FNeg Td1878.5178
																													Let m_abc.6067.9919
																														Lwz m.2854 16
																														Let Td1880.5177
																															Lfd m_abc.6067.9919 0
																															Let z.6378.9914
																																FSub Td1879.5176 Td1880.5177
																																Let Td2637.6382.13441
																																	FLi 0.000000
																																	Let Tb1881.5162
																																		IfFLE Td2637.6382.13441 z.6378.9914
																																			Ans
																																				Li 0
																																			Ans
																																				Li 1
																																		Let Ti1882.5163
																																			Li 0
																																			Let Ti1895.5126
																																				IfEq Tb1881.5162 Ti1882.5163
																																					Ans
																																						Li 0
																																					Let Td1884.5174
																																						Lfd v.2855 8
																																						Let Td1885.5173
																																							FMul d1.5125 Td1884.5174
																																							Let Td1886.5172
																																								FAdd Td1885.5173 b2.2859
																																								Let Td2634.6379.9913
																																									FLi 0.000000
																																									Let Td1887.5170
																																										IfFLE Td2634.6379.9913 Td1886.5172
																																											Ans
																																												FMr Td1886.5172
																																											Ans
																																												FNeg Td1886.5172
																																										Let m_abc.6043.9905
																																											Lwz m.2854 16
																																											Let Td1888.5171
																																												Lfd m_abc.6043.9905 8
																																												Let z.6378.9900
																																													FSub Td1887.5170 Td1888.5171
																																													Let Td2637.6382.13440
																																														FLi 0.000000
																																														Let Tb1889.5164
																																															IfFLE Td2637.6382.13440 z.6378.9900
																																																Ans
																																																	Li 0
																																																Ans
																																																	Li 1
																																															Let Ti1890.5165
																																																Li 0
																																																Ans
																																																	IfEq Tb1889.5164 Ti1890.5165
																																																		Ans
																																																			Li 0
																																																		Let Td1892.5168
																																																			Lfd dconst.2856 12
																																																			Let Td2636.6381.9899
																																																				FLi 0.000000
																																																				Let Tb1893.5166
																																																					IfFEq Td1892.5168 Td2636.6381.9899
																																																						Ans
																																																							Li 1
																																																						Ans
																																																							Li 0
																																																					Let Ti1894.5167
																																																						Li 0
																																																						Ans
																																																							IfEq Tb1893.5166 Ti1894.5167
																																																								Ans
																																																									Li 1
																																																								Ans
																																																									Li 0
																																				Let Ti1896.5127
																																					Li 0
																																					Ans
																																						IfEq Ti1895.5126 Ti1896.5127
																																							Let Td1898.5160
																																								Lfd dconst.2856 16
																																								Let Td1899.5157
																																									FSub Td1898.5160 b2.2859
																																									Let Td1901.5158
																																										Lfd dconst.2856 20
																																										Let d2.5131
																																											FMul Td1899.5157 Td1901.5158
																																											Let Td1903.5155
																																												Lfd v.2855 0
																																												Let Td1904.5154
																																													FMul d2.5131 Td1903.5155
																																													Let Td1905.5153
																																														FAdd Td1904.5154 b0.2857
																																														Let Td2634.6379.9898
																																															FLi 0.000000
																																															Let Td1906.5151
																																																IfFLE Td2634.6379.9898 Td1905.5153
																																																	Ans
																																																		FMr Td1905.5153
																																																	Ans
																																																		FNeg Td1905.5153
																																																Let m_abc.6067.9890
																																																	Lwz m.2854 16
																																																	Let Td1907.5152
																																																		Lfd m_abc.6067.9890 0
																																																		Let z.6378.9885
																																																			FSub Td1906.5151 Td1907.5152
																																																			Let Td2637.6382.13439
																																																				FLi 0.000000
																																																				Let Tb1908.5137
																																																					IfFLE Td2637.6382.13439 z.6378.9885
																																																						Ans
																																																							Li 0
																																																						Ans
																																																							Li 1
																																																					Let Ti1909.5138
																																																						Li 0
																																																						Let Ti1922.5132
																																																							IfEq Tb1908.5137 Ti1909.5138
																																																								Ans
																																																									Li 0
																																																								Let Td1911.5149
																																																									Lfd v.2855 4
																																																									Let Td1912.5148
																																																										FMul d2.5131 Td1911.5149
																																																										Let Td1913.5147
																																																											FAdd Td1912.5148 b1.2858
																																																											Let Td2634.6379.9884
																																																												FLi 0.000000
																																																												Let Td1914.5145
																																																													IfFLE Td2634.6379.9884 Td1913.5147
																																																														Ans
																																																															FMr Td1913.5147
																																																														Ans
																																																															FNeg Td1913.5147
																																																													Let m_abc.6055.9876
																																																														Lwz m.2854 16
																																																														Let Td1915.5146
																																																															Lfd m_abc.6055.9876 4
																																																															Let z.6378.9871
																																																																FSub Td1914.5145 Td1915.5146
																																																																Let Td2637.6382.13438
																																																																	FLi 0.000000
																																																																	Let Tb1916.5139
																																																																		IfFLE Td2637.6382.13438 z.6378.9871
																																																																			Ans
																																																																				Li 0
																																																																			Ans
																																																																				Li 1
																																																																		Let Ti1917.5140
																																																																			Li 0
																																																																			Ans
																																																																				IfEq Tb1916.5139 Ti1917.5140
																																																																					Ans
																																																																						Li 0
																																																																					Let Td1919.5143
																																																																						Lfd dconst.2856 20
																																																																						Let Td2636.6381.9870
																																																																							FLi 0.000000
																																																																							Let Tb1920.5141
																																																																								IfFEq Td1919.5143 Td2636.6381.9870
																																																																									Ans
																																																																										Li 1
																																																																									Ans
																																																																										Li 0
																																																																								Let Ti1921.5142
																																																																									Li 0
																																																																									Ans
																																																																										IfEq Tb1920.5141 Ti1921.5142
																																																																											Ans
																																																																												Li 1
																																																																											Ans
																																																																												Li 0
																																																							Let Ti1923.5133
																																																								Li 0
																																																								Ans
																																																									IfEq Ti1922.5132 Ti1923.5133
																																																										Ans
																																																											Li 0
																																																										Let Ta1924.5135
																																																											SetExt 540
																																																											Let Tu78.5134
																																																												Stfd d2.5131 Ta1924.5135 0
																																																												Ans
																																																													Li 3
																																							Let Ta1926.5129
																																								SetExt 540
																																								Let Tu77.5128
																																									Stfd d1.5125 Ta1926.5129 0
																																									Ans
																																										Li 2
																				Let Ta1928.5123
																					SetExt 540
																					Let Tu76.5122
																						Stfd d0.5119 Ta1928.5123 0
																						Ans
																							Li 1
solver_second_fast.2866 (args) : m.2867 dconst.2868 (fargs) : b0.2869 b1.2870 b2.2871 
	Let aa.5059
		Lfd dconst.2868 0
		Let Td2636.6381.9868
			FLi 0.000000
			Let Tb1791.5060
				IfFEq aa.5059 Td2636.6381.9868
					Ans
						Li 1
					Ans
						Li 0
				Let Ti1792.5061
					Li 0
					Ans
						IfEq Tb1791.5060 Ti1792.5061
							Let Td1794.5098
								Lfd dconst.2868 4
								Let Td1795.5094
									FMul Td1794.5098 b0.2869
									Let Td1797.5096
										Lfd dconst.2868 8
										Let Td1798.5095
											FMul Td1797.5096 b1.2870
											Let Td1799.5090
												FAdd Td1795.5094 Td1798.5095
												Let Td1801.5092
													Lfd dconst.2868 12
													Let Td1802.5091
														FMul Td1801.5092 b2.2871
														Let neg_bb.5062
															FAdd Td1799.5090 Td1802.5091
															Let Td2000.5318.9844
																FMul b0.2869 b0.2869
																Let m_abc.6067.13430
																	Lwz m.2867 16
																	Let Td2001.5319.9845
																		Lfd m_abc.6067.13430 0
																		Let Td2002.5314.9846
																			FMul Td2000.5318.9844 Td2001.5319.9845
																			Let Td2003.5316.9847
																				FMul b1.2870 b1.2870
																				Let m_abc.6055.13418
																					Lwz m.2867 16
																					Let Td2004.5317.9848
																						Lfd m_abc.6055.13418 4
																						Let Td2005.5315.9849
																							FMul Td2003.5316.9847 Td2004.5317.9848
																							Let Td2006.5310.9850
																								FAdd Td2002.5314.9846 Td2005.5315.9849
																								Let Td2007.5312.9851
																									FMul b2.2871 b2.2871
																									Let m_abc.6043.13406
																										Lwz m.2867 16
																										Let Td2008.5313.9852
																											Lfd m_abc.6043.13406 8
																											Let Td2009.5311.9853
																												FMul Td2007.5312.9851 Td2008.5313.9852
																												Let diag_part.5296.9854
																													FAdd Td2006.5310.9850 Td2009.5311.9853
																													Let m_isrot.6078.13394
																														Lwz m.2867 12
																														Let Ti2011.5298.9856
																															Li 0
																															Let cc0.5063
																																IfEq m_isrot.6078.13394 Ti2011.5298.9856
																																	Ans
																																		FMr diag_part.5296.9854
																																	Let Td2012.5308.9857
																																		FMul b1.2870 b2.2871
																																		Let m_rot123.5929.13388
																																			Lwz m.2867 36
																																			Let Td2013.5309.9858
																																				Lfd m_rot123.5929.13388 0
																																				Let Td2014.5307.9859
																																					FMul Td2012.5308.9857 Td2013.5309.9858
																																					Let Td2015.5303.9860
																																						FAdd diag_part.5296.9854 Td2014.5307.9859
																																						Let Td2016.5305.9861
																																							FMul b2.2871 b0.2869
																																							Let m_rot123.5917.13376
																																								Lwz m.2867 36
																																								Let Td2017.5306.9862
																																									Lfd m_rot123.5917.13376 4
																																									Let Td2018.5304.9863
																																										FMul Td2016.5305.9861 Td2017.5306.9862
																																										Let Td2019.5299.9864
																																											FAdd Td2015.5303.9860 Td2018.5304.9863
																																											Let Td2020.5301.9865
																																												FMul b0.2869 b1.2870
																																												Let m_rot123.5905.13364
																																													Lwz m.2867 36
																																													Let Td2021.5302.9866
																																														Lfd m_rot123.5905.13364 8
																																														Let Td2022.5300.9867
																																															FMul Td2020.5301.9865 Td2021.5302.9866
																																															Ans
																																																FAdd Td2019.5299.9864 Td2022.5300.9867
																																Let m_shape.6109.9834
																																	Lwz m.2867 4
																																	Let Ti1804.5088
																																		Li 3
																																		Let cc.5064
																																			IfEq m_shape.6109.9834 Ti1804.5088
																																				Let Td.e.10696
																																					FLi 1.000000
																																					Ans
																																						FSub cc0.5063 Td.e.10696
																																				Ans
																																					FMr cc0.5063
																																			Let Td1806.5085
																																				FMul neg_bb.5062 neg_bb.5062
																																				Let Td1807.5086
																																					FMul aa.5059 cc.5064
																																					Let d.5065
																																						FSub Td1806.5085 Td1807.5086
																																						Let Td2638.6383.9832
																																							FLi 0.000000
																																							Let Tb1808.5066
																																								IfFLE d.5065 Td2638.6383.9832
																																									Ans
																																										Li 0
																																									Ans
																																										Li 1
																																								Let Ti1809.5067
																																									Li 0
																																									Ans
																																										IfEq Tb1808.5066 Ti1809.5067
																																											Ans
																																												Li 0
																																											Let m_invert.6092.9827
																																												Lwz m.2867 24
																																												Let Ti1811.5070
																																													Li 0
																																													Let Tu80.5068
																																														IfEq m_invert.6092.9827 Ti1811.5070
																																															Let Ta1812.5078
																																																SetExt 540
																																																Let Td1814.5084
																																																	CallDir min_caml_sqrt d:f:d.5065 
																																																	Let Td1815.5081
																																																		FSub neg_bb.5062 Td1814.5084
																																																		Let Td1817.5082
																																																			Lfd dconst.2868 16
																																																			Let Td1818.5080
																																																				FMul Td1815.5081 Td1817.5082
																																																				Ans
																																																					Stfd Td1818.5080 Ta1812.5078 0
																																															Let Ta1819.5071
																																																SetExt 540
																																																Let Td1821.5077
																																																	CallDir min_caml_sqrt d:f:d.5065 
																																																	Let Td1822.5074
																																																		FAdd neg_bb.5062 Td1821.5077
																																																		Let Td1824.5075
																																																			Lfd dconst.2868 16
																																																			Let Td1825.5073
																																																				FMul Td1822.5074 Td1824.5075
																																																				Ans
																																																					Stfd Td1825.5073 Ta1819.5071 0
																																														Ans
																																															Li 1
							Ans
								Li 0
solver_second_fast2.2883 (args) : m.2884 dconst.2885 sconst.2886 (fargs) : b0.2887 b1.2888 b2.2889 
	Let aa.4988
		Lfd dconst.2885 0
		Let Td2636.6381.9750
			FLi 0.000000
			Let Tb1733.4989
				IfFEq aa.4988 Td2636.6381.9750
					Ans
						Li 1
					Ans
						Li 0
				Let Ti1734.4990
					Li 0
					Ans
						IfEq Tb1733.4989 Ti1734.4990
							Let Td1736.5024
								Lfd dconst.2885 4
								Let Td1737.5020
									FMul Td1736.5024 b0.2887
									Let Td1739.5022
										Lfd dconst.2885 8
										Let Td1740.5021
											FMul Td1739.5022 b1.2888
											Let Td1741.5016
												FAdd Td1737.5020 Td1740.5021
												Let Td1743.5018
													Lfd dconst.2885 12
													Let Td1744.5017
														FMul Td1743.5018 b2.2889
														Let neg_bb.4991
															FAdd Td1741.5016 Td1744.5017
															Let cc.4992
																Lfd sconst.2886 12
																Let Td1746.5013
																	FMul neg_bb.4991 neg_bb.4991
																	Let Td1747.5014
																		FMul aa.4988 cc.4992
																		Let d.4993
																			FSub Td1746.5013 Td1747.5014
																			Let Td2638.6383.9749
																				FLi 0.000000
																				Let Tb1748.4994
																					IfFLE d.4993 Td2638.6383.9749
																						Ans
																							Li 0
																						Ans
																							Li 1
																					Let Ti1749.4995
																						Li 0
																						Ans
																							IfEq Tb1748.4994 Ti1749.4995
																								Ans
																									Li 0
																								Let m_invert.6092.9744
																									Lwz m.2884 24
																									Let Ti1751.4998
																										Li 0
																										Let Tu82.4996
																											IfEq m_invert.6092.9744 Ti1751.4998
																												Let Ta1752.5006
																													SetExt 540
																													Let Td1754.5012
																														CallDir min_caml_sqrt d:f:d.4993 
																														Let Td1755.5009
																															FSub neg_bb.4991 Td1754.5012
																															Let Td1757.5010
																																Lfd dconst.2885 16
																																Let Td1758.5008
																																	FMul Td1755.5009 Td1757.5010
																																	Ans
																																		Stfd Td1758.5008 Ta1752.5006 0
																												Let Ta1759.4999
																													SetExt 540
																													Let Td1761.5005
																														CallDir min_caml_sqrt d:f:d.4993 
																														Let Td1762.5002
																															FAdd neg_bb.4991 Td1761.5005
																															Let Td1764.5003
																																Lfd dconst.2885 16
																																Let Td1765.5001
																																	FMul Td1762.5002 Td1764.5003
																																	Ans
																																		Stfd Td1765.5001 Ta1759.4999 0
																											Ans
																												Li 1
							Ans
								Li 0
solver_fast2.2890 (args) : index.2891 dirvec.2892 (fargs) : 
	Let Ta1725.4987
		SetExt 48
		Let o.14633
			Slw index.2891 2
			Let m.4973
				Lwz Ta1725.4987 o.14633
				Let m_ctbl.5895.9737
					Lwz m.4973 40
					Let b0.4975
						Lfd m_ctbl.5895.9737 0
						Let b1.4976
							Lfd m_ctbl.5895.9737 4
							Let b2.4977
								Lfd m_ctbl.5895.9737 8
								Let m_const.5808.9726
									Lwz dirvec.2892 4
									Let o.14637
										Slw index.2891 2
										Let dconst.4979
											Lwz m_const.5808.9726 o.14637
											Let m_shape.6109.9715
												Lwz m.4973 4
												Let Ti1729.4981
													Li 1
													Ans
														IfEq m_shape.6109.9715 Ti1729.4981
															Let m_vec.5809.9712
																Lwz dirvec.2892 0
																Ans
																	CallDir solver_rect_fast.2853 d:m.4973 m_vec.5809.9712 dconst.4979 f:b0.4975 b1.4976 b2.4977 
															Let Ti1731.4982
																Li 2
																Ans
																	IfEq m_shape.6109.9715 Ti1731.4982
																		Let Td1767.5037.9701
																			Lfd dconst.4979 0
																			Let Td2637.6382.13354
																				FLi 0.000000
																				Let Tb1768.5027.9702
																					IfFLE Td2637.6382.13354 Td1767.5037.9701
																						Ans
																							Li 0
																						Ans
																							Li 1
																					Let Ti1769.5028.9703
																						Li 0
																						Ans
																							IfEq Tb1768.5027.9702 Ti1769.5028.9703
																								Ans
																									Li 0
																								Let Ta1770.5030.9704
																									SetExt 540
																									Let Td1773.5033.9707
																										Lfd dconst.4979 0
																										Let Td1775.5034.9709
																											Lfd m_ctbl.5895.9737 12
																											Let Td1776.5032.9710
																												FMul Td1773.5033.9707 Td1775.5034.9709
																												Let Tu81.5029.9711
																													Stfd Td1776.5032.9710 Ta1770.5030.9704 0
																													Ans
																														Li 1
																		Ans
																			CallDir solver_second_fast2.2883 d:m.4973 dconst.4979 m_ctbl.5895.9737 f:b0.4975 b1.4976 b2.4977 
setup_rect_table.2893 (args) : vec.2894 m.2895 (fargs) : 
	Let Ti1663.4971
		Li 6
		Let Td1664.4972
			FLi 0.000000
			Let const.4904
				CallDir min_caml_create_float_array d:Ti1663.4971 f:Td1664.4972 
				Let Td1666.4969
					Lfd vec.2894 0
					Let Td2636.6381.9699
						FLi 0.000000
						Let Tb1667.4950
							IfFEq Td1666.4969 Td2636.6381.9699
								Ans
									Li 1
								Ans
									Li 0
							Let Ti1668.4951
								Li 0
								Let Tu88.4905
									IfEq Tb1667.4950 Ti1668.4951
										Let m_invert.6092.9694
											Lwz m.2895 24
											Let Td1672.4967
												Lfd vec.2894 0
												Let Td2637.6382.9687
													FLi 0.000000
													Let Tb1673.4966
														IfFLE Td2637.6382.9687 Td1672.4967
															Ans
																Li 0
															Ans
																Li 1
														Let Ti2630.6374.9685
															Li 0
															Let Tb1674.4963
																IfEq m_invert.6092.9694 Ti2630.6374.9685
																	Ans
																		Mr Tb1673.4966
																	Let Ti2631.6375.9686
																		Li 0
																		Ans
																			IfEq Tb1673.4966 Ti2631.6375.9686
																				Ans
																					Li 1
																				Ans
																					Li 0
																Let m_abc.6067.9677
																	Lwz m.2895 16
																	Let Td1675.4964
																		Lfd m_abc.6067.9677 0
																		Let Ti2625.6369.9672
																			Li 0
																			Let Td1676.4962
																				IfEq Tb1674.4963 Ti2625.6369.9672
																					Ans
																						FNeg Td1675.4964
																					Ans
																						FMr Td1675.4964
																				Let Tu83.4954
																					Stfd Td1676.4962 const.4904 0
																					Let Td1680.4958
																						Lfd vec.2894 0
																						Let Td1681.4959
																							FReciprocal Td1680.4958
																							Let Td.e.10693
																								FLi 1.000000
																								Let Td1682.4956
																									FMul Td.e.10693 Td1681.4959
																									Ans
																										Stfd Td1682.4956 const.4904 4
										Let Td1684.4953
											FLi 0.000000
											Ans
												Stfd Td1684.4953 const.4904 4
									Let Td1686.4948
										Lfd vec.2894 4
										Let Td2636.6381.9671
											FLi 0.000000
											Let Tb1687.4929
												IfFEq Td1686.4948 Td2636.6381.9671
													Ans
														Li 1
													Ans
														Li 0
												Let Ti1688.4930
													Li 0
													Let Tu87.4906
														IfEq Tb1687.4929 Ti1688.4930
															Let m_invert.6092.9666
																Lwz m.2895 24
																Let Td1692.4946
																	Lfd vec.2894 4
																	Let Td2637.6382.9659
																		FLi 0.000000
																		Let Tb1693.4945
																			IfFLE Td2637.6382.9659 Td1692.4946
																				Ans
																					Li 0
																				Ans
																					Li 1
																			Let Ti2630.6374.9657
																				Li 0
																				Let Tb1694.4942
																					IfEq m_invert.6092.9666 Ti2630.6374.9657
																						Ans
																							Mr Tb1693.4945
																						Let Ti2631.6375.9658
																							Li 0
																							Ans
																								IfEq Tb1693.4945 Ti2631.6375.9658
																									Ans
																										Li 1
																									Ans
																										Li 0
																					Let m_abc.6055.9649
																						Lwz m.2895 16
																						Let Td1695.4943
																							Lfd m_abc.6055.9649 4
																							Let Ti2625.6369.9644
																								Li 0
																								Let Td1696.4941
																									IfEq Tb1694.4942 Ti2625.6369.9644
																										Ans
																											FNeg Td1695.4943
																										Ans
																											FMr Td1695.4943
																									Let Tu84.4933
																										Stfd Td1696.4941 const.4904 8
																										Let Td1700.4937
																											Lfd vec.2894 4
																											Let Td1701.4938
																												FReciprocal Td1700.4937
																												Let Td.e.10694
																													FLi 1.000000
																													Let Td1702.4935
																														FMul Td.e.10694 Td1701.4938
																														Ans
																															Stfd Td1702.4935 const.4904 12
															Let Td1704.4932
																FLi 0.000000
																Ans
																	Stfd Td1704.4932 const.4904 12
														Let Td1706.4927
															Lfd vec.2894 8
															Let Td2636.6381.9643
																FLi 0.000000
																Let Tb1707.4908
																	IfFEq Td1706.4927 Td2636.6381.9643
																		Ans
																			Li 1
																		Ans
																			Li 0
																	Let Ti1708.4909
																		Li 0
																		Let Tu86.4907
																			IfEq Tb1707.4908 Ti1708.4909
																				Let m_invert.6092.9638
																					Lwz m.2895 24
																					Let Td1712.4925
																						Lfd vec.2894 8
																						Let Td2637.6382.9631
																							FLi 0.000000
																							Let Tb1713.4924
																								IfFLE Td2637.6382.9631 Td1712.4925
																									Ans
																										Li 0
																									Ans
																										Li 1
																								Let Ti2630.6374.9629
																									Li 0
																									Let Tb1714.4921
																										IfEq m_invert.6092.9638 Ti2630.6374.9629
																											Ans
																												Mr Tb1713.4924
																											Let Ti2631.6375.9630
																												Li 0
																												Ans
																													IfEq Tb1713.4924 Ti2631.6375.9630
																														Ans
																															Li 1
																														Ans
																															Li 0
																										Let m_abc.6043.9621
																											Lwz m.2895 16
																											Let Td1715.4922
																												Lfd m_abc.6043.9621 8
																												Let Ti2625.6369.9616
																													Li 0
																													Let Td1716.4920
																														IfEq Tb1714.4921 Ti2625.6369.9616
																															Ans
																																FNeg Td1715.4922
																															Ans
																																FMr Td1715.4922
																														Let Tu85.4912
																															Stfd Td1716.4920 const.4904 16
																															Let Td1720.4916
																																Lfd vec.2894 8
																																Let Td1721.4917
																																	FReciprocal Td1720.4916
																																	Let Td.e.10695
																																		FLi 1.000000
																																		Let Td1722.4914
																																			FMul Td.e.10695 Td1721.4917
																																			Ans
																																				Stfd Td1722.4914 const.4904 20
																				Let Td1724.4911
																					FLi 0.000000
																					Ans
																						Stfd Td1724.4911 const.4904 20
																			Ans
																				Mr const.4904
setup_surface_table.2896 (args) : vec.2897 m.2898 (fargs) : 
	Let Ti1625.4902
		Li 4
		Let Td1626.4903
			FLi 0.000000
			Let const.4860
				CallDir min_caml_create_float_array d:Ti1625.4902 f:Td1626.4903 
				Let Td1628.4899
					Lfd vec.2897 0
					Let m_abc.6067.9608
						Lwz m.2898 16
						Let Td1629.4900
							Lfd m_abc.6067.9608 0
							Let Td1630.4894
								FMul Td1628.4899 Td1629.4900
								Let Td1632.4896
									Lfd vec.2897 4
									Let m_abc.6055.9596
										Lwz m.2898 16
										Let Td1633.4897
											Lfd m_abc.6055.9596 4
											Let Td1634.4895
												FMul Td1632.4896 Td1633.4897
												Let Td1635.4889
													FAdd Td1630.4894 Td1634.4895
													Let Td1637.4891
														Lfd vec.2897 8
														Let m_abc.6043.9584
															Lwz m.2898 16
															Let Td1638.4892
																Lfd m_abc.6043.9584 8
																Let Td1639.4890
																	FMul Td1637.4891 Td1638.4892
																	Let d.4861
																		FAdd Td1635.4889 Td1639.4890
																		Let Td2638.6383.9579
																			FLi 0.000000
																			Let Tb1640.4863
																				IfFLE d.4861 Td2638.6383.9579
																					Ans
																						Li 0
																					Ans
																						Li 1
																				Let Ti1641.4864
																					Li 0
																					Let Tu92.4862
																						IfEq Tb1640.4863 Ti1641.4864
																							Let Td1643.4888
																								FLi 0.000000
																								Ans
																									Stfd Td1643.4888 const.4860 0
																							Let Td1646.4886
																								FReciprocal d.4861
																								Let Td.e.10692
																									FLi -1.000000
																									Let Td1647.4884
																										FMul Td.e.10692 Td1646.4886
																										Let Tu91.4865
																											Stfd Td1647.4884 const.4860 0
																											Let m_abc.6067.9571
																												Lwz m.2898 16
																												Let Td1649.4881
																													Lfd m_abc.6067.9571 0
																													Let Td1650.4882
																														FReciprocal d.4861
																														Let Td1651.4880
																															FMul Td1649.4881 Td1650.4882
																															Let Td1652.4879
																																FNeg Td1651.4880
																																Let Tu90.4866
																																	Stfd Td1652.4879 const.4860 4
																																	Let m_abc.6055.9559
																																		Lwz m.2898 16
																																		Let Td1654.4876
																																			Lfd m_abc.6055.9559 4
																																			Let Td1655.4877
																																				FReciprocal d.4861
																																				Let Td1656.4875
																																					FMul Td1654.4876 Td1655.4877
																																					Let Td1657.4874
																																						FNeg Td1656.4875
																																						Let Tu89.4867
																																							Stfd Td1657.4874 const.4860 8
																																							Let m_abc.6043.9547
																																								Lwz m.2898 16
																																								Let Td1659.4871
																																									Lfd m_abc.6043.9547 8
																																									Let Td1660.4872
																																										FReciprocal d.4861
																																										Let Td1661.4870
																																											FMul Td1659.4871 Td1660.4872
																																											Let Td1662.4869
																																												FNeg Td1661.4870
																																												Ans
																																													Stfd Td1662.4869 const.4860 12
																						Ans
																							Mr const.4860
setup_second_table.2899 (args) : v.2900 m.2901 (fargs) : 
	Let Ti1557.4858
		Li 5
		Let Td1558.4859
			FLi 0.000000
			Let const.4780
				CallDir min_caml_create_float_array d:Ti1557.4858 f:Td1558.4859 
				Let Td1560.4852
					Lfd v.2900 0
					Let Td1562.4853
						Lfd v.2900 4
						Let Td1564.4854
							Lfd v.2900 8
							Let Td2000.5318.9519
								FMul Td1560.4852 Td1560.4852
								Let m_abc.6067.13346
									Lwz m.2901 16
									Let Td2001.5319.9520
										Lfd m_abc.6067.13346 0
										Let Td2002.5314.9521
											FMul Td2000.5318.9519 Td2001.5319.9520
											Let Td2003.5316.9522
												FMul Td1562.4853 Td1562.4853
												Let m_abc.6055.13334
													Lwz m.2901 16
													Let Td2004.5317.9523
														Lfd m_abc.6055.13334 4
														Let Td2005.5315.9524
															FMul Td2003.5316.9522 Td2004.5317.9523
															Let Td2006.5310.9525
																FAdd Td2002.5314.9521 Td2005.5315.9524
																Let Td2007.5312.9526
																	FMul Td1564.4854 Td1564.4854
																	Let m_abc.6043.13322
																		Lwz m.2901 16
																		Let Td2008.5313.9527
																			Lfd m_abc.6043.13322 8
																			Let Td2009.5311.9528
																				FMul Td2007.5312.9526 Td2008.5313.9527
																				Let diag_part.5296.9529
																					FAdd Td2006.5310.9525 Td2009.5311.9528
																					Let m_isrot.6078.13310
																						Lwz m.2901 12
																						Let Ti2011.5298.9531
																							Li 0
																							Let aa.4781
																								IfEq m_isrot.6078.13310 Ti2011.5298.9531
																									Ans
																										FMr diag_part.5296.9529
																									Let Td2012.5308.9532
																										FMul Td1562.4853 Td1564.4854
																										Let m_rot123.5929.13304
																											Lwz m.2901 36
																											Let Td2013.5309.9533
																												Lfd m_rot123.5929.13304 0
																												Let Td2014.5307.9534
																													FMul Td2012.5308.9532 Td2013.5309.9533
																													Let Td2015.5303.9535
																														FAdd diag_part.5296.9529 Td2014.5307.9534
																														Let Td2016.5305.9536
																															FMul Td1564.4854 Td1560.4852
																															Let m_rot123.5917.13292
																																Lwz m.2901 36
																																Let Td2017.5306.9537
																																	Lfd m_rot123.5917.13292 4
																																	Let Td2018.5304.9538
																																		FMul Td2016.5305.9536 Td2017.5306.9537
																																		Let Td2019.5299.9539
																																			FAdd Td2015.5303.9535 Td2018.5304.9538
																																			Let Td2020.5301.9540
																																				FMul Td1560.4852 Td1562.4853
																																				Let m_rot123.5905.13280
																																					Lwz m.2901 36
																																					Let Td2021.5302.9541
																																						Lfd m_rot123.5905.13280 8
																																						Let Td2022.5300.9542
																																							FMul Td2020.5301.9540 Td2021.5302.9541
																																							Ans
																																								FAdd Td2019.5299.9539 Td2022.5300.9542
																								Let Td1566.4849
																									Lfd v.2900 0
																									Let m_abc.6067.9511
																										Lwz m.2901 16
																										Let Td1567.4850
																											Lfd m_abc.6067.9511 0
																											Let Td1568.4848
																												FMul Td1566.4849 Td1567.4850
																												Let c1.4782
																													FNeg Td1568.4848
																													Let Td1570.4845
																														Lfd v.2900 4
																														Let m_abc.6055.9499
																															Lwz m.2901 16
																															Let Td1571.4846
																																Lfd m_abc.6055.9499 4
																																Let Td1572.4844
																																	FMul Td1570.4845 Td1571.4846
																																	Let c2.4783
																																		FNeg Td1572.4844
																																		Let Td1574.4841
																																			Lfd v.2900 8
																																			Let m_abc.6043.9487
																																				Lwz m.2901 16
																																				Let Td1575.4842
																																					Lfd m_abc.6043.9487 8
																																					Let Td1576.4840
																																						FMul Td1574.4841 Td1575.4842
																																						Let c3.4784
																																							FNeg Td1576.4840
																																							Let Tu99.4785
																																								Stfd aa.4781 const.4780 0
																																								Let m_isrot.6078.9475
																																									Lwz m.2901 12
																																									Let Ti1579.4795
																																										Li 0
																																										Let Tu98.4786
																																											IfEq m_isrot.6078.9475 Ti1579.4795
																																												Let Tu96.4834
																																													Stfd c1.4782 const.4780 4
																																													Let Tu95.4835
																																														Stfd c2.4783 const.4780 8
																																														Ans
																																															Stfd c3.4784 const.4780 12
																																												Let Td1585.4831
																																													Lfd v.2900 8
																																													Let m_rot123.5917.9469
																																														Lwz m.2901 36
																																														Let Td1586.4832
																																															Lfd m_rot123.5917.9469 4
																																															Let Td1587.4826
																																																FMul Td1585.4831 Td1586.4832
																																																Let Td1589.4828
																																																	Lfd v.2900 4
																																																	Let m_rot123.5905.9457
																																																		Lwz m.2901 36
																																																		Let Td1590.4829
																																																			Lfd m_rot123.5905.9457 8
																																																			Let Td1591.4827
																																																				FMul Td1589.4828 Td1590.4829
																																																				Let Td1592.4825
																																																					FAdd Td1587.4826 Td1591.4827
																																																					Let Td.e.10688
																																																						FLi 0.500000
																																																						Let Td1593.4824
																																																							FMul Td1592.4825 Td.e.10688
																																																							Let Td1594.4823
																																																								FSub c1.4782 Td1593.4824
																																																								Let Tu94.4796
																																																									Stfd Td1594.4823 const.4780 4
																																																									Let Td1597.4819
																																																										Lfd v.2900 8
																																																										Let m_rot123.5929.9444
																																																											Lwz m.2901 36
																																																											Let Td1598.4820
																																																												Lfd m_rot123.5929.9444 0
																																																												Let Td1599.4814
																																																													FMul Td1597.4819 Td1598.4820
																																																													Let Td1601.4816
																																																														Lfd v.2900 0
																																																														Let m_rot123.5905.9432
																																																															Lwz m.2901 36
																																																															Let Td1602.4817
																																																																Lfd m_rot123.5905.9432 8
																																																																Let Td1603.4815
																																																																	FMul Td1601.4816 Td1602.4817
																																																																	Let Td1604.4813
																																																																		FAdd Td1599.4814 Td1603.4815
																																																																		Let Td.e.10689
																																																																			FLi 0.500000
																																																																			Let Td1605.4812
																																																																				FMul Td1604.4813 Td.e.10689
																																																																				Let Td1606.4811
																																																																					FSub c2.4783 Td1605.4812
																																																																					Let Tu93.4797
																																																																						Stfd Td1606.4811 const.4780 8
																																																																						Let Td1609.4807
																																																																							Lfd v.2900 4
																																																																							Let m_rot123.5929.9419
																																																																								Lwz m.2901 36
																																																																								Let Td1610.4808
																																																																									Lfd m_rot123.5929.9419 0
																																																																									Let Td1611.4802
																																																																										FMul Td1609.4807 Td1610.4808
																																																																										Let Td1613.4804
																																																																											Lfd v.2900 0
																																																																											Let m_rot123.5917.9407
																																																																												Lwz m.2901 36
																																																																												Let Td1614.4805
																																																																													Lfd m_rot123.5917.9407 4
																																																																													Let Td1615.4803
																																																																														FMul Td1613.4804 Td1614.4805
																																																																														Let Td1616.4801
																																																																															FAdd Td1611.4802 Td1615.4803
																																																																															Let Td.e.10690
																																																																																FLi 0.500000
																																																																																Let Td1617.4800
																																																																																	FMul Td1616.4801 Td.e.10690
																																																																																	Let Td1618.4799
																																																																																		FSub c3.4784 Td1617.4800
																																																																																		Ans
																																																																																			Stfd Td1618.4799 const.4780 12
																																											Let Td2636.6381.9396
																																												FLi 0.000000
																																												Let Tb1619.4788
																																													IfFEq aa.4781 Td2636.6381.9396
																																														Ans
																																															Li 1
																																														Ans
																																															Li 0
																																													Let Ti1620.4789
																																														Li 0
																																														Let Tu97.4787
																																															IfEq Tb1619.4788 Ti1620.4789
																																																Let Td1623.4793
																																																	FReciprocal aa.4781
																																																	Let Td.e.10691
																																																		FLi 1.000000
																																																		Let Td1624.4791
																																																			FMul Td.e.10691 Td1623.4793
																																																			Ans
																																																				Stfd Td1624.4791 const.4780 16
																																																Ans
																																																	Nop
																																															Ans
																																																Mr const.4780
iter_setup_dirvec_constants.2902 (args) : dirvec.2903 index.2904 (fargs) : 
	Let Ti1548.4766
		Li 0
		Ans
			IfLE Ti1548.4766 index.2904
				Let Ta1549.4779
					SetExt 48
					Let o.14712
						Slw index.2904 2
						Let m.4767
							Lwz Ta1549.4779 o.14712
							Let m_const.5808.9395
								Lwz dirvec.2903 4
								Let m_vec.5809.9392
									Lwz dirvec.2903 0
									Let m_shape.6109.9382
										Lwz m.4767 4
										Let Ti1550.4774
											Li 1
											Let Tu100.4771
												IfEq m_shape.6109.9382 Ti1550.4774
													Let Ta1551.4778
														CallDir setup_rect_table.2893 d:m_vec.5809.9392 m.4767 f:
														Let o.14715
															Slw index.2904 2
															Ans
																Stw Ta1551.4778 m_const.5808.9395 o.14715
													Let Ti1552.4775
														Li 2
														Ans
															IfEq m_shape.6109.9382 Ti1552.4775
																Let Ta1553.4777
																	CallDir setup_surface_table.2896 d:m_vec.5809.9392 m.4767 f:
																	Let o.14714
																		Slw index.2904 2
																		Ans
																			Stw Ta1553.4777 m_const.5808.9395 o.14714
																Let Ta1554.4776
																	CallDir setup_second_table.2899 d:m_vec.5809.9392 m.4767 f:
																	Let o.14713
																		Slw index.2904 2
																		Ans
																			Stw Ta1554.4776 m_const.5808.9395 o.14713
												Let Ti1556.4772
													Sub index.2904 1
													Let Ti1548.4766.9367
														Li 0
														Ans
															IfLE Ti1548.4766.9367 Ti1556.4772
																Let Ta1549.4779.9368
																	SetExt 48
																	Let o.14716
																		Slw Ti1556.4772 2
																		Let m.4767.9369
																			Lwz Ta1549.4779.9368 o.14716
																			Let m_const.5808.13270
																				Lwz dirvec.2903 4
																				Let m_vec.5809.13267
																					Lwz dirvec.2903 0
																					Let m_shape.6109.13257
																						Lwz m.4767.9369 4
																						Let Ti1550.4774.9373
																							Li 1
																							Let Tu100.4771.9374
																								IfEq m_shape.6109.13257 Ti1550.4774.9373
																									Let Ta1551.4778.9380
																										CallDir setup_rect_table.2893 d:m_vec.5809.13267 m.4767.9369 f:
																										Let o.14719
																											Slw Ti1556.4772 2
																											Ans
																												Stw Ta1551.4778.9380 m_const.5808.13270 o.14719
																									Let Ti1552.4775.9377
																										Li 2
																										Ans
																											IfEq m_shape.6109.13257 Ti1552.4775.9377
																												Let Ta1553.4777.9379
																													CallDir setup_surface_table.2896 d:m_vec.5809.13267 m.4767.9369 f:
																													Let o.14718
																														Slw Ti1556.4772 2
																														Ans
																															Stw Ta1553.4777.9379 m_const.5808.13270 o.14718
																												Let Ta1554.4776.9378
																													CallDir setup_second_table.2899 d:m_vec.5809.13267 m.4767.9369 f:
																													Let o.14717
																														Slw Ti1556.4772 2
																														Ans
																															Stw Ta1554.4776.9378 m_const.5808.13270 o.14717
																								Let Ti1556.4772.9376
																									Sub Ti1556.4772 1
																									Ans
																										CallDir iter_setup_dirvec_constants.2902 d:dirvec.2903 Ti1556.4772.9376 f:
																Ans
																	Nop
				Ans
					Nop
setup_startp_constants.2907 (args) : p.2908 index.2909 (fargs) : 
	Let Ti1503.4713
		Li 0
		Ans
			IfLE Ti1503.4713 index.2909
				Let Ta1504.4760
					SetExt 48
					Let o.14720
						Slw index.2909 2
						Let obj.4714
							Lwz Ta1504.4760 o.14720
							Let m_ctbl.5895.9352
								Lwz obj.4714 40
								Let m_shape.6109.9332
									Lwz obj.4714 4
									Let Td1507.4757
										Lfd p.2908 0
										Let m_xyz.6021.9324
											Lwz obj.4714 20
											Let Td1508.4758
												Lfd m_xyz.6021.9324 0
												Let Td1509.4756
													FSub Td1507.4757 Td1508.4758
													Let Tu104.4717
														Stfd Td1509.4756 m_ctbl.5895.9352 0
														Let Td1512.4752
															Lfd p.2908 4
															Let m_xyz.6009.9312
																Lwz obj.4714 20
																Let Td1513.4753
																	Lfd m_xyz.6009.9312 4
																	Let Td1514.4751
																		FSub Td1512.4752 Td1513.4753
																		Let Tu103.4718
																			Stfd Td1514.4751 m_ctbl.5895.9352 4
																			Let Td1517.4747
																				Lfd p.2908 8
																				Let m_xyz.5997.9300
																					Lwz obj.4714 20
																					Let Td1518.4748
																						Lfd m_xyz.5997.9300 8
																						Let Td1519.4746
																							FSub Td1517.4747 Td1518.4748
																							Let Tu102.4719
																								Stfd Td1519.4746 m_ctbl.5895.9352 8
																								Let Ti1520.4723
																									Li 2
																									Let Tu101.4720
																										IfEq m_shape.6109.9332 Ti1520.4723
																											Let m_abc.6032.9288
																												Lwz obj.4714 16
																												Let Td1524.4739
																													Lfd m_ctbl.5895.9352 0
																													Let Td1526.4740
																														Lfd m_ctbl.5895.9352 4
																														Let Td1528.4741
																															Lfd m_ctbl.5895.9352 8
																															Let Td2507.6244.9275
																																Lfd m_abc.6032.9288 0
																																Let Td2508.6240.9276
																																	FMul Td2507.6244.9275 Td1524.4739
																																	Let Td2510.6242.9278
																																		Lfd m_abc.6032.9288 4
																																		Let Td2511.6241.9279
																																			FMul Td2510.6242.9278 Td1526.4740
																																			Let Td2512.6236.9280
																																				FAdd Td2508.6240.9276 Td2511.6241.9279
																																				Let Td2514.6238.9282
																																					Lfd m_abc.6032.9288 8
																																					Let Td2515.6237.9283
																																						FMul Td2514.6238.9282 Td1528.4741
																																						Let Td1529.4737
																																							FAdd Td2512.6236.9280 Td2515.6237.9283
																																							Ans
																																								Stfd Td1529.4737 m_ctbl.5895.9352 12
																											Let Ti1530.4724
																												Li 2
																												Ans
																													IfLE m_shape.6109.9332 Ti1530.4724
																														Ans
																															Nop
																														Let Td1532.4730
																															Lfd m_ctbl.5895.9352 0
																															Let Td1534.4731
																																Lfd m_ctbl.5895.9352 4
																																Let Td1536.4732
																																	Lfd m_ctbl.5895.9352 8
																																	Let Td2000.5318.9250
																																		FMul Td1532.4730 Td1532.4730
																																		Let m_abc.6067.13233
																																			Lwz obj.4714 16
																																			Let Td2001.5319.9251
																																				Lfd m_abc.6067.13233 0
																																				Let Td2002.5314.9252
																																					FMul Td2000.5318.9250 Td2001.5319.9251
																																					Let Td2003.5316.9253
																																						FMul Td1534.4731 Td1534.4731
																																						Let m_abc.6055.13221
																																							Lwz obj.4714 16
																																							Let Td2004.5317.9254
																																								Lfd m_abc.6055.13221 4
																																								Let Td2005.5315.9255
																																									FMul Td2003.5316.9253 Td2004.5317.9254
																																									Let Td2006.5310.9256
																																										FAdd Td2002.5314.9252 Td2005.5315.9255
																																										Let Td2007.5312.9257
																																											FMul Td1536.4732 Td1536.4732
																																											Let m_abc.6043.13209
																																												Lwz obj.4714 16
																																												Let Td2008.5313.9258
																																													Lfd m_abc.6043.13209 8
																																													Let Td2009.5311.9259
																																														FMul Td2007.5312.9257 Td2008.5313.9258
																																														Let diag_part.5296.9260
																																															FAdd Td2006.5310.9256 Td2009.5311.9259
																																															Let m_isrot.6078.13197
																																																Lwz obj.4714 12
																																																Let Ti2011.5298.9262
																																																	Li 0
																																																	Let cc0.4725
																																																		IfEq m_isrot.6078.13197 Ti2011.5298.9262
																																																			Ans
																																																				FMr diag_part.5296.9260
																																																			Let Td2012.5308.9263
																																																				FMul Td1534.4731 Td1536.4732
																																																				Let m_rot123.5929.13191
																																																					Lwz obj.4714 36
																																																					Let Td2013.5309.9264
																																																						Lfd m_rot123.5929.13191 0
																																																						Let Td2014.5307.9265
																																																							FMul Td2012.5308.9263 Td2013.5309.9264
																																																							Let Td2015.5303.9266
																																																								FAdd diag_part.5296.9260 Td2014.5307.9265
																																																								Let Td2016.5305.9267
																																																									FMul Td1536.4732 Td1532.4730
																																																									Let m_rot123.5917.13179
																																																										Lwz obj.4714 36
																																																										Let Td2017.5306.9268
																																																											Lfd m_rot123.5917.13179 4
																																																											Let Td2018.5304.9269
																																																												FMul Td2016.5305.9267 Td2017.5306.9268
																																																												Let Td2019.5299.9270
																																																													FAdd Td2015.5303.9266 Td2018.5304.9269
																																																													Let Td2020.5301.9271
																																																														FMul Td1532.4730 Td1534.4731
																																																														Let m_rot123.5905.13167
																																																															Lwz obj.4714 36
																																																															Let Td2021.5302.9272
																																																																Lfd m_rot123.5905.13167 8
																																																																Let Td2022.5300.9273
																																																																	FMul Td2020.5301.9271 Td2021.5302.9272
																																																																	Ans
																																																																		FAdd Td2019.5299.9270 Td2022.5300.9273
																																																		Let Ti1538.4728
																																																			Li 3
																																																			Let Td1540.4727
																																																				IfEq m_shape.6109.9332 Ti1538.4728
																																																					Let Td.e.10682
																																																						FLi 1.000000
																																																						Ans
																																																							FSub cc0.4725 Td.e.10682
																																																					Ans
																																																						FMr cc0.4725
																																																				Ans
																																																					Stfd Td1540.4727 m_ctbl.5895.9352 12
																										Let Ti1542.4721
																											Sub index.2909 1
																											Ans
																												CallDir setup_startp_constants.2907 d:p.2908 Ti1542.4721 f:
				Ans
					Nop
is_rect_outside.2912 (args) : m.2913 (fargs) : p0.2914 p1.2915 p2.2916 
	Let Td2634.6379.9238
		FLi 0.000000
		Let Td1483.4704
			IfFLE Td2634.6379.9238 p0.2914
				Ans
					FMr p0.2914
				Ans
					FNeg p0.2914
			Let m_abc.6067.9230
				Lwz m.2913 16
				Let Td1484.4705
					Lfd m_abc.6067.9230 0
					Let z.6378.9225
						FSub Td1483.4704 Td1484.4705
						Let Td2637.6382.13157
							FLi 0.000000
							Let Tb1485.4696
								IfFLE Td2637.6382.13157 z.6378.9225
									Ans
										Li 0
									Ans
										Li 1
								Let Ti1486.4697
									Li 0
									Let Ti1493.4692
										IfEq Tb1485.4696 Ti1486.4697
											Ans
												Li 0
											Let Td2634.6379.9224
												FLi 0.000000
												Let Td1487.4702
													IfFLE Td2634.6379.9224 p1.2915
														Ans
															FMr p1.2915
														Ans
															FNeg p1.2915
													Let m_abc.6055.9216
														Lwz m.2913 16
														Let Td1488.4703
															Lfd m_abc.6055.9216 4
															Let z.6378.9211
																FSub Td1487.4702 Td1488.4703
																Let Td2637.6382.13156
																	FLi 0.000000
																	Let Tb1489.4698
																		IfFLE Td2637.6382.13156 z.6378.9211
																			Ans
																				Li 0
																			Ans
																				Li 1
																		Let Ti1490.4699
																			Li 0
																			Ans
																				IfEq Tb1489.4698 Ti1490.4699
																					Ans
																						Li 0
																					Let Td2634.6379.9210
																						FLi 0.000000
																						Let Td1491.4700
																							IfFLE Td2634.6379.9210 p2.2916
																								Ans
																									FMr p2.2916
																								Ans
																									FNeg p2.2916
																							Let m_abc.6043.9202
																								Lwz m.2913 16
																								Let Td1492.4701
																									Lfd m_abc.6043.9202 8
																									Let z.6378.9197
																										FSub Td1491.4700 Td1492.4701
																										Let Td2637.6382.13155
																											FLi 0.000000
																											Ans
																												IfFLE Td2637.6382.13155 z.6378.9197
																													Ans
																														Li 0
																													Ans
																														Li 1
										Let Ti1494.4693
											Li 0
											Ans
												IfEq Ti1493.4692 Ti1494.4693
													Let m_invert.6092.9192
														Lwz m.2913 24
														Let Ti1496.4695
															Li 0
															Ans
																IfEq m_invert.6092.9192 Ti1496.4695
																	Ans
																		Li 1
																	Ans
																		Li 0
													Let m_invert.6092.9181
														Lwz m.2913 24
														Ans
															Mr m_invert.6092.9181
is_second_outside.2922 (args) : m.2923 (fargs) : p0.2924 p1.2925 p2.2926 
	Let Td2000.5318.9116
		FMul p0.2924 p0.2924
		Let m_abc.6067.13147
			Lwz m.2923 16
			Let Td2001.5319.9117
				Lfd m_abc.6067.13147 0
				Let Td2002.5314.9118
					FMul Td2000.5318.9116 Td2001.5319.9117
					Let Td2003.5316.9119
						FMul p1.2925 p1.2925
						Let m_abc.6055.13135
							Lwz m.2923 16
							Let Td2004.5317.9120
								Lfd m_abc.6055.13135 4
								Let Td2005.5315.9121
									FMul Td2003.5316.9119 Td2004.5317.9120
									Let Td2006.5310.9122
										FAdd Td2002.5314.9118 Td2005.5315.9121
										Let Td2007.5312.9123
											FMul p2.2926 p2.2926
											Let m_abc.6043.13123
												Lwz m.2923 16
												Let Td2008.5313.9124
													Lfd m_abc.6043.13123 8
													Let Td2009.5311.9125
														FMul Td2007.5312.9123 Td2008.5313.9124
														Let diag_part.5296.9126
															FAdd Td2006.5310.9122 Td2009.5311.9125
															Let m_isrot.6078.13111
																Lwz m.2923 12
																Let Ti2011.5298.9128
																	Li 0
																	Let w.4677
																		IfEq m_isrot.6078.13111 Ti2011.5298.9128
																			Ans
																				FMr diag_part.5296.9126
																			Let Td2012.5308.9129
																				FMul p1.2925 p2.2926
																				Let m_rot123.5929.13105
																					Lwz m.2923 36
																					Let Td2013.5309.9130
																						Lfd m_rot123.5929.13105 0
																						Let Td2014.5307.9131
																							FMul Td2012.5308.9129 Td2013.5309.9130
																							Let Td2015.5303.9132
																								FAdd diag_part.5296.9126 Td2014.5307.9131
																								Let Td2016.5305.9133
																									FMul p2.2926 p0.2924
																									Let m_rot123.5917.13093
																										Lwz m.2923 36
																										Let Td2017.5306.9134
																											Lfd m_rot123.5917.13093 4
																											Let Td2018.5304.9135
																												FMul Td2016.5305.9133 Td2017.5306.9134
																												Let Td2019.5299.9136
																													FAdd Td2015.5303.9132 Td2018.5304.9135
																													Let Td2020.5301.9137
																														FMul p0.2924 p1.2925
																														Let m_rot123.5905.13081
																															Lwz m.2923 36
																															Let Td2021.5302.9138
																																Lfd m_rot123.5905.13081 8
																																Let Td2022.5300.9139
																																	FMul Td2020.5301.9137 Td2021.5302.9138
																																	Ans
																																		FAdd Td2019.5299.9136 Td2022.5300.9139
																		Let m_shape.6109.9106
																			Lwz m.2923 4
																			Let Ti1472.4684
																				Li 3
																				Let w2.4678
																					IfEq m_shape.6109.9106 Ti1472.4684
																						Let Td.e.10680
																							FLi 1.000000
																							Ans
																								FSub w.4677 Td.e.10680
																						Ans
																							FMr w.4677
																					Let m_invert.6092.9100
																						Lwz m.2923 24
																						Let Td2637.6382.9093
																							FLi 0.000000
																							Let Tb1475.4682
																								IfFLE Td2637.6382.9093 w2.4678
																									Ans
																										Li 0
																									Ans
																										Li 1
																								Let Ti2630.6374.9091
																									Li 0
																									Let Tb1476.4679
																										IfEq m_invert.6092.9100 Ti2630.6374.9091
																											Ans
																												Mr Tb1475.4682
																											Let Ti2631.6375.9092
																												Li 0
																												Ans
																													IfEq Tb1475.4682 Ti2631.6375.9092
																														Ans
																															Li 1
																														Ans
																															Li 0
																										Let Ti1477.4680
																											Li 0
																											Ans
																												IfEq Tb1476.4679 Ti1477.4680
																													Ans
																														Li 1
																													Ans
																														Li 0
is_outside.2927 (args) : m.2928 (fargs) : q0.2929 q1.2930 q2.2931 
	Let m_xyz.6021.9084
		Lwz m.2928 20
		Let Td1466.4676
			Lfd m_xyz.6021.9084 0
			Let p0.4668
				FSub q0.2929 Td1466.4676
				Let m_xyz.6009.9072
					Lwz m.2928 20
					Let Td1467.4675
						Lfd m_xyz.6009.9072 4
						Let p1.4669
							FSub q1.2930 Td1467.4675
							Let m_xyz.5997.9060
								Lwz m.2928 20
								Let Td1468.4674
									Lfd m_xyz.5997.9060 8
									Let p2.4670
										FSub q2.2931 Td1468.4674
										Let m_shape.6109.9045
											Lwz m.2928 4
											Let Ti1469.4672
												Li 1
												Ans
													IfEq m_shape.6109.9045 Ti1469.4672
														Let Td2634.6379.13071
															FLi 0.000000
															Let Td1483.4704.9030
																IfFLE Td2634.6379.13071 p0.4668
																	Ans
																		FMr p0.4668
																	Ans
																		FNeg p0.4668
																Let m_abc.6067.13063
																	Lwz m.2928 16
																	Let Td1484.4705.9031
																		Lfd m_abc.6067.13063 0
																		Let z.6378.13057
																			FSub Td1483.4704.9030 Td1484.4705.9031
																			Let Td2637.6382.10492.13058
																				FLi 0.000000
																				Let Tb1485.4696.9032
																					IfFLE Td2637.6382.10492.13058 z.6378.13057
																						Ans
																							Li 0
																						Ans
																							Li 1
																					Let Ti1486.4697.9033
																						Li 0
																						Let Ti1493.4692.9034
																							IfEq Tb1485.4696.9032 Ti1486.4697.9033
																								Ans
																									Li 0
																								Let Td2634.6379.13056
																									FLi 0.000000
																									Let Td1487.4702.9038
																										IfFLE Td2634.6379.13056 p1.4669
																											Ans
																												FMr p1.4669
																											Ans
																												FNeg p1.4669
																										Let m_abc.6055.13048
																											Lwz m.2928 16
																											Let Td1488.4703.9039
																												Lfd m_abc.6055.13048 4
																												Let z.6378.13042
																													FSub Td1487.4702.9038 Td1488.4703.9039
																													Let Td2637.6382.10492.13043
																														FLi 0.000000
																														Let Tb1489.4698.9040
																															IfFLE Td2637.6382.10492.13043 z.6378.13042
																																Ans
																																	Li 0
																																Ans
																																	Li 1
																															Let Ti1490.4699.9041
																																Li 0
																																Ans
																																	IfEq Tb1489.4698.9040 Ti1490.4699.9041
																																		Ans
																																			Li 0
																																		Let Td2634.6379.13041
																																			FLi 0.000000
																																			Let Td1491.4700.9042
																																				IfFLE Td2634.6379.13041 p2.4670
																																					Ans
																																						FMr p2.4670
																																					Ans
																																						FNeg p2.4670
																																				Let m_abc.6043.13033
																																					Lwz m.2928 16
																																					Let Td1492.4701.9043
																																						Lfd m_abc.6043.13033 8
																																						Let z.6378.13027
																																							FSub Td1491.4700.9042 Td1492.4701.9043
																																							Let Td2637.6382.10492.13028
																																								FLi 0.000000
																																								Ans
																																									IfFLE Td2637.6382.10492.13028 z.6378.13027
																																										Ans
																																											Li 0
																																										Ans
																																											Li 1
																							Let Ti1494.4693.9035
																								Li 0
																								Ans
																									IfEq Ti1493.4692.9034 Ti1494.4693.9035
																										Let m_invert.6092.13022
																											Lwz m.2928 24
																											Let Ti1496.4695.9037
																												Li 0
																												Ans
																													IfEq m_invert.6092.13022 Ti1496.4695.9037
																														Ans
																															Li 1
																														Ans
																															Li 0
																										Let m_invert.6092.13011
																											Lwz m.2928 24
																											Ans
																												Mr m_invert.6092.13011
														Let Ti1470.4673
															Li 2
															Ans
																IfEq m_shape.6109.9045 Ti1470.4673
																	Let m_abc.6032.12998
																		Lwz m.2928 16
																		Let Td2507.6244.12985
																			Lfd m_abc.6032.12998 0
																			Let Td2508.6240.12986
																				FMul Td2507.6244.12985 p0.4668
																				Let Td2510.6242.12988
																					Lfd m_abc.6032.12998 4
																					Let Td2511.6241.12989
																						FMul Td2510.6242.12988 p1.4669
																						Let Td2512.6236.12990
																							FAdd Td2508.6240.12986 Td2511.6241.12989
																							Let Td2514.6238.12992
																								Lfd m_abc.6032.12998 8
																								Let Td2515.6237.12993
																									FMul Td2514.6238.12992 p2.4670
																									Let w.4686.9025
																										FAdd Td2512.6236.12990 Td2515.6237.12993
																										Let m_invert.6092.12979
																											Lwz m.2928 24
																											Let Td2637.6382.12972
																												FLi 0.000000
																												Let Tb1480.4690.9027
																													IfFLE Td2637.6382.12972 w.4686.9025
																														Ans
																															Li 0
																														Ans
																															Li 1
																													Let Ti2630.6374.12970
																														Li 0
																														Let Tb1481.4687.9028
																															IfEq m_invert.6092.12979 Ti2630.6374.12970
																																Ans
																																	Mr Tb1480.4690.9027
																																Let Ti2631.6375.12971
																																	Li 0
																																	Ans
																																		IfEq Tb1480.4690.9027 Ti2631.6375.12971
																																			Ans
																																				Li 1
																																			Ans
																																				Li 0
																															Let Ti1482.4688.9029
																																Li 0
																																Ans
																																	IfEq Tb1481.4687.9028 Ti1482.4688.9029
																																		Ans
																																			Li 1
																																		Ans
																																			Li 0
																	Let w.4677.9015
																		CallDir quadratic.2830 d:m.2928 f:p0.4668 p1.4669 p2.4670 
																		Let m_shape.6109.12960
																			Lwz m.2928 4
																			Let Ti1472.4684.9017
																				Li 3
																				Let w2.4678.9018
																					IfEq m_shape.6109.12960 Ti1472.4684.9017
																						Let Td.e.10679
																							FLi 1.000000
																							Ans
																								FSub w.4677.9015 Td.e.10679
																						Ans
																							FMr w.4677.9015
																					Let m_invert.6092.12954
																						Lwz m.2928 24
																						Let Td2637.6382.12947
																							FLi 0.000000
																							Let Tb1475.4682.9020
																								IfFLE Td2637.6382.12947 w2.4678.9018
																									Ans
																										Li 0
																									Ans
																										Li 1
																								Let Ti2630.6374.12945
																									Li 0
																									Let Tb1476.4679.9021
																										IfEq m_invert.6092.12954 Ti2630.6374.12945
																											Ans
																												Mr Tb1475.4682.9020
																											Let Ti2631.6375.12946
																												Li 0
																												Ans
																													IfEq Tb1475.4682.9020 Ti2631.6375.12946
																														Ans
																															Li 1
																														Ans
																															Li 0
																										Let Ti1477.4680.9022
																											Li 0
																											Ans
																												IfEq Tb1476.4679.9021 Ti1477.4680.9022
																													Ans
																														Li 1
																													Ans
																														Li 0
check_all_inside.2932 (args) : ofs.2933 iand.2934 (fargs) : q0.2935 q1.2936 q2.2937 
	Let o.14765
		Slw ofs.2933 2
		Let head.4659
			Lwz iand.2934 o.14765
			Let Ti1459.4660
				Li -1
				Ans
					IfEq head.4659 Ti1459.4660
						Ans
							Li 1
						Let Ta1460.4666
							SetExt 48
							Let o.14766
								Slw head.4659 2
								Let Tt1461.4665
									Lwz Ta1460.4666 o.14766
									Let m_xyz.6021.12938
										Lwz Tt1461.4665 20
										Let Td1466.4676.9006
											Lfd m_xyz.6021.12938 0
											Let p0.4668.9007
												FSub q0.2935 Td1466.4676.9006
												Let m_xyz.6009.12926
													Lwz Tt1461.4665 20
													Let Td1467.4675.9008
														Lfd m_xyz.6009.12926 4
														Let p1.4669.9009
															FSub q1.2936 Td1467.4675.9008
															Let m_xyz.5997.12914
																Lwz Tt1461.4665 20
																Let Td1468.4674.9010
																	Lfd m_xyz.5997.12914 8
																	Let p2.4670.9011
																		FSub q2.2937 Td1468.4674.9010
																		Let m_shape.6109.12899
																			Lwz Tt1461.4665 4
																			Let Ti1469.4672.9013
																				Li 1
																				Let Tb1462.4661
																					IfEq m_shape.6109.12899 Ti1469.4672.9013
																						Ans
																							CallDir is_rect_outside.2912 d:Tt1461.4665 f:p0.4668.9007 p1.4669.9009 p2.4670.9011 
																						Let Ti1470.4673.9014
																							Li 2
																							Ans
																								IfEq m_shape.6109.12899 Ti1470.4673.9014
																									Let m_abc.6032.9168.12861
																										Lwz Tt1461.4665 16
																										Let Td2507.6244.9155.12870
																											Lfd m_abc.6032.9168.12861 0
																											Let Td2508.6240.9156.12871
																												FMul Td2507.6244.9155.12870 p0.4668.9007
																												Let Td2510.6242.9158.12873
																													Lfd m_abc.6032.9168.12861 4
																													Let Td2511.6241.9159.12874
																														FMul Td2510.6242.9158.12873 p1.4669.9009
																														Let Td2512.6236.9160.12875
																															FAdd Td2508.6240.9156.12871 Td2511.6241.9159.12874
																															Let Td2514.6238.9162.12877
																																Lfd m_abc.6032.9168.12861 8
																																Let Td2515.6237.9163.12878
																																	FMul Td2514.6238.9162.12877 p2.4670.9011
																																	Let w.4686.12879
																																		FAdd Td2512.6236.9160.12875 Td2515.6237.9163.12878
																																		Let m_invert.6092.9149.12886
																																			Lwz Tt1461.4665 24
																																			Let Td2637.6382.9142.12892
																																				FLi 0.000000
																																				Let Tb1480.4690.12893
																																					IfFLE Td2637.6382.9142.12892 w.4686.12879
																																						Ans
																																							Li 0
																																						Ans
																																							Li 1
																																					Let Ti2630.6374.9140.12894
																																						Li 0
																																						Let Tb1481.4687.12895
																																							IfEq m_invert.6092.9149.12886 Ti2630.6374.9140.12894
																																								Ans
																																									Mr Tb1480.4690.12893
																																								Let Ti2631.6375.9141.12897
																																									Li 0
																																									Ans
																																										IfEq Tb1480.4690.12893 Ti2631.6375.9141.12897
																																											Ans
																																												Li 1
																																											Ans
																																												Li 0
																																							Let Ti1482.4688.12896
																																								Li 0
																																								Ans
																																									IfEq Tb1481.4687.12895 Ti1482.4688.12896
																																										Ans
																																											Li 1
																																										Ans
																																											Li 0
																									Ans
																										CallDir is_second_outside.2922 d:Tt1461.4665 f:p0.4668.9007 p1.4669.9009 p2.4670.9011 
																					Let Ti1463.4662
																						Li 0
																						Ans
																							IfEq Tb1462.4661 Ti1463.4662
																								Let Ti1465.4663
																									Add ofs.2933 1
																									Let o.14773
																										Slw Ti1465.4663 2
																										Let head.4659.8997
																											Lwz iand.2934 o.14773
																											Let Ti1459.4660.8999
																												Li -1
																												Ans
																													IfEq head.4659.8997 Ti1459.4660.8999
																														Ans
																															Li 1
																														Let Ta1460.4666.9000
																															SetExt 48
																															Let o.14774
																																Slw head.4659.8997 2
																																Let Tt1461.4665.9001
																																	Lwz Ta1460.4666.9000 o.14774
																																	Let Tb1462.4661.9002
																																		CallDir is_outside.2927 d:Tt1461.4665.9001 f:q0.2935 q1.2936 q2.2937 
																																		Let Ti1463.4662.9003
																																			Li 0
																																			Ans
																																				IfEq Tb1462.4661.9002 Ti1463.4662.9003
																																					Let Ti1465.4663.9005
																																						Add Ti1465.4663 1
																																						Ans
																																							CallDir check_all_inside.2932 d:Ti1465.4663.9005 iand.2934 f:q0.2935 q1.2936 q2.2937 
																																					Ans
																																						Li 0
																								Ans
																									Li 0
shadow_check_and_group.2938 (args) : iand_ofs.2939 and_group.2940 (fargs) : 
	Let o.14775
		Slw iand_ofs.2939 2
		Let Ti1414.4608
			Lwz and_group.2940 o.14775
			Let Ti1416.4609
				Li -1
				Ans
					IfEq Ti1414.4608 Ti1416.4609
						Ans
							Li 0
						Let o.14776
							Slw iand_ofs.2939 2
							Let obj.4610
								Lwz and_group.2940 o.14776
								Let Tt1417.4656
									SetExt 988
									Let Ta1418.4657
										SetExt 552
										Let Ta1777.5058.8977
											SetExt 48
											Let o.14777
												Slw obj.4610 2
												Let m.5039.8978
													Lwz Ta1777.5058.8977 o.14777
													Let Td1779.5055.8980
														Lfd Ta1418.4657 0
														Let m_xyz.6021.12850
															Lwz m.5039.8978 20
															Let Td1780.5056.8981
																Lfd m_xyz.6021.12850 0
																Let b0.5040.8982
																	FSub Td1779.5055.8980 Td1780.5056.8981
																	Let Td1782.5052.8984
																		Lfd Ta1418.4657 4
																		Let m_xyz.6009.12838
																			Lwz m.5039.8978 20
																			Let Td1783.5053.8985
																				Lfd m_xyz.6009.12838 4
																				Let b1.5041.8986
																					FSub Td1782.5052.8984 Td1783.5053.8985
																					Let Td1785.5049.8988
																						Lfd Ta1418.4657 8
																						Let m_xyz.5997.12826
																							Lwz m.5039.8978 20
																							Let Td1786.5050.8989
																								Lfd m_xyz.5997.12826 8
																								Let b2.5042.8990
																									FSub Td1785.5049.8988 Td1786.5050.8989
																									Let m_const.5808.12820
																										Lwz Tt1417.4656 4
																										Let o.14784
																											Slw obj.4610 2
																											Let dconst.5044.8992
																												Lwz m_const.5808.12820 o.14784
																												Let m_shape.6109.12809
																													Lwz m.5039.8978 4
																													Let Ti1787.5046.8994
																														Li 1
																														Let t0.4611
																															IfEq m_shape.6109.12809 Ti1787.5046.8994
																																Let m_vec.5809.12806
																																	Lwz Tt1417.4656 0
																																	Ans
																																		CallDir solver_rect_fast.2853 d:m.5039.8978 m_vec.5809.12806 dconst.5044.8992 f:b0.5040.8982 b1.5041.8986 b2.5042.8990 
																																Let Ti1789.5047.8995
																																	Li 2
																																	Ans
																																		IfEq m_shape.6109.12809 Ti1789.5047.8995
																																			Let Td1827.5117.12788
																																				Lfd dconst.5044.8992 0
																																				Let Td2637.6382.9869.12789
																																					FLi 0.000000
																																					Let Tb1828.5101.12790
																																						IfFLE Td2637.6382.9869.12789 Td1827.5117.12788
																																							Ans
																																								Li 0
																																							Ans
																																								Li 1
																																						Let Ti1829.5102.12791
																																							Li 0
																																							Ans
																																								IfEq Tb1828.5101.12790 Ti1829.5102.12791
																																									Ans
																																										Li 0
																																									Let Ta1830.5104.12792
																																										SetExt 540
																																										Let Td1833.5115.12795
																																											Lfd dconst.5044.8992 4
																																											Let Td1834.5111.12796
																																												FMul Td1833.5115.12795 b0.5040.8982
																																												Let Td1836.5113.12798
																																													Lfd dconst.5044.8992 8
																																													Let Td1837.5112.12799
																																														FMul Td1836.5113.12798 b1.5041.8986
																																														Let Td1838.5107.12800
																																															FAdd Td1834.5111.12796 Td1837.5112.12799
																																															Let Td1840.5109.12802
																																																Lfd dconst.5044.8992 12
																																																Let Td1841.5108.12803
																																																	FMul Td1840.5109.12802 b2.5042.8990
																																																	Let Td1842.5106.12804
																																																		FAdd Td1838.5107.12800 Td1841.5108.12803
																																																		Let Tu79.5103.12805
																																																			Stfd Td1842.5106.12804 Ta1830.5104.12792 0
																																																			Ans
																																																				Li 1
																																			Ans
																																				CallDir solver_second_fast.2866 d:m.5039.8978 dconst.5044.8992 f:b0.5040.8982 b1.5041.8986 b2.5042.8990 
																															Let Ta1419.4654
																																SetExt 540
																																Let t0p.4612
																																	Lfd Ta1419.4654 0
																																	Let Ti1421.4652
																																		Li 0
																																		Let Ti1423.4613
																																			IfEq t0.4611 Ti1421.4652
																																				Ans
																																					Li 0
																																				Let Td.e.10673
																																					FLi -0.200000
																																					Let z.6378.8976
																																						FSub t0p.4612 Td.e.10673
																																						Let Td2637.6382.12786
																																							FLi 0.000000
																																							Ans
																																								IfFLE Td2637.6382.12786 z.6378.8976
																																									Ans
																																										Li 0
																																									Ans
																																										Li 1
																																			Let Ti1424.4614
																																				Li 0
																																				Ans
																																					IfEq Ti1423.4613 Ti1424.4614
																																						Let Ta1425.4651
																																							SetExt 48
																																							Let o.14799
																																								Slw obj.4610 2
																																								Let Tt1426.4650
																																									Lwz Ta1425.4651 o.14799
																																									Let m_invert.6092.8971
																																										Lwz Tt1426.4650 24
																																										Let Ti1428.4647
																																											Li 0
																																											Ans
																																												IfEq m_invert.6092.8971 Ti1428.4647
																																													Ans
																																														Li 0
																																													Let Ti1430.4648
																																														Add iand_ofs.2939 1
																																														Ans
																																															CallDir shadow_check_and_group.2938 d:Ti1430.4648 and_group.2940 f:
																																						Let Td.e.10674
																																							FLi 0.010000
																																							Let t.4615
																																								FAdd t0p.4612 Td.e.10674
																																								Let Ta1432.4643
																																									SetExt 312
																																									Let Td1434.4642
																																										Lfd Ta1432.4643 0
																																										Let Td1435.4638
																																											FMul Td1434.4642 t.4615
																																											Let Ta1436.4640
																																												SetExt 552
																																												Let Td1438.4639
																																													Lfd Ta1436.4640 0
																																													Let q0.4616
																																														FAdd Td1435.4638 Td1438.4639
																																														Let Ta1439.4636
																																															SetExt 312
																																															Let Td1441.4635
																																																Lfd Ta1439.4636 4
																																																Let Td1442.4631
																																																	FMul Td1441.4635 t.4615
																																																	Let Ta1443.4633
																																																		SetExt 552
																																																		Let Td1445.4632
																																																			Lfd Ta1443.4633 4
																																																			Let q1.4617
																																																				FAdd Td1442.4631 Td1445.4632
																																																				Let Ta1446.4629
																																																					SetExt 312
																																																					Let Td1448.4628
																																																						Lfd Ta1446.4629 8
																																																						Let Td1449.4624
																																																							FMul Td1448.4628 t.4615
																																																							Let Ta1450.4626
																																																								SetExt 552
																																																								Let Td1452.4625
																																																									Lfd Ta1450.4626 8
																																																									Let q2.4618
																																																										FAdd Td1449.4624 Td1452.4625
																																																										Let head.4659.8956
																																																											Lwz and_group.2940 0
																																																											Let Ti1459.4660.8958
																																																												Li -1
																																																												Let Tb1454.4619
																																																													IfEq head.4659.8956 Ti1459.4660.8958
																																																														Ans
																																																															Li 1
																																																														Let Ta1460.4666.8959
																																																															SetExt 48
																																																															Let o.14798
																																																																Slw head.4659.8956 2
																																																																Let Tt1461.4665.8960
																																																																	Lwz Ta1460.4666.8959 o.14798
																																																																	Let Tb1462.4661.8961
																																																																		CallDir is_outside.2927 d:Tt1461.4665.8960 f:q0.4616 q1.4617 q2.4618 
																																																																		Let Ti1463.4662.8962
																																																																			Li 0
																																																																			Ans
																																																																				IfEq Tb1462.4661.8961 Ti1463.4662.8962
																																																																					Let Ti1465.4663.8964
																																																																						Li 1
																																																																						Ans
																																																																							CallDir check_all_inside.2932 d:Ti1465.4663.8964 and_group.2940 f:q0.4616 q1.4617 q2.4618 
																																																																					Ans
																																																																						Li 0
																																																													Let Ti1455.4620
																																																														Li 0
																																																														Ans
																																																															IfEq Tb1454.4619 Ti1455.4620
																																																																Let Ti1457.4621
																																																																	Add iand_ofs.2939 1
																																																																	Ans
																																																																		CallDir shadow_check_and_group.2938 d:Ti1457.4621 and_group.2940 f:
																																																																Ans
																																																																	Li 1
shadow_check_one_or_group.2941 (args) : ofs.2942 or_group.2943 (fargs) : 
	Let o.14800
		Slw ofs.2942 2
		Let head.4598
			Lwz or_group.2943 o.14800
			Let Ti1408.4599
				Li -1
				Ans
					IfEq head.4598 Ti1408.4599
						Ans
							Li 0
						Let Ta1409.4606
							SetExt 332
							Let o.14801
								Slw head.4598 2
								Let and_group.4600
									Lwz Ta1409.4606 o.14801
									Let Ti1410.4605
										Li 0
										Let shadow_p.4601
											CallDir shadow_check_and_group.2938 d:Ti1410.4605 and_group.4600 f:
											Let Ti1411.4602
												Li 0
												Ans
													IfEq shadow_p.4601 Ti1411.4602
														Let Ti1413.4603
															Add ofs.2942 1
															Let o.14802
																Slw Ti1413.4603 2
																Let head.4598.8946
																	Lwz or_group.2943 o.14802
																	Let Ti1408.4599.8948
																		Li -1
																		Ans
																			IfEq head.4598.8946 Ti1408.4599.8948
																				Ans
																					Li 0
																				Let Ta1409.4606.8949
																					SetExt 332
																					Let o.14803
																						Slw head.4598.8946 2
																						Let and_group.4600.8950
																							Lwz Ta1409.4606.8949 o.14803
																							Let Ti1410.4605.8951
																								Li 0
																								Let shadow_p.4601.8952
																									CallDir shadow_check_and_group.2938 d:Ti1410.4605.8951 and_group.4600.8950 f:
																									Let Ti1411.4602.8953
																										Li 0
																										Ans
																											IfEq shadow_p.4601.8952 Ti1411.4602.8953
																												Let Ti1413.4603.8955
																													Add Ti1413.4603 1
																													Let o.14804
																														Slw Ti1413.4603.8955 2
																														Let head.4598.12768
																															Lwz or_group.2943 o.14804
																															Let Ti1408.4599.12769
																																Li -1
																																Ans
																																	IfEq head.4598.12768 Ti1408.4599.12769
																																		Ans
																																			Li 0
																																		Let Ta1409.4606.12770
																																			SetExt 332
																																			Let o.14805
																																				Slw head.4598.12768 2
																																				Let and_group.4600.12771
																																					Lwz Ta1409.4606.12770 o.14805
																																					Let Ti1410.4605.12772
																																						Li 0
																																						Let shadow_p.4601.12773
																																							CallDir shadow_check_and_group.2938 d:Ti1410.4605.12772 and_group.4600.12771 f:
																																							Let Ti1411.4602.12774
																																								Li 0
																																								Ans
																																									IfEq shadow_p.4601.12773 Ti1411.4602.12774
																																										Let Ti1413.4603.12776
																																											Add Ti1413.4603.8955 1
																																											Let o.14806
																																												Slw Ti1413.4603.12776 2
																																												Let head.4598.8946.12777
																																													Lwz or_group.2943 o.14806
																																													Let Ti1408.4599.8948.12778
																																														Li -1
																																														Ans
																																															IfEq head.4598.8946.12777 Ti1408.4599.8948.12778
																																																Ans
																																																	Li 0
																																																Let Ta1409.4606.8949.12779
																																																	SetExt 332
																																																	Let o.14807
																																																		Slw head.4598.8946.12777 2
																																																		Let and_group.4600.8950.12780
																																																			Lwz Ta1409.4606.8949.12779 o.14807
																																																			Let Ti1410.4605.8951.12781
																																																				Li 0
																																																				Let shadow_p.4601.8952.12782
																																																					CallDir shadow_check_and_group.2938 d:Ti1410.4605.8951.12781 and_group.4600.8950.12780 f:
																																																					Let Ti1411.4602.8953.12783
																																																						Li 0
																																																						Ans
																																																							IfEq shadow_p.4601.8952.12782 Ti1411.4602.8953.12783
																																																								Let Ti1413.4603.8955.12785
																																																									Add Ti1413.4603.12776 1
																																																									Ans
																																																										CallDir shadow_check_one_or_group.2941 d:Ti1413.4603.8955.12785 or_group.2943 f:
																																																								Ans
																																																									Li 1
																																										Ans
																																											Li 1
																												Ans
																													Li 1
														Ans
															Li 1
shadow_check_one_or_matrix.2944 (args) : ofs.2945 or_matrix.2946 (fargs) : 
	Let o.14808
		Slw ofs.2945 2
		Let head.4570
			Lwz or_matrix.2946 o.14808
			Let range_primitive.4571
				Lwz head.4570 0
				Let Ti1384.4572
					Li -1
					Ans
						IfEq range_primitive.4571 Ti1384.4572
							Ans
								Li 0
							Let Ti1385.4582
								Li 99
								Let Ti1398.4573
									IfEq range_primitive.4571 Ti1385.4582
										Ans
											Li 1
										Let Tt1386.4594
											SetExt 988
											Let Ta1387.4595
												SetExt 552
												Let Ta1777.5058.8926
													SetExt 48
													Let o.14810
														Slw range_primitive.4571 2
														Let m.5039.8927
															Lwz Ta1777.5058.8926 o.14810
															Let Td1779.5055.8929
																Lfd Ta1387.4595 0
																Let m_xyz.6021.12761
																	Lwz m.5039.8927 20
																	Let Td1780.5056.8930
																		Lfd m_xyz.6021.12761 0
																		Let b0.5040.8931
																			FSub Td1779.5055.8929 Td1780.5056.8930
																			Let Td1782.5052.8933
																				Lfd Ta1387.4595 4
																				Let m_xyz.6009.12749
																					Lwz m.5039.8927 20
																					Let Td1783.5053.8934
																						Lfd m_xyz.6009.12749 4
																						Let b1.5041.8935
																							FSub Td1782.5052.8933 Td1783.5053.8934
																							Let Td1785.5049.8937
																								Lfd Ta1387.4595 8
																								Let m_xyz.5997.12737
																									Lwz m.5039.8927 20
																									Let Td1786.5050.8938
																										Lfd m_xyz.5997.12737 8
																										Let b2.5042.8939
																											FSub Td1785.5049.8937 Td1786.5050.8938
																											Let m_const.5808.12731
																												Lwz Tt1386.4594 4
																												Let o.14817
																													Slw range_primitive.4571 2
																													Let dconst.5044.8941
																														Lwz m_const.5808.12731 o.14817
																														Let m_shape.6109.12720
																															Lwz m.5039.8927 4
																															Let Ti1787.5046.8943
																																Li 1
																																Let t.4583
																																	IfEq m_shape.6109.12720 Ti1787.5046.8943
																																		Let m_vec.5809.12717
																																			Lwz Tt1386.4594 0
																																			Ans
																																				CallDir solver_rect_fast.2853 d:m.5039.8927 m_vec.5809.12717 dconst.5044.8941 f:b0.5040.8931 b1.5041.8935 b2.5042.8939 
																																		Let Ti1789.5047.8944
																																			Li 2
																																			Ans
																																				IfEq m_shape.6109.12720 Ti1789.5047.8944
																																					Let Td1827.5117.12699
																																						Lfd dconst.5044.8941 0
																																						Let Td2637.6382.9869.12700
																																							FLi 0.000000
																																							Let Tb1828.5101.12701
																																								IfFLE Td2637.6382.9869.12700 Td1827.5117.12699
																																									Ans
																																										Li 0
																																									Ans
																																										Li 1
																																								Let Ti1829.5102.12702
																																									Li 0
																																									Ans
																																										IfEq Tb1828.5101.12701 Ti1829.5102.12702
																																											Ans
																																												Li 0
																																											Let Ta1830.5104.12703
																																												SetExt 540
																																												Let Td1833.5115.12706
																																													Lfd dconst.5044.8941 4
																																													Let Td1834.5111.12707
																																														FMul Td1833.5115.12706 b0.5040.8931
																																														Let Td1836.5113.12709
																																															Lfd dconst.5044.8941 8
																																															Let Td1837.5112.12710
																																																FMul Td1836.5113.12709 b1.5041.8935
																																																Let Td1838.5107.12711
																																																	FAdd Td1834.5111.12707 Td1837.5112.12710
																																																	Let Td1840.5109.12713
																																																		Lfd dconst.5044.8941 12
																																																		Let Td1841.5108.12714
																																																			FMul Td1840.5109.12713 b2.5042.8939
																																																			Let Td1842.5106.12715
																																																				FAdd Td1838.5107.12711 Td1841.5108.12714
																																																				Let Tu79.5103.12716
																																																					Stfd Td1842.5106.12715 Ta1830.5104.12703 0
																																																					Ans
																																																						Li 1
																																					Ans
																																						CallDir solver_second_fast.2866 d:m.5039.8927 dconst.5044.8941 f:b0.5040.8931 b1.5041.8935 b2.5042.8939 
																																	Let Ti1388.4584
																																		Li 0
																																		Ans
																																			IfEq t.4583 Ti1388.4584
																																				Ans
																																					Li 0
																																				Let Ta1389.4592
																																					SetExt 540
																																					Let Td1391.4590
																																						Lfd Ta1389.4592 0
																																						Let Td.e.10668
																																							FLi -0.100000
																																							Let z.6378.8925
																																								FSub Td1391.4590 Td.e.10668
																																								Let Td2637.6382.12697
																																									FLi 0.000000
																																									Let Tb1393.4585
																																										IfFLE Td2637.6382.12697 z.6378.8925
																																											Ans
																																												Li 0
																																											Ans
																																												Li 1
																																										Let Ti1394.4586
																																											Li 0
																																											Ans
																																												IfEq Tb1393.4585 Ti1394.4586
																																													Ans
																																														Li 0
																																													Let head.4598.8915
																																														Lwz head.4570 4
																																														Let Ti1408.4599.8917
																																															Li -1
																																															Let Tb1396.4587
																																																IfEq head.4598.8915 Ti1408.4599.8917
																																																	Ans
																																																		Li 0
																																																	Let Ta1409.4606.8918
																																																		SetExt 332
																																																		Let o.14825
																																																			Slw head.4598.8915 2
																																																			Let and_group.4600.8919
																																																				Lwz Ta1409.4606.8918 o.14825
																																																				Let Ti1410.4605.8920
																																																					Li 0
																																																					Let shadow_p.4601.8921
																																																						CallDir shadow_check_and_group.2938 d:Ti1410.4605.8920 and_group.4600.8919 f:
																																																						Let Ti1411.4602.8922
																																																							Li 0
																																																							Ans
																																																								IfEq shadow_p.4601.8921 Ti1411.4602.8922
																																																									Let head.4598.12679
																																																										Lwz head.4570 8
																																																										Let Ti1408.4599.12680
																																																											Li -1
																																																											Ans
																																																												IfEq head.4598.12679 Ti1408.4599.12680
																																																													Ans
																																																														Li 0
																																																													Let Ta1409.4606.12681
																																																														SetExt 332
																																																														Let o.14827
																																																															Slw head.4598.12679 2
																																																															Let and_group.4600.12682
																																																																Lwz Ta1409.4606.12681 o.14827
																																																																Let Ti1410.4605.12683
																																																																	Li 0
																																																																	Let shadow_p.4601.12684
																																																																		CallDir shadow_check_and_group.2938 d:Ti1410.4605.12683 and_group.4600.12682 f:
																																																																		Let Ti1411.4602.12685
																																																																			Li 0
																																																																			Ans
																																																																				IfEq shadow_p.4601.12684 Ti1411.4602.12685
																																																																					Let head.4598.8946.12688
																																																																						Lwz head.4570 12
																																																																						Let Ti1408.4599.8948.12689
																																																																							Li -1
																																																																							Ans
																																																																								IfEq head.4598.8946.12688 Ti1408.4599.8948.12689
																																																																									Ans
																																																																										Li 0
																																																																									Let Ta1409.4606.8949.12690
																																																																										SetExt 332
																																																																										Let o.14829
																																																																											Slw head.4598.8946.12688 2
																																																																											Let and_group.4600.8950.12691
																																																																												Lwz Ta1409.4606.8949.12690 o.14829
																																																																												Let Ti1410.4605.8951.12692
																																																																													Li 0
																																																																													Let shadow_p.4601.8952.12693
																																																																														CallDir shadow_check_and_group.2938 d:Ti1410.4605.8951.12692 and_group.4600.8950.12691 f:
																																																																														Let Ti1411.4602.8953.12694
																																																																															Li 0
																																																																															Ans
																																																																																IfEq shadow_p.4601.8952.12693 Ti1411.4602.8953.12694
																																																																																	Let Ti1413.4603.8955.12696
																																																																																		Li 4
																																																																																		Ans
																																																																																			CallDir shadow_check_one_or_group.2941 d:Ti1413.4603.8955.12696 head.4570 f:
																																																																																	Ans
																																																																																		Li 1
																																																																					Ans
																																																																						Li 1
																																																									Ans
																																																										Li 1
																																																Let Ti1397.4588
																																																	Li 0
																																																	Ans
																																																		IfEq Tb1396.4587 Ti1397.4588
																																																			Ans
																																																				Li 0
																																																			Ans
																																																				Li 1
									Let Ti1399.4574
										Li 0
										Ans
											IfEq Ti1398.4573 Ti1399.4574
												Let Ti1401.4580
													Add ofs.2945 1
													Ans
														CallDir shadow_check_one_or_matrix.2944 d:Ti1401.4580 or_matrix.2946 f:
												Let head.4598.8905
													Lwz head.4570 4
													Let Ti1408.4599.8907
														Li -1
														Let Tb1403.4575
															IfEq head.4598.8905 Ti1408.4599.8907
																Ans
																	Li 0
																Let Ta1409.4606.8908
																	SetExt 332
																	Let o.14831
																		Slw head.4598.8905 2
																		Let and_group.4600.8909
																			Lwz Ta1409.4606.8908 o.14831
																			Let Ti1410.4605.8910
																				Li 0
																				Let shadow_p.4601.8911
																					CallDir shadow_check_and_group.2938 d:Ti1410.4605.8910 and_group.4600.8909 f:
																					Let Ti1411.4602.8912
																						Li 0
																						Ans
																							IfEq shadow_p.4601.8911 Ti1411.4602.8912
																								Let head.4598.12661
																									Lwz head.4570 8
																									Let Ti1408.4599.12662
																										Li -1
																										Ans
																											IfEq head.4598.12661 Ti1408.4599.12662
																												Ans
																													Li 0
																												Let Ta1409.4606.12663
																													SetExt 332
																													Let o.14833
																														Slw head.4598.12661 2
																														Let and_group.4600.12664
																															Lwz Ta1409.4606.12663 o.14833
																															Let Ti1410.4605.12665
																																Li 0
																																Let shadow_p.4601.12666
																																	CallDir shadow_check_and_group.2938 d:Ti1410.4605.12665 and_group.4600.12664 f:
																																	Let Ti1411.4602.12667
																																		Li 0
																																		Ans
																																			IfEq shadow_p.4601.12666 Ti1411.4602.12667
																																				Let head.4598.8946.12670
																																					Lwz head.4570 12
																																					Let Ti1408.4599.8948.12671
																																						Li -1
																																						Ans
																																							IfEq head.4598.8946.12670 Ti1408.4599.8948.12671
																																								Ans
																																									Li 0
																																								Let Ta1409.4606.8949.12672
																																									SetExt 332
																																									Let o.14835
																																										Slw head.4598.8946.12670 2
																																										Let and_group.4600.8950.12673
																																											Lwz Ta1409.4606.8949.12672 o.14835
																																											Let Ti1410.4605.8951.12674
																																												Li 0
																																												Let shadow_p.4601.8952.12675
																																													CallDir shadow_check_and_group.2938 d:Ti1410.4605.8951.12674 and_group.4600.8950.12673 f:
																																													Let Ti1411.4602.8953.12676
																																														Li 0
																																														Ans
																																															IfEq shadow_p.4601.8952.12675 Ti1411.4602.8953.12676
																																																Let Ti1413.4603.8955.12678
																																																	Li 4
																																																	Ans
																																																		CallDir shadow_check_one_or_group.2941 d:Ti1413.4603.8955.12678 head.4570 f:
																																																Ans
																																																	Li 1
																																				Ans
																																					Li 1
																								Ans
																									Li 1
															Let Ti1404.4576
																Li 0
																Ans
																	IfEq Tb1403.4575 Ti1404.4576
																		Let Ti1406.4577
																			Add ofs.2945 1
																			Ans
																				CallDir shadow_check_one_or_matrix.2944 d:Ti1406.4577 or_matrix.2946 f:
																		Ans
																			Li 1
solve_each_element.2947 (args) : iand_ofs.2948 and_group.2949 dirvec.2950 (fargs) : 
	Let o.14836
		Slw iand_ofs.2948 2
		Let iobj.4508
			Lwz and_group.2949 o.14836
			Let Ti1332.4509
				Li -1
				Ans
					IfEq iobj.4508 Ti1332.4509
						Ans
							Nop
						Let Ta1333.4568
							SetExt 636
							Let Ta1930.5228.8888
								SetExt 48
								Let o.14837
									Slw iobj.4508 2
									Let m.5212.8889
										Lwz Ta1930.5228.8888 o.14837
										Let Td1932.5225.8891
											Lfd Ta1333.4568 0
											Let m_xyz.6021.12654
												Lwz m.5212.8889 20
												Let Td1933.5226.8892
													Lfd m_xyz.6021.12654 0
													Let b0.5213.8893
														FSub Td1932.5225.8891 Td1933.5226.8892
														Let Td1935.5222.8895
															Lfd Ta1333.4568 4
															Let m_xyz.6009.12642
																Lwz m.5212.8889 20
																Let Td1936.5223.8896
																	Lfd m_xyz.6009.12642 4
																	Let b1.5214.8897
																		FSub Td1935.5222.8895 Td1936.5223.8896
																		Let Td1938.5219.8899
																			Lfd Ta1333.4568 8
																			Let m_xyz.5997.12630
																				Lwz m.5212.8889 20
																				Let Td1939.5220.8900
																					Lfd m_xyz.5997.12630 8
																					Let b2.5215.8901
																						FSub Td1938.5219.8899 Td1939.5220.8900
																						Let m_shape.6109.12615
																							Lwz m.5212.8889 4
																							Let Ti1940.5217.8903
																								Li 1
																								Let t0.4510
																									IfEq m_shape.6109.12615 Ti1940.5217.8903
																										Let Ti2031.5343.12599
																											Li 0
																											Let Ti2032.5344.12600
																												Li 1
																												Let Ti2033.5345.12601
																													Li 2
																													Let Tb2034.5331.12602
																														CallDir solver_rect_surface.2809 d:m.5212.8889 dirvec.2950 Ti2031.5343.12599 Ti2032.5344.12600 Ti2033.5345.12601 f:b0.5213.8893 b1.5214.8897 b2.5215.8901 
																														Let Ti2035.5332.12603
																															Li 0
																															Ans
																																IfEq Tb2034.5331.12602 Ti2035.5332.12603
																																	Let Ti2036.5340.12604
																																		Li 1
																																		Let Ti2037.5341.12605
																																			Li 2
																																			Let Ti2038.5342.12606
																																				Li 0
																																				Let Tb2039.5333.12607
																																					CallDir solver_rect_surface.2809 d:m.5212.8889 dirvec.2950 Ti2036.5340.12604 Ti2037.5341.12605 Ti2038.5342.12606 f:b1.5214.8897 b2.5215.8901 b0.5213.8893 
																																					Let Ti2040.5334.12608
																																						Li 0
																																						Ans
																																							IfEq Tb2039.5333.12607 Ti2040.5334.12608
																																								Let Ti2041.5337.12609
																																									Li 2
																																									Let Ti2042.5338.12610
																																										Li 0
																																										Let Ti2043.5339.12611
																																											Li 1
																																											Let Tb2044.5335.12612
																																												CallDir solver_rect_surface.2809 d:m.5212.8889 dirvec.2950 Ti2041.5337.12609 Ti2042.5338.12610 Ti2043.5339.12611 f:b2.5215.8901 b0.5213.8893 b1.5214.8897 
																																												Let Ti2045.5336.12613
																																													Li 0
																																													Ans
																																														IfEq Tb2044.5335.12612 Ti2045.5336.12613
																																															Ans
																																																Li 0
																																															Ans
																																																Li 3
																																								Ans
																																									Li 2
																																	Ans
																																		Li 1
																										Let Ti1941.5218.8904
																											Li 2
																											Ans
																												IfEq m_shape.6109.12615 Ti1941.5218.8904
																													Ans
																														CallDir solver_surface.2824 d:m.5212.8889 dirvec.2950 f:b0.5213.8893 b1.5214.8897 b2.5215.8901 
																													Ans
																														CallDir solver_second.2843 d:m.5212.8889 dirvec.2950 f:b0.5213.8893 b1.5214.8897 b2.5215.8901 
																									Let Ti1334.4511
																										Li 0
																										Ans
																											IfEq t0.4510 Ti1334.4511
																												Let Ta1335.4567
																													SetExt 48
																													Let o.14860
																														Slw iobj.4508 2
																														Let Tt1336.4566
																															Lwz Ta1335.4567 o.14860
																															Let m_invert.6092.8883
																																Lwz Tt1336.4566 24
																																Let Ti1338.4563
																																	Li 0
																																	Ans
																																		IfEq m_invert.6092.8883 Ti1338.4563
																																			Ans
																																				Nop
																																			Let Ti1340.4564
																																				Add iand_ofs.2948 1
																																				Ans
																																					CallDir solve_each_element.2947 d:Ti1340.4564 and_group.2949 dirvec.2950 f:
																												Let Ta1341.4560
																													SetExt 540
																													Let t0p.4512
																														Lfd Ta1341.4560 0
																														Let Td.e.10664
																															FLi 0.000000
																															Let z.6378.8876
																																FSub Td.e.10664 t0p.4512
																																Let Td2637.6382.12598
																																	FLi 0.000000
																																	Let Tb1344.4516
																																		IfFLE Td2637.6382.12598 z.6378.8876
																																			Ans
																																				Li 0
																																			Ans
																																				Li 1
																																		Let Ti1345.4517
																																			Li 0
																																			Let Tu109.4513
																																				IfEq Tb1344.4516 Ti1345.4517
																																					Ans
																																						Nop
																																					Let Ta1346.4557
																																						SetExt 548
																																						Let Td1348.4556
																																							Lfd Ta1346.4557 0
																																							Let z.6378.8875
																																								FSub t0p.4512 Td1348.4556
																																								Let Td2637.6382.12597
																																									FLi 0.000000
																																									Let Tb1349.4518
																																										IfFLE Td2637.6382.12597 z.6378.8875
																																											Ans
																																												Li 0
																																											Ans
																																												Li 1
																																										Let Ti1350.4519
																																											Li 0
																																											Ans
																																												IfEq Tb1349.4518 Ti1350.4519
																																													Ans
																																														Nop
																																													Let Td.e.10665
																																														FLi 0.010000
																																														Let t.4520
																																															FAdd t0p.4512 Td.e.10665
																																															Let Td1353.4553
																																																Lfd dirvec.2950 0
																																																Let Td1354.4549
																																																	FMul Td1353.4553 t.4520
																																																	Let Ta1355.4551
																																																		SetExt 636
																																																		Let Td1357.4550
																																																			Lfd Ta1355.4551 0
																																																			Let q0.4521
																																																				FAdd Td1354.4549 Td1357.4550
																																																				Let Td1359.4547
																																																					Lfd dirvec.2950 4
																																																					Let Td1360.4543
																																																						FMul Td1359.4547 t.4520
																																																						Let Ta1361.4545
																																																							SetExt 636
																																																							Let Td1363.4544
																																																								Lfd Ta1361.4545 4
																																																								Let q1.4522
																																																									FAdd Td1360.4543 Td1363.4544
																																																									Let Td1365.4541
																																																										Lfd dirvec.2950 8
																																																										Let Td1366.4537
																																																											FMul Td1365.4541 t.4520
																																																											Let Ta1367.4539
																																																												SetExt 636
																																																												Let Td1369.4538
																																																													Lfd Ta1367.4539 8
																																																													Let q2.4523
																																																														FAdd Td1366.4537 Td1369.4538
																																																														Let head.4659.8866
																																																															Lwz and_group.2949 0
																																																															Let Ti1459.4660.8868
																																																																Li -1
																																																																Let Tb1371.4524
																																																																	IfEq head.4659.8866 Ti1459.4660.8868
																																																																		Ans
																																																																			Li 1
																																																																		Let Ta1460.4666.8869
																																																																			SetExt 48
																																																																			Let o.14853
																																																																				Slw head.4659.8866 2
																																																																				Let Tt1461.4665.8870
																																																																					Lwz Ta1460.4666.8869 o.14853
																																																																					Let Tb1462.4661.8871
																																																																						CallDir is_outside.2927 d:Tt1461.4665.8870 f:q0.4521 q1.4522 q2.4523 
																																																																						Let Ti1463.4662.8872
																																																																							Li 0
																																																																							Ans
																																																																								IfEq Tb1462.4661.8871 Ti1463.4662.8872
																																																																									Let Ti1465.4663.8874
																																																																										Li 1
																																																																										Ans
																																																																											CallDir check_all_inside.2932 d:Ti1465.4663.8874 and_group.2949 f:q0.4521 q1.4522 q2.4523 
																																																																									Ans
																																																																										Li 0
																																																																	Let Ti1372.4525
																																																																		Li 0
																																																																		Ans
																																																																			IfEq Tb1371.4524 Ti1372.4525
																																																																				Ans
																																																																					Nop
																																																																				Let Ta1373.4534
																																																																					SetExt 548
																																																																					Let Tu108.4526
																																																																						Stfd t.4520 Ta1373.4534 0
																																																																						Let Ta1375.4533
																																																																							SetExt 552
																																																																							Let Tu2.6361.8862
																																																																								Stfd q0.4521 Ta1375.4533 0
																																																																								Let Tu1.6362.8864
																																																																									Stfd q1.4522 Ta1375.4533 4
																																																																									Let Tu107.4527
																																																																										Stfd q2.4523 Ta1375.4533 8
																																																																										Let Ta1376.4531
																																																																											SetExt 564
																																																																											Let Tu106.4528
																																																																												Stw iobj.4508 Ta1376.4531 0
																																																																												Let Ta1378.4529
																																																																													SetExt 544
																																																																													Ans
																																																																														Stw t0.4510 Ta1378.4529 0
																																				Let Ti1381.4514
																																					Add iand_ofs.2948 1
																																					Ans
																																						CallDir solve_each_element.2947 d:Ti1381.4514 and_group.2949 dirvec.2950 f:
solve_one_or_network.2951 (args) : ofs.2952 or_group.2953 dirvec.2954 (fargs) : 
	Let o.14861
		Slw ofs.2952 2
		Let head.4499
			Lwz or_group.2953 o.14861
			Let Ti1326.4500
				Li -1
				Ans
					IfEq head.4499 Ti1326.4500
						Ans
							Nop
						Let Ta1327.4506
							SetExt 332
							Let o.14862
								Slw head.4499 2
								Let and_group.4501
									Lwz Ta1327.4506 o.14862
									Let Ti1328.4505
										Li 0
										Let Tu110.4502
											CallDir solve_each_element.2947 d:Ti1328.4505 and_group.4501 dirvec.2954 f:
											Let Ti1330.4503
												Add ofs.2952 1
												Let o.14863
													Slw Ti1330.4503 2
													Let head.4499.8852
														Lwz or_group.2953 o.14863
														Let Ti1326.4500.8854
															Li -1
															Ans
																IfEq head.4499.8852 Ti1326.4500.8854
																	Ans
																		Nop
																	Let Ta1327.4506.8855
																		SetExt 332
																		Let o.14864
																			Slw head.4499.8852 2
																			Let and_group.4501.8856
																				Lwz Ta1327.4506.8855 o.14864
																				Let Ti1328.4505.8857
																					Li 0
																					Let Tu110.4502.8858
																						CallDir solve_each_element.2947 d:Ti1328.4505.8857 and_group.4501.8856 dirvec.2954 f:
																						Let Ti1330.4503.8860
																							Add Ti1330.4503 1
																							Let o.14865
																								Slw Ti1330.4503.8860 2
																								Let head.4499.12581
																									Lwz or_group.2953 o.14865
																									Let Ti1326.4500.12582
																										Li -1
																										Ans
																											IfEq head.4499.12581 Ti1326.4500.12582
																												Ans
																													Nop
																												Let Ta1327.4506.12583
																													SetExt 332
																													Let o.14866
																														Slw head.4499.12581 2
																														Let and_group.4501.12584
																															Lwz Ta1327.4506.12583 o.14866
																															Let Ti1328.4505.12585
																																Li 0
																																Let Tu110.4502.12586
																																	CallDir solve_each_element.2947 d:Ti1328.4505.12585 and_group.4501.12584 dirvec.2954 f:
																																	Let Ti1330.4503.12588
																																		Add Ti1330.4503.8860 1
																																		Let o.14867
																																			Slw Ti1330.4503.12588 2
																																			Let head.4499.8852.12589
																																				Lwz or_group.2953 o.14867
																																				Let Ti1326.4500.8854.12590
																																					Li -1
																																					Ans
																																						IfEq head.4499.8852.12589 Ti1326.4500.8854.12590
																																							Ans
																																								Nop
																																							Let Ta1327.4506.8855.12591
																																								SetExt 332
																																								Let o.14868
																																									Slw head.4499.8852.12589 2
																																									Let and_group.4501.8856.12592
																																										Lwz Ta1327.4506.8855.12591 o.14868
																																										Let Ti1328.4505.8857.12593
																																											Li 0
																																											Let Tu110.4502.8858.12594
																																												CallDir solve_each_element.2947 d:Ti1328.4505.8857.12593 and_group.4501.8856.12592 dirvec.2954 f:
																																												Let Ti1330.4503.8860.12596
																																													Add Ti1330.4503.12588 1
																																													Ans
																																														CallDir solve_one_or_network.2951 d:Ti1330.4503.8860.12596 or_group.2953 dirvec.2954 f:
trace_or_matrix.2955 (args) : ofs.2956 or_network.2957 dirvec.2958 (fargs) : 
	Let o.14869
		Slw ofs.2956 2
		Let head.4477
			Lwz or_network.2957 o.14869
			Let range_primitive.4478
				Lwz head.4477 0
				Let Ti1310.4479
					Li -1
					Ans
						IfEq range_primitive.4478 Ti1310.4479
							Ans
								Nop
							Let Ti1311.4483
								Li 99
								Let Tu111.4480
									IfEq range_primitive.4478 Ti1311.4483
										Let head.4499.8843
											Lwz head.4477 4
											Let Ti1326.4500.8845
												Li -1
												Ans
													IfEq head.4499.8843 Ti1326.4500.8845
														Ans
															Nop
														Let Ta1327.4506.8846
															SetExt 332
															Let o.14887
																Slw head.4499.8843 2
																Let and_group.4501.8847
																	Lwz Ta1327.4506.8846 o.14887
																	Let Ti1328.4505.8848
																		Li 0
																		Let Tu110.4502.8849
																			CallDir solve_each_element.2947 d:Ti1328.4505.8848 and_group.4501.8847 dirvec.2958 f:
																			Let head.4499.12565
																				Lwz head.4477 8
																				Let Ti1326.4500.12566
																					Li -1
																					Ans
																						IfEq head.4499.12565 Ti1326.4500.12566
																							Ans
																								Nop
																							Let Ta1327.4506.12567
																								SetExt 332
																								Let o.14889
																									Slw head.4499.12565 2
																									Let and_group.4501.12568
																										Lwz Ta1327.4506.12567 o.14889
																										Let Ti1328.4505.12569
																											Li 0
																											Let Tu110.4502.12570
																												CallDir solve_each_element.2947 d:Ti1328.4505.12569 and_group.4501.12568 dirvec.2958 f:
																												Let head.4499.8852.12573
																													Lwz head.4477 12
																													Let Ti1326.4500.8854.12574
																														Li -1
																														Ans
																															IfEq head.4499.8852.12573 Ti1326.4500.8854.12574
																																Ans
																																	Nop
																																Let Ta1327.4506.8855.12575
																																	SetExt 332
																																	Let o.14891
																																		Slw head.4499.8852.12573 2
																																		Let and_group.4501.8856.12576
																																			Lwz Ta1327.4506.8855.12575 o.14891
																																			Let Ti1328.4505.8857.12577
																																				Li 0
																																				Let Tu110.4502.8858.12578
																																					CallDir solve_each_element.2947 d:Ti1328.4505.8857.12577 and_group.4501.8856.12576 dirvec.2958 f:
																																					Let Ti1330.4503.8860.12580
																																						Li 4
																																						Ans
																																							CallDir solve_one_or_network.2951 d:Ti1330.4503.8860.12580 head.4477 dirvec.2958 f:
										Let Ta1313.4495
											SetExt 636
											Let Ta1930.5228.8826
												SetExt 48
												Let o.14871
													Slw range_primitive.4478 2
													Let m.5212.8827
														Lwz Ta1930.5228.8826 o.14871
														Let Td1932.5225.8829
															Lfd Ta1313.4495 0
															Let m_xyz.6021.12558
																Lwz m.5212.8827 20
																Let Td1933.5226.8830
																	Lfd m_xyz.6021.12558 0
																	Let b0.5213.8831
																		FSub Td1932.5225.8829 Td1933.5226.8830
																		Let Td1935.5222.8833
																			Lfd Ta1313.4495 4
																			Let m_xyz.6009.12546
																				Lwz m.5212.8827 20
																				Let Td1936.5223.8834
																					Lfd m_xyz.6009.12546 4
																					Let b1.5214.8835
																						FSub Td1935.5222.8833 Td1936.5223.8834
																						Let Td1938.5219.8837
																							Lfd Ta1313.4495 8
																							Let m_xyz.5997.12534
																								Lwz m.5212.8827 20
																								Let Td1939.5220.8838
																									Lfd m_xyz.5997.12534 8
																									Let b2.5215.8839
																										FSub Td1938.5219.8837 Td1939.5220.8838
																										Let m_shape.6109.12519
																											Lwz m.5212.8827 4
																											Let Ti1940.5217.8841
																												Li 1
																												Let t.4484
																													IfEq m_shape.6109.12519 Ti1940.5217.8841
																														Let Ti2031.5343.12503
																															Li 0
																															Let Ti2032.5344.12504
																																Li 1
																																Let Ti2033.5345.12505
																																	Li 2
																																	Let Tb2034.5331.12506
																																		CallDir solver_rect_surface.2809 d:m.5212.8827 dirvec.2958 Ti2031.5343.12503 Ti2032.5344.12504 Ti2033.5345.12505 f:b0.5213.8831 b1.5214.8835 b2.5215.8839 
																																		Let Ti2035.5332.12507
																																			Li 0
																																			Ans
																																				IfEq Tb2034.5331.12506 Ti2035.5332.12507
																																					Let Ti2036.5340.12508
																																						Li 1
																																						Let Ti2037.5341.12509
																																							Li 2
																																							Let Ti2038.5342.12510
																																								Li 0
																																								Let Tb2039.5333.12511
																																									CallDir solver_rect_surface.2809 d:m.5212.8827 dirvec.2958 Ti2036.5340.12508 Ti2037.5341.12509 Ti2038.5342.12510 f:b1.5214.8835 b2.5215.8839 b0.5213.8831 
																																									Let Ti2040.5334.12512
																																										Li 0
																																										Ans
																																											IfEq Tb2039.5333.12511 Ti2040.5334.12512
																																												Let Ti2041.5337.12513
																																													Li 2
																																													Let Ti2042.5338.12514
																																														Li 0
																																														Let Ti2043.5339.12515
																																															Li 1
																																															Let Tb2044.5335.12516
																																																CallDir solver_rect_surface.2809 d:m.5212.8827 dirvec.2958 Ti2041.5337.12513 Ti2042.5338.12514 Ti2043.5339.12515 f:b2.5215.8839 b0.5213.8831 b1.5214.8835 
																																																Let Ti2045.5336.12517
																																																	Li 0
																																																	Ans
																																																		IfEq Tb2044.5335.12516 Ti2045.5336.12517
																																																			Ans
																																																				Li 0
																																																			Ans
																																																				Li 3
																																												Ans
																																													Li 2
																																					Ans
																																						Li 1
																														Let Ti1941.5218.8842
																															Li 2
																															Ans
																																IfEq m_shape.6109.12519 Ti1941.5218.8842
																																	Ans
																																		CallDir solver_surface.2824 d:m.5212.8827 dirvec.2958 f:b0.5213.8831 b1.5214.8835 b2.5215.8839 
																																	Ans
																																		CallDir solver_second.2843 d:m.5212.8827 dirvec.2958 f:b0.5213.8831 b1.5214.8835 b2.5215.8839 
																													Let Ti1314.4485
																														Li 0
																														Ans
																															IfEq t.4484 Ti1314.4485
																																Ans
																																	Nop
																																Let Ta1315.4493
																																	SetExt 540
																																	Let tp.4486
																																		Lfd Ta1315.4493 0
																																		Let Ta1317.4491
																																			SetExt 548
																																			Let Td1319.4490
																																				Lfd Ta1317.4491 0
																																				Let z.6378.8825
																																					FSub tp.4486 Td1319.4490
																																					Let Td2637.6382.12502
																																						FLi 0.000000
																																						Let Tb1320.4487
																																							IfFLE Td2637.6382.12502 z.6378.8825
																																								Ans
																																									Li 0
																																								Ans
																																									Li 1
																																							Let Ti1321.4488
																																								Li 0
																																								Ans
																																									IfEq Tb1320.4487 Ti1321.4488
																																										Ans
																																											Nop
																																										Let head.4499.8816
																																											Lwz head.4477 4
																																											Let Ti1326.4500.8818
																																												Li -1
																																												Ans
																																													IfEq head.4499.8816 Ti1326.4500.8818
																																														Ans
																																															Nop
																																														Let Ta1327.4506.8819
																																															SetExt 332
																																															Let o.14881
																																																Slw head.4499.8816 2
																																																Let and_group.4501.8820
																																																	Lwz Ta1327.4506.8819 o.14881
																																																	Let Ti1328.4505.8821
																																																		Li 0
																																																		Let Tu110.4502.8822
																																																			CallDir solve_each_element.2947 d:Ti1328.4505.8821 and_group.4501.8820 dirvec.2958 f:
																																																			Let head.4499.12486
																																																				Lwz head.4477 8
																																																				Let Ti1326.4500.12487
																																																					Li -1
																																																					Ans
																																																						IfEq head.4499.12486 Ti1326.4500.12487
																																																							Ans
																																																								Nop
																																																							Let Ta1327.4506.12488
																																																								SetExt 332
																																																								Let o.14883
																																																									Slw head.4499.12486 2
																																																									Let and_group.4501.12489
																																																										Lwz Ta1327.4506.12488 o.14883
																																																										Let Ti1328.4505.12490
																																																											Li 0
																																																											Let Tu110.4502.12491
																																																												CallDir solve_each_element.2947 d:Ti1328.4505.12490 and_group.4501.12489 dirvec.2958 f:
																																																												Let head.4499.8852.12494
																																																													Lwz head.4477 12
																																																													Let Ti1326.4500.8854.12495
																																																														Li -1
																																																														Ans
																																																															IfEq head.4499.8852.12494 Ti1326.4500.8854.12495
																																																																Ans
																																																																	Nop
																																																																Let Ta1327.4506.8855.12496
																																																																	SetExt 332
																																																																	Let o.14885
																																																																		Slw head.4499.8852.12494 2
																																																																		Let and_group.4501.8856.12497
																																																																			Lwz Ta1327.4506.8855.12496 o.14885
																																																																			Let Ti1328.4505.8857.12498
																																																																				Li 0
																																																																				Let Tu110.4502.8858.12499
																																																																					CallDir solve_each_element.2947 d:Ti1328.4505.8857.12498 and_group.4501.8856.12497 dirvec.2958 f:
																																																																					Let Ti1330.4503.8860.12501
																																																																						Li 4
																																																																						Ans
																																																																							CallDir solve_one_or_network.2951 d:Ti1330.4503.8860.12501 head.4477 dirvec.2958 f:
									Let Ti1324.4481
										Add ofs.2956 1
										Let o.14892
											Slw Ti1324.4481 2
											Let head.4477.8794
												Lwz or_network.2957 o.14892
												Let range_primitive.4478.8796
													Lwz head.4477.8794 0
													Let Ti1310.4479.8798
														Li -1
														Ans
															IfEq range_primitive.4478.8796 Ti1310.4479.8798
																Ans
																	Nop
																Let Ti1311.4483.8799
																	Li 99
																	Let Tu111.4480.8800
																		IfEq range_primitive.4478.8796 Ti1311.4483.8799
																			Let head.4499.12470
																				Lwz head.4477.8794 4
																				Let Ti1326.4500.12471
																					Li -1
																					Ans
																						IfEq head.4499.12470 Ti1326.4500.12471
																							Ans
																								Nop
																							Let Ta1327.4506.12472
																								SetExt 332
																								Let o.14901
																									Slw head.4499.12470 2
																									Let and_group.4501.12473
																										Lwz Ta1327.4506.12472 o.14901
																										Let Ti1328.4505.12474
																											Li 0
																											Let Tu110.4502.12475
																												CallDir solve_each_element.2947 d:Ti1328.4505.12474 and_group.4501.12473 dirvec.2958 f:
																												Let head.4499.8852.12478
																													Lwz head.4477.8794 8
																													Let Ti1326.4500.8854.12479
																														Li -1
																														Ans
																															IfEq head.4499.8852.12478 Ti1326.4500.8854.12479
																																Ans
																																	Nop
																																Let Ta1327.4506.8855.12480
																																	SetExt 332
																																	Let o.14903
																																		Slw head.4499.8852.12478 2
																																		Let and_group.4501.8856.12481
																																			Lwz Ta1327.4506.8855.12480 o.14903
																																			Let Ti1328.4505.8857.12482
																																				Li 0
																																				Let Tu110.4502.8858.12483
																																					CallDir solve_each_element.2947 d:Ti1328.4505.8857.12482 and_group.4501.8856.12481 dirvec.2958 f:
																																					Let Ti1330.4503.8860.12485
																																						Li 3
																																						Ans
																																							CallDir solve_one_or_network.2951 d:Ti1330.4503.8860.12485 head.4477.8794 dirvec.2958 f:
																			Let Ta1313.4495.8803
																				SetExt 636
																				Let t.4484.8804
																					CallDir solver.2849 d:range_primitive.4478.8796 dirvec.2958 Ta1313.4495.8803 f:
																					Let Ti1314.4485.8805
																						Li 0
																						Ans
																							IfEq t.4484.8804 Ti1314.4485.8805
																								Ans
																									Nop
																								Let Ta1315.4493.8806
																									SetExt 540
																									Let tp.4486.8808
																										Lfd Ta1315.4493.8806 0
																										Let Ta1317.4491.8809
																											SetExt 548
																											Let Td1319.4490.8811
																												Lfd Ta1317.4491.8809 0
																												Let z.6378.12468
																													FSub tp.4486.8808 Td1319.4490.8811
																													Let Td2637.6382.10492.12469
																														FLi 0.000000
																														Let Tb1320.4487.8812
																															IfFLE Td2637.6382.10492.12469 z.6378.12468
																																Ans
																																	Li 0
																																Ans
																																	Li 1
																															Let Ti1321.4488.8813
																																Li 0
																																Ans
																																	IfEq Tb1320.4487.8812 Ti1321.4488.8813
																																		Ans
																																			Nop
																																		Let head.4499.12452
																																			Lwz head.4477.8794 4
																																			Let Ti1326.4500.12453
																																				Li -1
																																				Ans
																																					IfEq head.4499.12452 Ti1326.4500.12453
																																						Ans
																																							Nop
																																						Let Ta1327.4506.12454
																																							SetExt 332
																																							Let o.14897
																																								Slw head.4499.12452 2
																																								Let and_group.4501.12455
																																									Lwz Ta1327.4506.12454 o.14897
																																									Let Ti1328.4505.12456
																																										Li 0
																																										Let Tu110.4502.12457
																																											CallDir solve_each_element.2947 d:Ti1328.4505.12456 and_group.4501.12455 dirvec.2958 f:
																																											Let head.4499.8852.12460
																																												Lwz head.4477.8794 8
																																												Let Ti1326.4500.8854.12461
																																													Li -1
																																													Ans
																																														IfEq head.4499.8852.12460 Ti1326.4500.8854.12461
																																															Ans
																																																Nop
																																															Let Ta1327.4506.8855.12462
																																																SetExt 332
																																																Let o.14899
																																																	Slw head.4499.8852.12460 2
																																																	Let and_group.4501.8856.12463
																																																		Lwz Ta1327.4506.8855.12462 o.14899
																																																		Let Ti1328.4505.8857.12464
																																																			Li 0
																																																			Let Tu110.4502.8858.12465
																																																				CallDir solve_each_element.2947 d:Ti1328.4505.8857.12464 and_group.4501.8856.12463 dirvec.2958 f:
																																																				Let Ti1330.4503.8860.12467
																																																					Li 3
																																																					Ans
																																																						CallDir solve_one_or_network.2951 d:Ti1330.4503.8860.12467 head.4477.8794 dirvec.2958 f:
																		Let Ti1324.4481.8802
																			Add Ti1324.4481 1
																			Ans
																				CallDir trace_or_matrix.2955 d:Ti1324.4481.8802 or_network.2957 dirvec.2958 f:
solve_each_element_fast.2961 (args) : iand_ofs.2962 and_group.2963 dirvec.2964 (fargs) : 
	Let m_vec.5809.8768
		Lwz dirvec.2964 0
		Let o.14904
			Slw iand_ofs.2962 2
			Let iobj.4400
				Lwz and_group.2963 o.14904
				Let Ti1246.4401
					Li -1
					Ans
						IfEq iobj.4400 Ti1246.4401
							Ans
								Nop
							Let Ta1725.4987.8753
								SetExt 48
								Let o.14905
									Slw iobj.4400 2
									Let m.4973.8754
										Lwz Ta1725.4987.8753 o.14905
										Let m_ctbl.5895.12451
											Lwz m.4973.8754 40
											Let b0.4975.8757
												Lfd m_ctbl.5895.12451 0
												Let b1.4976.8759
													Lfd m_ctbl.5895.12451 4
													Let b2.4977.8761
														Lfd m_ctbl.5895.12451 8
														Let m_const.5808.12440
															Lwz dirvec.2964 4
															Let o.14909
																Slw iobj.4400 2
																Let dconst.4979.8763
																	Lwz m_const.5808.12440 o.14909
																	Let m_shape.6109.12429
																		Lwz m.4973.8754 4
																		Let Ti1729.4981.8765
																			Li 1
																			Let t0.4402
																				IfEq m_shape.6109.12429 Ti1729.4981.8765
																					Let m_vec.5809.12426
																						Lwz dirvec.2964 0
																						Ans
																							CallDir solver_rect_fast.2853 d:m.4973.8754 m_vec.5809.12426 dconst.4979.8763 f:b0.4975.8757 b1.4976.8759 b2.4977.8761 
																					Let Ti1731.4982.8766
																						Li 2
																						Ans
																							IfEq m_shape.6109.12429 Ti1731.4982.8766
																								Let Td1767.5037.12414
																									Lfd dconst.4979.8763 0
																									Let Td2637.6382.9751.12415
																										FLi 0.000000
																										Let Tb1768.5027.12416
																											IfFLE Td2637.6382.9751.12415 Td1767.5037.12414
																												Ans
																													Li 0
																												Ans
																													Li 1
																											Let Ti1769.5028.12417
																												Li 0
																												Ans
																													IfEq Tb1768.5027.12416 Ti1769.5028.12417
																														Ans
																															Li 0
																														Let Ta1770.5030.12418
																															SetExt 540
																															Let Td1773.5033.12421
																																Lfd dconst.4979.8763 0
																																Let Td1775.5034.12423
																																	Lfd m_ctbl.5895.12451 12
																																	Let Td1776.5032.12424
																																		FMul Td1773.5033.12421 Td1775.5034.12423
																																		Let Tu81.5029.12425
																																			Stfd Td1776.5032.12424 Ta1770.5030.12418 0
																																			Ans
																																				Li 1
																								Ans
																									CallDir solver_second_fast2.2883 d:m.4973.8754 dconst.4979.8763 m_ctbl.5895.12451 f:b0.4975.8757 b1.4976.8759 b2.4977.8761 
																				Let Ti1247.4403
																					Li 0
																					Ans
																						IfEq t0.4402 Ti1247.4403
																							Let Ta1248.4459
																								SetExt 48
																								Let o.14930
																									Slw iobj.4400 2
																									Let Tt1249.4458
																										Lwz Ta1248.4459 o.14930
																										Let m_invert.6092.8748
																											Lwz Tt1249.4458 24
																											Let Ti1251.4455
																												Li 0
																												Ans
																													IfEq m_invert.6092.8748 Ti1251.4455
																														Ans
																															Nop
																														Let Ti1253.4456
																															Add iand_ofs.2962 1
																															Ans
																																CallDir solve_each_element_fast.2961 d:Ti1253.4456 and_group.2963 dirvec.2964 f:
																							Let Ta1254.4452
																								SetExt 540
																								Let t0p.4404
																									Lfd Ta1254.4452 0
																									Let Td.e.10654
																										FLi 0.000000
																										Let z.6378.8741
																											FSub Td.e.10654 t0p.4404
																											Let Td2637.6382.12412
																												FLi 0.000000
																												Let Tb1257.4408
																													IfFLE Td2637.6382.12412 z.6378.8741
																														Ans
																															Li 0
																														Ans
																															Li 1
																													Let Ti1258.4409
																														Li 0
																														Let Tu117.4405
																															IfEq Tb1257.4408 Ti1258.4409
																																Ans
																																	Nop
																																Let Ta1259.4449
																																	SetExt 548
																																	Let Td1261.4448
																																		Lfd Ta1259.4449 0
																																		Let z.6378.8740
																																			FSub t0p.4404 Td1261.4448
																																			Let Td2637.6382.12411
																																				FLi 0.000000
																																				Let Tb1262.4410
																																					IfFLE Td2637.6382.12411 z.6378.8740
																																						Ans
																																							Li 0
																																						Ans
																																							Li 1
																																					Let Ti1263.4411
																																						Li 0
																																						Ans
																																							IfEq Tb1262.4410 Ti1263.4411
																																								Ans
																																									Nop
																																								Let Td.e.10655
																																									FLi 0.010000
																																									Let t.4412
																																										FAdd t0p.4404 Td.e.10655
																																										Let Td1266.4445
																																											Lfd m_vec.5809.8768 0
																																											Let Td1267.4441
																																												FMul Td1266.4445 t.4412
																																												Let Ta1268.4443
																																													SetExt 648
																																													Let Td1270.4442
																																														Lfd Ta1268.4443 0
																																														Let q0.4413
																																															FAdd Td1267.4441 Td1270.4442
																																															Let Td1272.4439
																																																Lfd m_vec.5809.8768 4
																																																Let Td1273.4435
																																																	FMul Td1272.4439 t.4412
																																																	Let Ta1274.4437
																																																		SetExt 648
																																																		Let Td1276.4436
																																																			Lfd Ta1274.4437 4
																																																			Let q1.4414
																																																				FAdd Td1273.4435 Td1276.4436
																																																				Let Td1278.4433
																																																					Lfd m_vec.5809.8768 8
																																																					Let Td1279.4429
																																																						FMul Td1278.4433 t.4412
																																																						Let Ta1280.4431
																																																							SetExt 648
																																																							Let Td1282.4430
																																																								Lfd Ta1280.4431 8
																																																								Let q2.4415
																																																									FAdd Td1279.4429 Td1282.4430
																																																									Let head.4659.8731
																																																										Lwz and_group.2963 0
																																																										Let Ti1459.4660.8733
																																																											Li -1
																																																											Let Tb1284.4416
																																																												IfEq head.4659.8731 Ti1459.4660.8733
																																																													Ans
																																																														Li 1
																																																													Let Ta1460.4666.8734
																																																														SetExt 48
																																																														Let o.14923
																																																															Slw head.4659.8731 2
																																																															Let Tt1461.4665.8735
																																																																Lwz Ta1460.4666.8734 o.14923
																																																																Let Tb1462.4661.8736
																																																																	CallDir is_outside.2927 d:Tt1461.4665.8735 f:q0.4413 q1.4414 q2.4415 
																																																																	Let Ti1463.4662.8737
																																																																		Li 0
																																																																		Ans
																																																																			IfEq Tb1462.4661.8736 Ti1463.4662.8737
																																																																				Let Ti1465.4663.8739
																																																																					Li 1
																																																																					Ans
																																																																						CallDir check_all_inside.2932 d:Ti1465.4663.8739 and_group.2963 f:q0.4413 q1.4414 q2.4415 
																																																																				Ans
																																																																					Li 0
																																																												Let Ti1285.4417
																																																													Li 0
																																																													Ans
																																																														IfEq Tb1284.4416 Ti1285.4417
																																																															Ans
																																																																Nop
																																																															Let Ta1286.4426
																																																																SetExt 548
																																																																Let Tu116.4418
																																																																	Stfd t.4412 Ta1286.4426 0
																																																																	Let Ta1288.4425
																																																																		SetExt 552
																																																																		Let Tu2.6361.8727
																																																																			Stfd q0.4413 Ta1288.4425 0
																																																																			Let Tu1.6362.8729
																																																																				Stfd q1.4414 Ta1288.4425 4
																																																																				Let Tu115.4419
																																																																					Stfd q2.4415 Ta1288.4425 8
																																																																					Let Ta1289.4423
																																																																						SetExt 564
																																																																						Let Tu114.4420
																																																																							Stw iobj.4400 Ta1289.4423 0
																																																																							Let Ta1291.4421
																																																																								SetExt 544
																																																																								Ans
																																																																									Stw t0.4402 Ta1291.4421 0
																															Let Ti1294.4406
																																Add iand_ofs.2962 1
																																Ans
																																	CallDir solve_each_element_fast.2961 d:Ti1294.4406 and_group.2963 dirvec.2964 f:
solve_one_or_network_fast.2965 (args) : ofs.2966 or_group.2967 dirvec.2968 (fargs) : 
	Let o.14931
		Slw ofs.2966 2
		Let head.4390
			Lwz or_group.2967 o.14931
			Let Ti1240.4391
				Li -1
				Ans
					IfEq head.4390 Ti1240.4391
						Ans
							Nop
						Let Ta1241.4397
							SetExt 332
							Let o.14932
								Slw head.4390 2
								Let and_group.4392
									Lwz Ta1241.4397 o.14932
									Let Ti1242.4396
										Li 0
										Let Tu118.4393
											CallDir solve_each_element_fast.2961 d:Ti1242.4396 and_group.4392 dirvec.2968 f:
											Let Ti1244.4394
												Add ofs.2966 1
												Let o.14933
													Slw Ti1244.4394 2
													Let head.4390.8717
														Lwz or_group.2967 o.14933
														Let Ti1240.4391.8719
															Li -1
															Ans
																IfEq head.4390.8717 Ti1240.4391.8719
																	Ans
																		Nop
																	Let Ta1241.4397.8720
																		SetExt 332
																		Let o.14934
																			Slw head.4390.8717 2
																			Let and_group.4392.8721
																				Lwz Ta1241.4397.8720 o.14934
																				Let Ti1242.4396.8722
																					Li 0
																					Let Tu118.4393.8723
																						CallDir solve_each_element_fast.2961 d:Ti1242.4396.8722 and_group.4392.8721 dirvec.2968 f:
																						Let Ti1244.4394.8725
																							Add Ti1244.4394 1
																							Let o.14935
																								Slw Ti1244.4394.8725 2
																								Let head.4390.12395
																									Lwz or_group.2967 o.14935
																									Let Ti1240.4391.12396
																										Li -1
																										Ans
																											IfEq head.4390.12395 Ti1240.4391.12396
																												Ans
																													Nop
																												Let Ta1241.4397.12397
																													SetExt 332
																													Let o.14936
																														Slw head.4390.12395 2
																														Let and_group.4392.12398
																															Lwz Ta1241.4397.12397 o.14936
																															Let Ti1242.4396.12399
																																Li 0
																																Let Tu118.4393.12400
																																	CallDir solve_each_element_fast.2961 d:Ti1242.4396.12399 and_group.4392.12398 dirvec.2968 f:
																																	Let Ti1244.4394.12402
																																		Add Ti1244.4394.8725 1
																																		Let o.14937
																																			Slw Ti1244.4394.12402 2
																																			Let head.4390.8717.12403
																																				Lwz or_group.2967 o.14937
																																				Let Ti1240.4391.8719.12404
																																					Li -1
																																					Ans
																																						IfEq head.4390.8717.12403 Ti1240.4391.8719.12404
																																							Ans
																																								Nop
																																							Let Ta1241.4397.8720.12405
																																								SetExt 332
																																								Let o.14938
																																									Slw head.4390.8717.12403 2
																																									Let and_group.4392.8721.12406
																																										Lwz Ta1241.4397.8720.12405 o.14938
																																										Let Ti1242.4396.8722.12407
																																											Li 0
																																											Let Tu118.4393.8723.12408
																																												CallDir solve_each_element_fast.2961 d:Ti1242.4396.8722.12407 and_group.4392.8721.12406 dirvec.2968 f:
																																												Let Ti1244.4394.8725.12410
																																													Add Ti1244.4394.12402 1
																																													Ans
																																														CallDir solve_one_or_network_fast.2965 d:Ti1244.4394.8725.12410 or_group.2967 dirvec.2968 f:
trace_or_matrix_fast.2969 (args) : ofs.2970 or_network.2971 dirvec.2972 (fargs) : 
	Let o.14939
		Slw ofs.2970 2
		Let head.4369
			Lwz or_network.2971 o.14939
			Let range_primitive.4370
				Lwz head.4369 0
				Let Ti1225.4371
					Li -1
					Ans
						IfEq range_primitive.4370 Ti1225.4371
							Ans
								Nop
							Let Ti1226.4375
								Li 99
								Let Tu119.4372
									IfEq range_primitive.4370 Ti1226.4375
										Let head.4390.8708
											Lwz head.4369 4
											Let Ti1240.4391.8710
												Li -1
												Ans
													IfEq head.4390.8708 Ti1240.4391.8710
														Ans
															Nop
														Let Ta1241.4397.8711
															SetExt 332
															Let o.14959
																Slw head.4390.8708 2
																Let and_group.4392.8712
																	Lwz Ta1241.4397.8711 o.14959
																	Let Ti1242.4396.8713
																		Li 0
																		Let Tu118.4393.8714
																			CallDir solve_each_element_fast.2961 d:Ti1242.4396.8713 and_group.4392.8712 dirvec.2972 f:
																			Let head.4390.12379
																				Lwz head.4369 8
																				Let Ti1240.4391.12380
																					Li -1
																					Ans
																						IfEq head.4390.12379 Ti1240.4391.12380
																							Ans
																								Nop
																							Let Ta1241.4397.12381
																								SetExt 332
																								Let o.14961
																									Slw head.4390.12379 2
																									Let and_group.4392.12382
																										Lwz Ta1241.4397.12381 o.14961
																										Let Ti1242.4396.12383
																											Li 0
																											Let Tu118.4393.12384
																												CallDir solve_each_element_fast.2961 d:Ti1242.4396.12383 and_group.4392.12382 dirvec.2972 f:
																												Let head.4390.8717.12387
																													Lwz head.4369 12
																													Let Ti1240.4391.8719.12388
																														Li -1
																														Ans
																															IfEq head.4390.8717.12387 Ti1240.4391.8719.12388
																																Ans
																																	Nop
																																Let Ta1241.4397.8720.12389
																																	SetExt 332
																																	Let o.14963
																																		Slw head.4390.8717.12387 2
																																		Let and_group.4392.8721.12390
																																			Lwz Ta1241.4397.8720.12389 o.14963
																																			Let Ti1242.4396.8722.12391
																																				Li 0
																																				Let Tu118.4393.8723.12392
																																					CallDir solve_each_element_fast.2961 d:Ti1242.4396.8722.12391 and_group.4392.8721.12390 dirvec.2972 f:
																																					Let Ti1244.4394.8725.12394
																																						Li 4
																																						Ans
																																							CallDir solve_one_or_network_fast.2965 d:Ti1244.4394.8725.12394 head.4369 dirvec.2972 f:
										Let Ta1725.4987.8693
											SetExt 48
											Let o.14941
												Slw range_primitive.4370 2
												Let m.4973.8694
													Lwz Ta1725.4987.8693 o.14941
													Let m_ctbl.5895.12378
														Lwz m.4973.8694 40
														Let b0.4975.8697
															Lfd m_ctbl.5895.12378 0
															Let b1.4976.8699
																Lfd m_ctbl.5895.12378 4
																Let b2.4977.8701
																	Lfd m_ctbl.5895.12378 8
																	Let m_const.5808.12367
																		Lwz dirvec.2972 4
																		Let o.14945
																			Slw range_primitive.4370 2
																			Let dconst.4979.8703
																				Lwz m_const.5808.12367 o.14945
																				Let m_shape.6109.12356
																					Lwz m.4973.8694 4
																					Let Ti1729.4981.8705
																						Li 1
																						Let t.4376
																							IfEq m_shape.6109.12356 Ti1729.4981.8705
																								Let m_vec.5809.12353
																									Lwz dirvec.2972 0
																									Ans
																										CallDir solver_rect_fast.2853 d:m.4973.8694 m_vec.5809.12353 dconst.4979.8703 f:b0.4975.8697 b1.4976.8699 b2.4977.8701 
																								Let Ti1731.4982.8706
																									Li 2
																									Ans
																										IfEq m_shape.6109.12356 Ti1731.4982.8706
																											Let Td1767.5037.12341
																												Lfd dconst.4979.8703 0
																												Let Td2637.6382.9751.12342
																													FLi 0.000000
																													Let Tb1768.5027.12343
																														IfFLE Td2637.6382.9751.12342 Td1767.5037.12341
																															Ans
																																Li 0
																															Ans
																																Li 1
																														Let Ti1769.5028.12344
																															Li 0
																															Ans
																																IfEq Tb1768.5027.12343 Ti1769.5028.12344
																																	Ans
																																		Li 0
																																	Let Ta1770.5030.12345
																																		SetExt 540
																																		Let Td1773.5033.12348
																																			Lfd dconst.4979.8703 0
																																			Let Td1775.5034.12350
																																				Lfd m_ctbl.5895.12378 12
																																				Let Td1776.5032.12351
																																					FMul Td1773.5033.12348 Td1775.5034.12350
																																					Let Tu81.5029.12352
																																						Stfd Td1776.5032.12351 Ta1770.5030.12345 0
																																						Ans
																																							Li 1
																											Ans
																												CallDir solver_second_fast2.2883 d:m.4973.8694 dconst.4979.8703 m_ctbl.5895.12378 f:b0.4975.8697 b1.4976.8699 b2.4977.8701 
																							Let Ti1228.4377
																								Li 0
																								Ans
																									IfEq t.4376 Ti1228.4377
																										Ans
																											Nop
																										Let Ta1229.4385
																											SetExt 540
																											Let tp.4378
																												Lfd Ta1229.4385 0
																												Let Ta1231.4383
																													SetExt 548
																													Let Td1233.4382
																														Lfd Ta1231.4383 0
																														Let z.6378.8692
																															FSub tp.4378 Td1233.4382
																															Let Td2637.6382.12339
																																FLi 0.000000
																																Let Tb1234.4379
																																	IfFLE Td2637.6382.12339 z.6378.8692
																																		Ans
																																			Li 0
																																		Ans
																																			Li 1
																																	Let Ti1235.4380
																																		Li 0
																																		Ans
																																			IfEq Tb1234.4379 Ti1235.4380
																																				Ans
																																					Nop
																																				Let head.4390.8683
																																					Lwz head.4369 4
																																					Let Ti1240.4391.8685
																																						Li -1
																																						Ans
																																							IfEq head.4390.8683 Ti1240.4391.8685
																																								Ans
																																									Nop
																																								Let Ta1241.4397.8686
																																									SetExt 332
																																									Let o.14953
																																										Slw head.4390.8683 2
																																										Let and_group.4392.8687
																																											Lwz Ta1241.4397.8686 o.14953
																																											Let Ti1242.4396.8688
																																												Li 0
																																												Let Tu118.4393.8689
																																													CallDir solve_each_element_fast.2961 d:Ti1242.4396.8688 and_group.4392.8687 dirvec.2972 f:
																																													Let head.4390.12323
																																														Lwz head.4369 8
																																														Let Ti1240.4391.12324
																																															Li -1
																																															Ans
																																																IfEq head.4390.12323 Ti1240.4391.12324
																																																	Ans
																																																		Nop
																																																	Let Ta1241.4397.12325
																																																		SetExt 332
																																																		Let o.14955
																																																			Slw head.4390.12323 2
																																																			Let and_group.4392.12326
																																																				Lwz Ta1241.4397.12325 o.14955
																																																				Let Ti1242.4396.12327
																																																					Li 0
																																																					Let Tu118.4393.12328
																																																						CallDir solve_each_element_fast.2961 d:Ti1242.4396.12327 and_group.4392.12326 dirvec.2972 f:
																																																						Let head.4390.8717.12331
																																																							Lwz head.4369 12
																																																							Let Ti1240.4391.8719.12332
																																																								Li -1
																																																								Ans
																																																									IfEq head.4390.8717.12331 Ti1240.4391.8719.12332
																																																										Ans
																																																											Nop
																																																										Let Ta1241.4397.8720.12333
																																																											SetExt 332
																																																											Let o.14957
																																																												Slw head.4390.8717.12331 2
																																																												Let and_group.4392.8721.12334
																																																													Lwz Ta1241.4397.8720.12333 o.14957
																																																													Let Ti1242.4396.8722.12335
																																																														Li 0
																																																														Let Tu118.4393.8723.12336
																																																															CallDir solve_each_element_fast.2961 d:Ti1242.4396.8722.12335 and_group.4392.8721.12334 dirvec.2972 f:
																																																															Let Ti1244.4394.8725.12338
																																																																Li 4
																																																																Ans
																																																																	CallDir solve_one_or_network_fast.2965 d:Ti1244.4394.8725.12338 head.4369 dirvec.2972 f:
									Let Ti1238.4373
										Add ofs.2970 1
										Let o.14964
											Slw Ti1238.4373 2
											Let head.4369.8662
												Lwz or_network.2971 o.14964
												Let range_primitive.4370.8664
													Lwz head.4369.8662 0
													Let Ti1225.4371.8666
														Li -1
														Ans
															IfEq range_primitive.4370.8664 Ti1225.4371.8666
																Ans
																	Nop
																Let Ti1226.4375.8667
																	Li 99
																	Let Tu119.4372.8668
																		IfEq range_primitive.4370.8664 Ti1226.4375.8667
																			Let head.4390.12307
																				Lwz head.4369.8662 4
																				Let Ti1240.4391.12308
																					Li -1
																					Ans
																						IfEq head.4390.12307 Ti1240.4391.12308
																							Ans
																								Nop
																							Let Ta1241.4397.12309
																								SetExt 332
																								Let o.14973
																									Slw head.4390.12307 2
																									Let and_group.4392.12310
																										Lwz Ta1241.4397.12309 o.14973
																										Let Ti1242.4396.12311
																											Li 0
																											Let Tu118.4393.12312
																												CallDir solve_each_element_fast.2961 d:Ti1242.4396.12311 and_group.4392.12310 dirvec.2972 f:
																												Let head.4390.8717.12315
																													Lwz head.4369.8662 8
																													Let Ti1240.4391.8719.12316
																														Li -1
																														Ans
																															IfEq head.4390.8717.12315 Ti1240.4391.8719.12316
																																Ans
																																	Nop
																																Let Ta1241.4397.8720.12317
																																	SetExt 332
																																	Let o.14975
																																		Slw head.4390.8717.12315 2
																																		Let and_group.4392.8721.12318
																																			Lwz Ta1241.4397.8720.12317 o.14975
																																			Let Ti1242.4396.8722.12319
																																				Li 0
																																				Let Tu118.4393.8723.12320
																																					CallDir solve_each_element_fast.2961 d:Ti1242.4396.8722.12319 and_group.4392.8721.12318 dirvec.2972 f:
																																					Let Ti1244.4394.8725.12322
																																						Li 3
																																						Ans
																																							CallDir solve_one_or_network_fast.2965 d:Ti1244.4394.8725.12322 head.4369.8662 dirvec.2972 f:
																			Let t.4376.8671
																				CallDir solver_fast2.2890 d:range_primitive.4370.8664 dirvec.2972 f:
																				Let Ti1228.4377.8672
																					Li 0
																					Ans
																						IfEq t.4376.8671 Ti1228.4377.8672
																							Ans
																								Nop
																							Let Ta1229.4385.8673
																								SetExt 540
																								Let tp.4378.8675
																									Lfd Ta1229.4385.8673 0
																									Let Ta1231.4383.8676
																										SetExt 548
																										Let Td1233.4382.8678
																											Lfd Ta1231.4383.8676 0
																											Let z.6378.12305
																												FSub tp.4378.8675 Td1233.4382.8678
																												Let Td2637.6382.10492.12306
																													FLi 0.000000
																													Let Tb1234.4379.8679
																														IfFLE Td2637.6382.10492.12306 z.6378.12305
																															Ans
																																Li 0
																															Ans
																																Li 1
																														Let Ti1235.4380.8680
																															Li 0
																															Ans
																																IfEq Tb1234.4379.8679 Ti1235.4380.8680
																																	Ans
																																		Nop
																																	Let head.4390.12289
																																		Lwz head.4369.8662 4
																																		Let Ti1240.4391.12290
																																			Li -1
																																			Ans
																																				IfEq head.4390.12289 Ti1240.4391.12290
																																					Ans
																																						Nop
																																					Let Ta1241.4397.12291
																																						SetExt 332
																																						Let o.14969
																																							Slw head.4390.12289 2
																																							Let and_group.4392.12292
																																								Lwz Ta1241.4397.12291 o.14969
																																								Let Ti1242.4396.12293
																																									Li 0
																																									Let Tu118.4393.12294
																																										CallDir solve_each_element_fast.2961 d:Ti1242.4396.12293 and_group.4392.12292 dirvec.2972 f:
																																										Let head.4390.8717.12297
																																											Lwz head.4369.8662 8
																																											Let Ti1240.4391.8719.12298
																																												Li -1
																																												Ans
																																													IfEq head.4390.8717.12297 Ti1240.4391.8719.12298
																																														Ans
																																															Nop
																																														Let Ta1241.4397.8720.12299
																																															SetExt 332
																																															Let o.14971
																																																Slw head.4390.8717.12297 2
																																																Let and_group.4392.8721.12300
																																																	Lwz Ta1241.4397.8720.12299 o.14971
																																																	Let Ti1242.4396.8722.12301
																																																		Li 0
																																																		Let Tu118.4393.8723.12302
																																																			CallDir solve_each_element_fast.2961 d:Ti1242.4396.8722.12301 and_group.4392.8721.12300 dirvec.2972 f:
																																																			Let Ti1244.4394.8725.12304
																																																				Li 3
																																																				Ans
																																																					CallDir solve_one_or_network_fast.2965 d:Ti1244.4394.8725.12304 head.4369.8662 dirvec.2972 f:
																		Let Ti1238.4373.8670
																			Add Ti1238.4373 1
																			Ans
																				CallDir trace_or_matrix_fast.2969 d:Ti1238.4373.8670 or_network.2971 dirvec.2972 f:
get_nvector_second.2979 (args) : m.2980 (fargs) : 
	Let Ta1135.4324
		SetExt 552
		Let Td1137.4322
			Lfd Ta1135.4324 0
			Let m_xyz.6021.8591
				Lwz m.2980 20
				Let Td1138.4323
					Lfd m_xyz.6021.8591 0
					Let p0.4263
						FSub Td1137.4322 Td1138.4323
						Let Ta1139.4320
							SetExt 552
							Let Td1141.4318
								Lfd Ta1139.4320 4
								Let m_xyz.6009.8579
									Lwz m.2980 20
									Let Td1142.4319
										Lfd m_xyz.6009.8579 4
										Let p1.4264
											FSub Td1141.4318 Td1142.4319
											Let Ta1143.4316
												SetExt 552
												Let Td1145.4314
													Lfd Ta1143.4316 8
													Let m_xyz.5997.8567
														Lwz m.2980 20
														Let Td1146.4315
															Lfd m_xyz.5997.8567 8
															Let p2.4265
																FSub Td1145.4314 Td1146.4315
																Let m_abc.6067.8554
																	Lwz m.2980 16
																	Let Td1147.4313
																		Lfd m_abc.6067.8554 0
																		Let d0.4266
																			FMul p0.4263 Td1147.4313
																			Let m_abc.6055.8542
																				Lwz m.2980 16
																				Let Td1148.4312
																					Lfd m_abc.6055.8542 4
																					Let d1.4267
																						FMul p1.4264 Td1148.4312
																						Let m_abc.6043.8530
																							Lwz m.2980 16
																							Let Td1149.4311
																								Lfd m_abc.6043.8530 8
																								Let d2.4268
																									FMul p2.4265 Td1149.4311
																									Let m_isrot.6078.8518
																										Lwz m.2980 12
																										Let Ti1151.4273
																											Li 0
																											Let Tu129.4269
																												IfEq m_isrot.6078.8518 Ti1151.4273
																													Let Ta1152.4309
																														SetExt 568
																														Let Tu126.4303
																															Stfd d0.4266 Ta1152.4309 0
																															Let Ta1154.4307
																																SetExt 568
																																Let Tu125.4304
																																	Stfd d1.4267 Ta1154.4307 4
																																	Let Ta1156.4305
																																		SetExt 568
																																		Ans
																																			Stfd d2.4268 Ta1156.4305 8
																													Let Ta1158.4294
																														SetExt 568
																														Let m_rot123.5905.8512
																															Lwz m.2980 36
																															Let Td1160.4302
																																Lfd m_rot123.5905.8512 8
																																Let Td1161.4299
																																	FMul p1.4264 Td1160.4302
																																	Let m_rot123.5917.8500
																																		Lwz m.2980 36
																																		Let Td1162.4301
																																			Lfd m_rot123.5917.8500 4
																																			Let Td1163.4300
																																				FMul p2.4265 Td1162.4301
																																				Let Td1164.4298
																																					FAdd Td1161.4299 Td1163.4300
																																					Let Td.e.10643
																																						FLi 0.500000
																																						Let Td1165.4297
																																							FMul Td1164.4298 Td.e.10643
																																							Let Td1166.4296
																																								FAdd d0.4266 Td1165.4297
																																								Let Tu128.4274
																																									Stfd Td1166.4296 Ta1158.4294 0
																																									Let Ta1167.4285
																																										SetExt 568
																																										Let m_rot123.5905.8487
																																											Lwz m.2980 36
																																											Let Td1169.4293
																																												Lfd m_rot123.5905.8487 8
																																												Let Td1170.4290
																																													FMul p0.4263 Td1169.4293
																																													Let m_rot123.5929.8475
																																														Lwz m.2980 36
																																														Let Td1171.4292
																																															Lfd m_rot123.5929.8475 0
																																															Let Td1172.4291
																																																FMul p2.4265 Td1171.4292
																																																Let Td1173.4289
																																																	FAdd Td1170.4290 Td1172.4291
																																																	Let Td.e.10644
																																																		FLi 0.500000
																																																		Let Td1174.4288
																																																			FMul Td1173.4289 Td.e.10644
																																																			Let Td1175.4287
																																																				FAdd d1.4267 Td1174.4288
																																																				Let Tu127.4275
																																																					Stfd Td1175.4287 Ta1167.4285 4
																																																					Let Ta1176.4276
																																																						SetExt 568
																																																						Let m_rot123.5917.8462
																																																							Lwz m.2980 36
																																																							Let Td1178.4284
																																																								Lfd m_rot123.5917.8462 4
																																																								Let Td1179.4281
																																																									FMul p0.4263 Td1178.4284
																																																									Let m_rot123.5929.8450
																																																										Lwz m.2980 36
																																																										Let Td1180.4283
																																																											Lfd m_rot123.5929.8450 0
																																																											Let Td1181.4282
																																																												FMul p1.4264 Td1180.4283
																																																												Let Td1182.4280
																																																													FAdd Td1179.4281 Td1181.4282
																																																													Let Td.e.10645
																																																														FLi 0.500000
																																																														Let Td1183.4279
																																																															FMul Td1182.4280 Td.e.10645
																																																															Let Td1184.4278
																																																																FAdd d2.4268 Td1183.4279
																																																																Ans
																																																																	Stfd Td1184.4278 Ta1176.4276 8
																												Let Ta1185.4270
																													SetExt 568
																													Let m_invert.6092.8435
																														Lwz m.2980 24
																														Ans
																															CallDir vecunit_sgn.2687 d:Ta1185.4270 m_invert.6092.8435 f:
utexture.2984 (args) : m.2985 p.2986 (fargs) : 
	Let m_tex.6119.8380
		Lwz m.2985 0
		Let Ta994.4257
			SetExt 580
			Let m_color.5964.8376
				Lwz m.2985 32
				Let Td996.4259
					Lfd m_color.5964.8376 0
					Let Tu134.4092
						Stfd Td996.4259 Ta994.4257 0
						Let Ta997.4254
							SetExt 580
							Let m_color.5952.8364
								Lwz m.2985 32
								Let Td999.4256
									Lfd m_color.5952.8364 4
									Let Tu133.4093
										Stfd Td999.4256 Ta997.4254 4
										Let Ta1000.4251
											SetExt 580
											Let m_color.5940.8352
												Lwz m.2985 32
												Let Td1002.4253
													Lfd m_color.5940.8352 8
													Let Tu132.4094
														Stfd Td1002.4253 Ta1000.4251 8
														Let Ti1003.4095
															Li 1
															Ans
																IfEq m_tex.6119.8380 Ti1003.4095
																	Let Td1005.4248
																		Lfd p.2986 0
																		Let m_xyz.6021.8337
																			Lwz m.2985 20
																			Let Td1006.4249
																				Lfd m_xyz.6021.8337 0
																				Let w1.4221
																					FSub Td1005.4248 Td1006.4249
																					Let Td.e.10635
																						FLi 0.050000
																						Let Td1008.4246
																							FMul w1.4221 Td.e.10635
																							Let Td1009.4244
																								CallDir min_caml_floor d:f:Td1008.4246 
																								Let Td.e.10636
																									FLi 20.000000
																									Let d1.4241
																										FMul Td1009.4244 Td.e.10636
																										Let Td1011.4242
																											FSub w1.4221 d1.4241
																											Let Td.e.10637
																												FLi 10.000000
																												Let z.6378.8331
																													FSub Td1011.4242 Td.e.10637
																													Let Td2637.6382.12281
																														FLi 0.000000
																														Let flag1.4222
																															IfFLE Td2637.6382.12281 z.6378.8331
																																Ans
																																	Li 0
																																Ans
																																	Li 1
																															Let Td1014.4238
																																Lfd p.2986 8
																																Let m_xyz.5997.8324
																																	Lwz m.2985 20
																																	Let Td1015.4239
																																		Lfd m_xyz.5997.8324 8
																																		Let w3.4223
																																			FSub Td1014.4238 Td1015.4239
																																			Let Td.e.10638
																																				FLi 0.050000
																																				Let Td1017.4236
																																					FMul w3.4223 Td.e.10638
																																					Let Td1018.4234
																																						CallDir min_caml_floor d:f:Td1017.4236 
																																						Let Td.e.10639
																																							FLi 20.000000
																																							Let d2.4231
																																								FMul Td1018.4234 Td.e.10639
																																								Let Td1020.4232
																																									FSub w3.4223 d2.4231
																																									Let Td.e.10640
																																										FLi 10.000000
																																										Let z.6378.8318
																																											FSub Td1020.4232 Td.e.10640
																																											Let Td2637.6382.12280
																																												FLi 0.000000
																																												Let flag2.4224
																																													IfFLE Td2637.6382.12280 z.6378.8318
																																														Ans
																																															Li 0
																																														Ans
																																															Li 1
																																													Let Ta1022.4225
																																														SetExt 580
																																														Let Ti1024.4228
																																															Li 0
																																															Let Td1027.4227
																																																IfEq flag1.4222 Ti1024.4228
																																																	Let Ti1025.4230
																																																		Li 0
																																																		Ans
																																																			IfEq flag2.4224 Ti1025.4230
																																																				Ans
																																																					FLi 255.000000
																																																				Ans
																																																					FLi 0.000000
																																																	Let Ti1026.4229
																																																		Li 0
																																																		Ans
																																																			IfEq flag2.4224 Ti1026.4229
																																																				Ans
																																																					FLi 0.000000
																																																				Ans
																																																					FLi 255.000000
																																																Ans
																																																	Stfd Td1027.4227 Ta1022.4225 4
																	Let Ti1028.4096
																		Li 2
																		Ans
																			IfEq m_tex.6119.8380 Ti1028.4096
																				Let Td1030.4218
																					Lfd p.2986 4
																					Let Td.e.10631
																						FLi 0.250000
																						Let Td1032.4217
																							FMul Td1030.4218 Td.e.10631
																							Let Td1033.4216
																								CallDir min_caml_sin d:f:Td1032.4217 
																								Let w2.4204
																									FMul Td1033.4216 Td1033.4216
																									Let Ta1034.4212
																										SetExt 580
																										Let Td.e.10632
																											FLi 255.000000
																											Let Td1037.4214
																												FMul Td.e.10632 w2.4204
																												Let Tu130.4205
																													Stfd Td1037.4214 Ta1034.4212 0
																													Let Ta1038.4206
																														SetExt 580
																														Let Td.e.10633
																															FLi 1.000000
																															Let Td1042.4210
																																FSub Td.e.10633 w2.4204
																																Let Td.e.10634
																																	FLi 255.000000
																																	Let Td1043.4208
																																		FMul Td.e.10634 Td1042.4210
																																		Ans
																																			Stfd Td1043.4208 Ta1038.4206 4
																				Let Ti1044.4097
																					Li 3
																					Ans
																						IfEq m_tex.6119.8380 Ti1044.4097
																							Let Td1046.4201
																								Lfd p.2986 0
																								Let m_xyz.6021.8311
																									Lwz m.2985 20
																									Let Td1047.4202
																										Lfd m_xyz.6021.8311 0
																										Let w1.4172
																											FSub Td1046.4201 Td1047.4202
																											Let Td1049.4198
																												Lfd p.2986 8
																												Let m_xyz.5997.8299
																													Lwz m.2985 20
																													Let Td1050.4199
																														Lfd m_xyz.5997.8299 8
																														Let w3.4173
																															FSub Td1049.4198 Td1050.4199
																															Let Td1051.4196
																																FMul w1.4172 w1.4172
																																Let Td1052.4197
																																	FMul w3.4173 w3.4173
																																	Let Td1053.4195
																																		FAdd Td1051.4196 Td1052.4197
																																		Let Td1054.4192
																																			CallDir min_caml_sqrt d:f:Td1053.4195 
																																			Let Td1055.4193
																																				FLi 10.000000
																																				Let Td1056.4194
																																					FReciprocal Td1055.4193
																																					Let w2.4174
																																						FMul Td1054.4192 Td1056.4194
																																						Let Td1057.4191
																																							CallDir min_caml_floor d:f:w2.4174 
																																							Let Td1058.4189
																																								FSub w2.4174 Td1057.4191
																																								Let Td.e.10627
																																									FLi 3.141593
																																									Let w4.4175
																																										FMul Td1058.4189 Td.e.10627
																																										Let Td1060.4188
																																											CallDir min_caml_cos d:f:w4.4175 
																																											Let cws.4176
																																												FMul Td1060.4188 Td1060.4188
																																												Let Ta1061.4184
																																													SetExt 580
																																													Let Td.e.10628
																																														FLi 255.000000
																																														Let Td1064.4186
																																															FMul cws.4176 Td.e.10628
																																															Let Tu131.4177
																																																Stfd Td1064.4186 Ta1061.4184 4
																																																Let Ta1065.4178
																																																	SetExt 580
																																																	Let Td.e.10629
																																																		FLi 1.000000
																																																		Let Td1068.4181
																																																			FSub Td.e.10629 cws.4176
																																																			Let Td.e.10630
																																																				FLi 255.000000
																																																				Let Td1070.4180
																																																					FMul Td1068.4181 Td.e.10630
																																																					Ans
																																																						Stfd Td1070.4180 Ta1065.4178 8
																							Let Ti1071.4098
																								Li 4
																								Ans
																									IfEq m_tex.6119.8380 Ti1071.4098
																										Let Td1073.4169
																											Lfd p.2986 0
																											Let m_xyz.6021.8287
																												Lwz m.2985 20
																												Let Td1074.4170
																													Lfd m_xyz.6021.8287 0
																													Let Td1075.4166
																														FSub Td1073.4169 Td1074.4170
																														Let m_abc.6067.8274
																															Lwz m.2985 16
																															Let Td1076.4168
																																Lfd m_abc.6067.8274 0
																																Let Td1077.4167
																																	CallDir min_caml_sqrt d:f:Td1076.4168 
																																	Let w1.4099
																																		FMul Td1075.4166 Td1077.4167
																																		Let Td1079.4163
																																			Lfd p.2986 8
																																			Let m_xyz.5997.8263
																																				Lwz m.2985 20
																																				Let Td1080.4164
																																					Lfd m_xyz.5997.8263 8
																																					Let Td1081.4160
																																						FSub Td1079.4163 Td1080.4164
																																						Let m_abc.6043.8250
																																							Lwz m.2985 16
																																							Let Td1082.4162
																																								Lfd m_abc.6043.8250 8
																																								Let Td1083.4161
																																									CallDir min_caml_sqrt d:f:Td1082.4162 
																																									Let w3.4100
																																										FMul Td1081.4160 Td1083.4161
																																										Let Td1084.4158
																																											FMul w1.4099 w1.4099
																																											Let Td1085.4159
																																												FMul w3.4100 w3.4100
																																												Let w4.4101
																																													FAdd Td1084.4158 Td1085.4159
																																													Let Td2634.6379.8245
																																														FLi 0.000000
																																														Let Td1086.4156
																																															IfFLE Td2634.6379.8245 w1.4099
																																																Ans
																																																	FMr w1.4099
																																																Ans
																																																	FNeg w1.4099
																																															Let Td.e.10619
																																																FLi 0.000100
																																																Let z.6378.8244
																																																	FSub Td1086.4156 Td.e.10619
																																																	Let Td2637.6382.12279
																																																		FLi 0.000000
																																																		Let Tb1088.4146
																																																			IfFLE Td2637.6382.12279 z.6378.8244
																																																				Ans
																																																					Li 0
																																																				Ans
																																																					Li 1
																																																			Let Ti1089.4147
																																																				Li 0
																																																				Let w7.4102
																																																					IfEq Tb1088.4146 Ti1089.4147
																																																						Let Td1090.4155
																																																							FReciprocal w1.4099
																																																							Let Td1091.4154
																																																								FMul w3.4100 Td1090.4155
																																																								Let Td2634.6379.8243
																																																									FLi 0.000000
																																																									Let w5.4148
																																																										IfFLE Td2634.6379.8243 Td1091.4154
																																																											Ans
																																																												FMr Td1091.4154
																																																											Ans
																																																												FNeg Td1091.4154
																																																										Let Td1092.4152
																																																											CallDir min_caml_atan d:f:w5.4148 
																																																											Let Td.e.10620
																																																												FLi 30.000000
																																																												Let Td1094.4149
																																																													FMul Td1092.4152 Td.e.10620
																																																													Let Td1095.4150
																																																														FLi 3.141593
																																																														Let Td1096.4151
																																																															FReciprocal Td1095.4150
																																																															Ans
																																																																FMul Td1094.4149 Td1096.4151
																																																						Ans
																																																							FLi 15.000000
																																																					Let Td1097.4145
																																																						CallDir min_caml_floor d:f:w7.4102 
																																																						Let w9.4103
																																																							FSub w7.4102 Td1097.4145
																																																							Let Td1099.4142
																																																								Lfd p.2986 4
																																																								Let m_xyz.6009.8236
																																																									Lwz m.2985 20
																																																									Let Td1100.4143
																																																										Lfd m_xyz.6009.8236 4
																																																										Let Td1101.4139
																																																											FSub Td1099.4142 Td1100.4143
																																																											Let m_abc.6055.8223
																																																												Lwz m.2985 16
																																																												Let Td1102.4141
																																																													Lfd m_abc.6055.8223 4
																																																													Let Td1103.4140
																																																														CallDir min_caml_sqrt d:f:Td1102.4141 
																																																														Let w2.4104
																																																															FMul Td1101.4139 Td1103.4140
																																																															Let Td2634.6379.8218
																																																																FLi 0.000000
																																																																Let Td1104.4137
																																																																	IfFLE Td2634.6379.8218 w4.4101
																																																																		Ans
																																																																			FMr w4.4101
																																																																		Ans
																																																																			FNeg w4.4101
																																																																	Let Td.e.10621
																																																																		FLi 0.000100
																																																																		Let z.6378.8217
																																																																			FSub Td1104.4137 Td.e.10621
																																																																			Let Td2637.6382.12278
																																																																				FLi 0.000000
																																																																				Let Tb1106.4127
																																																																					IfFLE Td2637.6382.12278 z.6378.8217
																																																																						Ans
																																																																							Li 0
																																																																						Ans
																																																																							Li 1
																																																																					Let Ti1107.4128
																																																																						Li 0
																																																																						Let w8.4105
																																																																							IfEq Tb1106.4127 Ti1107.4128
																																																																								Let Td1108.4136
																																																																									FReciprocal w4.4101
																																																																									Let Td1109.4135
																																																																										FMul w2.4104 Td1108.4136
																																																																										Let Td2634.6379.8216
																																																																											FLi 0.000000
																																																																											Let w6.4129
																																																																												IfFLE Td2634.6379.8216 Td1109.4135
																																																																													Ans
																																																																														FMr Td1109.4135
																																																																													Ans
																																																																														FNeg Td1109.4135
																																																																												Let Td1110.4133
																																																																													CallDir min_caml_atan d:f:w6.4129 
																																																																													Let Td.e.10622
																																																																														FLi 30.000000
																																																																														Let Td1112.4130
																																																																															FMul Td1110.4133 Td.e.10622
																																																																															Let Td1113.4131
																																																																																FLi 3.141593
																																																																																Let Td1114.4132
																																																																																	FReciprocal Td1113.4131
																																																																																	Ans
																																																																																		FMul Td1112.4130 Td1114.4132
																																																																								Ans
																																																																									FLi 15.000000
																																																																							Let Td1115.4126
																																																																								CallDir min_caml_floor d:f:w8.4105 
																																																																								Let w10.4106
																																																																									FSub w8.4105 Td1115.4126
																																																																									Let Td.e.10623
																																																																										FLi 0.500000
																																																																										Let Td1118.4124
																																																																											FSub Td.e.10623 w9.4103
																																																																											Let Td1119.4123
																																																																												FMul Td1118.4124 Td1118.4124
																																																																												Let Td.e.10624
																																																																													FLi 0.150000
																																																																													Let Td1120.4118
																																																																														FSub Td.e.10624 Td1119.4123
																																																																														Let Td.e.10625
																																																																															FLi 0.500000
																																																																															Let Td1122.4120
																																																																																FSub Td.e.10625 w10.4106
																																																																																Let Td1123.4119
																																																																																	FMul Td1122.4120 Td1122.4120
																																																																																	Let w11.4107
																																																																																		FSub Td1120.4118 Td1123.4119
																																																																																		Let Td2637.6382.8215
																																																																																			FLi 0.000000
																																																																																			Let Tb1124.4116
																																																																																				IfFLE Td2637.6382.8215 w11.4107
																																																																																					Ans
																																																																																						Li 0
																																																																																					Ans
																																																																																						Li 1
																																																																																				Let Ti1125.4117
																																																																																					Li 0
																																																																																					Let w12.4108
																																																																																						IfEq Tb1124.4116 Ti1125.4117
																																																																																							Ans
																																																																																								FMr w11.4107
																																																																																							Ans
																																																																																								FLi 0.000000
																																																																																						Let Ta1126.4109
																																																																																							SetExt 580
																																																																																							Let Td.e.10626
																																																																																								FLi 255.000000
																																																																																								Let Td1129.4112
																																																																																									FMul Td.e.10626 w12.4108
																																																																																									Let Td1130.4113
																																																																																										FLi 0.300000
																																																																																										Let Td1131.4114
																																																																																											FReciprocal Td1130.4113
																																																																																											Let Td1132.4111
																																																																																												FMul Td1129.4112 Td1131.4114
																																																																																												Ans
																																																																																													Stfd Td1132.4111 Ta1126.4109 8
																										Ans
																											Nop
add_light.2987 (args) : (fargs) : bright.2988 hilight.2989 hilight_scale.2990 
	Let Td2638.6383.8214
		FLi 0.000000
		Let Tb968.4087
			IfFLE bright.2988 Td2638.6383.8214
				Ans
					Li 0
				Ans
					Li 1
			Let Ti969.4088
				Li 0
				Let Tu137.4061
					IfEq Tb968.4087 Ti969.4088
						Ans
							Nop
						Let Ta970.4089
							SetExt 604
							Let Ta971.4090
								SetExt 580
								Let Td2487.6231.8193
									Lfd Ta970.4089 0
									Let Td2489.6233.8195
										Lfd Ta971.4090 0
										Let Td2490.6232.8196
											FMul bright.2988 Td2489.6233.8195
											Let Td2491.6230.8197
												FAdd Td2487.6231.8193 Td2490.6232.8196
												Let Tu12.6213.8198
													Stfd Td2491.6230.8197 Ta970.4089 0
													Let Td2494.6224.8201
														Lfd Ta970.4089 4
														Let Td2496.6226.8203
															Lfd Ta971.4090 4
															Let Td2497.6225.8204
																FMul bright.2988 Td2496.6226.8203
																Let Td2498.6223.8205
																	FAdd Td2494.6224.8201 Td2497.6225.8204
																	Let Tu11.6214.8206
																		Stfd Td2498.6223.8205 Ta970.4089 4
																		Let Td2501.6217.8209
																			Lfd Ta970.4089 8
																			Let Td2503.6219.8211
																				Lfd Ta971.4090 8
																				Let Td2504.6218.8212
																					FMul bright.2988 Td2503.6219.8211
																					Let Td2505.6216.8213
																						FAdd Td2501.6217.8209 Td2504.6218.8212
																						Ans
																							Stfd Td2505.6216.8213 Ta970.4089 8
					Let Td2638.6383.8190
						FLi 0.000000
						Let Tb972.4062
							IfFLE hilight.2989 Td2638.6383.8190
								Ans
									Li 0
								Ans
									Li 1
							Let Ti973.4063
								Li 0
								Ans
									IfEq Tb972.4062 Ti973.4063
										Ans
											Nop
										Let Td974.4086
											FMul hilight.2989 hilight.2989
											Let Td975.4085
												FMul Td974.4086 Td974.4086
												Let ihl.4064
													FMul Td975.4085 hilight_scale.2990
													Let Ta976.4079
														SetExt 604
														Let Ta978.4083
															SetExt 604
															Let Td980.4082
																Lfd Ta978.4083 0
																Let Td981.4081
																	FAdd Td980.4082 ihl.4064
																	Let Tu136.4065
																		Stfd Td981.4081 Ta976.4079 0
																		Let Ta982.4073
																			SetExt 604
																			Let Ta984.4077
																				SetExt 604
																				Let Td986.4076
																					Lfd Ta984.4077 4
																					Let Td987.4075
																						FAdd Td986.4076 ihl.4064
																						Let Tu135.4066
																							Stfd Td987.4075 Ta982.4073 4
																							Let Ta988.4067
																								SetExt 604
																								Let Ta990.4071
																									SetExt 604
																									Let Td992.4070
																										Lfd Ta990.4071 8
																										Let Td993.4069
																											FAdd Td992.4070 ihl.4064
																											Ans
																												Stfd Td993.4069 Ta988.4067 8
trace_reflections.2991 (args) : index.2992 dirvec.2995 (fargs) : diffuse.2993 hilight_scale.2994 
	Let Ti943.4028
		Li 0
		Ans
			IfLE Ti943.4028 index.2992
				Let Ta944.4060
					SetExt 1016
					Let o.15042
						Slw index.2992 2
						Let rinfo.4029
							Lwz Ta944.4060 o.15042
							Let m_dvec.5802.8188
								Lwz rinfo.4029 4
								Let Ta1210.4366.8171
									SetExt 548
									Let Td1212.4368.8173
										FLi 1000000000.000000
										Let Tu121.4353.8174
											Stfd Td1212.4368.8173 Ta1210.4366.8171 0
											Let Ti1213.4362.8175
												Li 0
												Let Ta1214.4364.8176
													SetExt 536
													Let Ta1216.4363.8178
														Lwz Ta1214.4364.8176 0
														Let Tu120.4354.8179
															CallDir trace_or_matrix_fast.2969 d:Ti1213.4362.8175 Ta1216.4363.8178 m_dvec.5802.8188 f:
															Let Ta1217.4360.8180
																SetExt 548
																Let t.4355.8182
																	Lfd Ta1217.4360.8180 0
																	Let Td.e.13819
																		FLi -0.100000
																		Let z.6378.12276
																			FSub Td.e.13819 t.4355.8182
																			Let Td2637.6382.10492.12277
																				FLi 0.000000
																				Let Tb1220.4356.8184
																					IfFLE Td2637.6382.10492.12277 z.6378.12276
																						Ans
																							Li 0
																						Ans
																							Li 1
																					Let Ti1221.4357.8185
																						Li 0
																						Let Tb945.4034
																							IfEq Tb1220.4356.8184 Ti1221.4357.8185
																								Ans
																									Li 0
																								Let Td.e.13820
																									FLi 100000000.000000
																									Let z.6378.12274
																										FSub t.4355.8182 Td.e.13820
																										Let Td2637.6382.10492.12275
																											FLi 0.000000
																											Ans
																												IfFLE Td2637.6382.10492.12275 z.6378.12274
																													Ans
																														Li 0
																													Ans
																														Li 1
																							Let Ti946.4035
																								Li 0
																								Let Tu138.4031
																									IfEq Tb945.4034 Ti946.4035
																										Ans
																											Nop
																										Let Ta947.4058
																											SetExt 564
																											Let Ti949.4057
																												Lwz Ta947.4058 0
																												Let Ti950.4053
																													ShiftL2 Ti949.4057
																													Let Ta951.4055
																														SetExt 544
																														Let Ti953.4054
																															Lwz Ta951.4055 0
																															Let surface_id.4036
																																Add Ti950.4053 Ti953.4054
																																Let m_sid.5804.8168
																																	Lwz rinfo.4029 0
																																	Ans
																																		IfEq surface_id.4036 m_sid.5804.8168
																																			Let Ti955.4049
																																				Li 0
																																				Let Ta956.4051
																																					SetExt 536
																																					Let Ta958.4050
																																						Lwz Ta956.4051 0
																																						Let Tb959.4038
																																							CallDir shadow_check_one_or_matrix.2944 d:Ti955.4049 Ta958.4050 f:
																																							Let Ti960.4039
																																								Li 0
																																								Ans
																																									IfEq Tb959.4038 Ti960.4039
																																										Let Ta961.4047
																																											SetExt 568
																																											Let m_vec.5809.8166
																																												Lwz m_dvec.5802.8188 0
																																												Let Td2517.6258.8151
																																													Lfd Ta961.4047 0
																																													Let Td2519.6259.8153
																																														Lfd m_vec.5809.8166 0
																																														Let Td2520.6252.8154
																																															FMul Td2517.6258.8151 Td2519.6259.8153
																																															Let Td2522.6254.8156
																																																Lfd Ta961.4047 4
																																																Let Td2524.6255.8158
																																																	Lfd m_vec.5809.8166 4
																																																	Let Td2525.6253.8159
																																																		FMul Td2522.6254.8156 Td2524.6255.8158
																																																		Let Td2526.6246.8160
																																																			FAdd Td2520.6252.8154 Td2525.6253.8159
																																																			Let Td2528.6248.8162
																																																				Lfd Ta961.4047 8
																																																				Let Td2530.6249.8164
																																																					Lfd m_vec.5809.8166 8
																																																					Let Td2531.6247.8165
																																																						FMul Td2528.6248.8162 Td2530.6249.8164
																																																						Let p.4040
																																																							FAdd Td2526.6246.8160 Td2531.6247.8165
																																																							Let m_br.5800.8149
																																																								Lfd rinfo.4029 8
																																																								Let Td963.4046
																																																									FMul m_br.5800.8149 diffuse.2993
																																																									Let bright.4042
																																																										FMul Td963.4046 p.4040
																																																										Let m_vec.5809.8145
																																																											Lwz m_dvec.5802.8188 0
																																																											Let Td2517.6258.8130
																																																												Lfd dirvec.2995 0
																																																												Let Td2519.6259.8132
																																																													Lfd m_vec.5809.8145 0
																																																													Let Td2520.6252.8133
																																																														FMul Td2517.6258.8130 Td2519.6259.8132
																																																														Let Td2522.6254.8135
																																																															Lfd dirvec.2995 4
																																																															Let Td2524.6255.8137
																																																																Lfd m_vec.5809.8145 4
																																																																Let Td2525.6253.8138
																																																																	FMul Td2522.6254.8135 Td2524.6255.8137
																																																																	Let Td2526.6246.8139
																																																																		FAdd Td2520.6252.8133 Td2525.6253.8138
																																																																		Let Td2528.6248.8141
																																																																			Lfd dirvec.2995 8
																																																																			Let Td2530.6249.8143
																																																																				Lfd m_vec.5809.8145 8
																																																																				Let Td2531.6247.8144
																																																																					FMul Td2528.6248.8141 Td2530.6249.8143
																																																																					Let Td965.4044
																																																																						FAdd Td2526.6246.8139 Td2531.6247.8144
																																																																						Let hilight.4043
																																																																							FMul m_br.5800.8149 Td965.4044
																																																																							Ans
																																																																								CallDir add_light.2987 d:f:bright.4042 hilight.4043 hilight_scale.2994 
																																										Ans
																																											Nop
																																			Ans
																																				Nop
																									Let Ti967.4032
																										Sub index.2992 1
																										Ans
																											CallDir trace_reflections.2991 d:Ti967.4032 dirvec.2995 f:diffuse.2993 hilight_scale.2994 
				Ans
					Nop
trace_ray.2996 (args) : nref.2997 dirvec.2999 pixel.3000 (fargs) : energy.2998 dist.3001 
	Let Ti838.3890
		Li 4
		Ans
			IfLE nref.2997 Ti838.3890
				Let m_sids.5863.8123
					Lwz pixel.3000 8
					Let Ta1295.4474.8105
						SetExt 548
						Let Td1297.4476.8107
							FLi 1000000000.000000
							Let Tu113.4461.8108
								Stfd Td1297.4476.8107 Ta1295.4474.8105 0
								Let Ti1298.4470.8109
									Li 0
									Let Ta1299.4472.8110
										SetExt 536
										Let Ta1301.4471.8112
											Lwz Ta1299.4472.8110 0
											Let Tu112.4462.8113
												CallDir trace_or_matrix.2955 d:Ti1298.4470.8109 Ta1301.4471.8112 dirvec.2999 f:
												Let Ta1302.4468.8114
													SetExt 548
													Let t.4463.8116
														Lfd Ta1302.4468.8114 0
														Let Td.e.13817
															FLi -0.100000
															Let z.6378.12272
																FSub Td.e.13817 t.4463.8116
																Let Td2637.6382.10492.12273
																	FLi 0.000000
																	Let Tb1305.4464.8118
																		IfFLE Td2637.6382.10492.12273 z.6378.12272
																			Ans
																				Li 0
																			Ans
																				Li 1
																		Let Ti1306.4465.8119
																			Li 0
																			Let Tb839.3892
																				IfEq Tb1305.4464.8118 Ti1306.4465.8119
																					Ans
																						Li 0
																					Let Td.e.13818
																						FLi 100000000.000000
																						Let z.6378.12270
																							FSub t.4463.8116 Td.e.13818
																							Let Td2637.6382.10492.12271
																								FLi 0.000000
																								Ans
																									IfFLE Td2637.6382.10492.12271 z.6378.12270
																										Ans
																											Li 0
																										Ans
																											Li 1
																				Let Ti840.3893
																					Li 0
																					Ans
																						IfEq Tb839.3892 Ti840.3893
																							Let Ti842.4026
																								Li -1
																								Let o.15158
																									Slw nref.2997 2
																									Let Tu155.3992
																										Stw Ti842.4026 m_sids.5863.8123 o.15158
																										Let Ti843.3993
																											Li 0
																											Ans
																												IfEq nref.2997 Ti843.3993
																													Ans
																														Nop
																													Let Ta844.4025
																														SetExt 312
																														Let Td2517.6258.8090
																															Lfd dirvec.2999 0
																															Let Td2519.6259.8092
																																Lfd Ta844.4025 0
																																Let Td2520.6252.8093
																																	FMul Td2517.6258.8090 Td2519.6259.8092
																																	Let Td2522.6254.8095
																																		Lfd dirvec.2999 4
																																		Let Td2524.6255.8097
																																			Lfd Ta844.4025 4
																																			Let Td2525.6253.8098
																																				FMul Td2522.6254.8095 Td2524.6255.8097
																																				Let Td2526.6246.8099
																																					FAdd Td2520.6252.8093 Td2525.6253.8098
																																					Let Td2528.6248.8101
																																						Lfd dirvec.2999 8
																																						Let Td2530.6249.8103
																																							Lfd Ta844.4025 8
																																							Let Td2531.6247.8104
																																								FMul Td2528.6248.8101 Td2530.6249.8103
																																								Let Td845.4024
																																									FAdd Td2526.6246.8099 Td2531.6247.8104
																																									Let hl.3994
																																										FNeg Td845.4024
																																										Let Td2638.6383.8088
																																											FLi 0.000000
																																											Let Tb846.3995
																																												IfFLE hl.3994 Td2638.6383.8088
																																													Ans
																																														Li 0
																																													Ans
																																														Li 1
																																												Let Ti847.3996
																																													Li 0
																																													Ans
																																														IfEq Tb846.3995 Ti847.3996
																																															Ans
																																																Nop
																																															Let Td848.4023
																																																FMul hl.3994 hl.3994
																																																Let Td849.4022
																																																	FMul Td848.4023 hl.3994
																																																	Let Td850.4018
																																																		FMul Td849.4022 energy.2998
																																																		Let Ta851.4020
																																																			SetExt 324
																																																			Let Td853.4019
																																																				Lfd Ta851.4020 0
																																																				Let ihl.3997
																																																					FMul Td850.4018 Td853.4019
																																																					Let Ta854.4012
																																																						SetExt 604
																																																						Let Ta856.4016
																																																							SetExt 604
																																																							Let Td858.4015
																																																								Lfd Ta856.4016 0
																																																								Let Td859.4014
																																																									FAdd Td858.4015 ihl.3997
																																																									Let Tu154.3998
																																																										Stfd Td859.4014 Ta854.4012 0
																																																										Let Ta860.4006
																																																											SetExt 604
																																																											Let Ta862.4010
																																																												SetExt 604
																																																												Let Td864.4009
																																																													Lfd Ta862.4010 4
																																																													Let Td865.4008
																																																														FAdd Td864.4009 ihl.3997
																																																														Let Tu153.3999
																																																															Stfd Td865.4008 Ta860.4006 4
																																																															Let Ta866.4000
																																																																SetExt 604
																																																																Let Ta868.4004
																																																																	SetExt 604
																																																																	Let Td870.4003
																																																																		Lfd Ta868.4004 8
																																																																		Let Td871.4002
																																																																			FAdd Td870.4003 ihl.3997
																																																																			Ans
																																																																				Stfd Td871.4002 Ta866.4000 8
																							Let Ta872.3990
																								SetExt 564
																								Let obj_id.3894
																									Lwz Ta872.3990 0
																									Let Ta874.3989
																										SetExt 48
																										Let o.15065
																											Slw obj_id.3894 2
																											Let obj.3895
																												Lwz Ta874.3989 o.15065
																												Let m_surface.6099.8079
																													Lwz obj.3895 8
																													Let m_surfparams.5987.8072
																														Lwz obj.3895 28
																														Let Td875.3988
																															Lfd m_surfparams.5987.8072 0
																															Let diffuse.3897
																																FMul Td875.3988 energy.2998
																																Let m_shape.6109.12260
																																	Lwz obj.3895 4
																																	Let Ti1133.4261.8063
																																		Li 1
																																		Let Tu152.3898
																																			IfEq m_shape.6109.12260 Ti1133.4261.8063
																																				Let Ta1199.4351.12241
																																					SetExt 544
																																					Let rectside.4340.12243
																																						Lwz Ta1199.4351.12241 0
																																						Let Ta1201.4350.12244
																																							SetExt 568
																																							Let Td2616.6355.8638.12245
																																								FLi 0.000000
																																								Let Tu4.6356.14402
																																									Stfd Td2616.6355.8638.12245 Ta1201.4350.12244 0
																																									Let Tu3.6357.14404
																																										Stfd Td2616.6355.8638.12245 Ta1201.4350.12244 4
																																										Let Tu122.4341.12246
																																											Stfd Td2616.6355.8638.12245 Ta1201.4350.12244 8
																																											Let Ta1202.4342.12247
																																												SetExt 568
																																												Let Ti1204.4343.12249
																																													Sub rectside.4340.12243 1
																																													Let Ti1206.4347.12251
																																														Sub rectside.4340.12243 1
																																														Let o.15077
																																															Slw Ti1206.4347.12251 2
																																															Let Td1207.4346.12252
																																																Lfd dirvec.2999 o.15077
																																																Let Td2636.6381.14400
																																																	FLi 0.000000
																																																	Let Tb2626.6370.8634.12253
																																																		IfFEq Td1207.4346.12252 Td2636.6381.14400
																																																			Ans
																																																				Li 1
																																																			Ans
																																																				Li 0
																																																		Let Ti2627.6371.8635.12254
																																																			Li 0
																																																			Let Td1208.4345.12255
																																																				IfEq Tb2626.6370.8634.12253 Ti2627.6371.8635.12254
																																																					Let Td2638.6383.14399
																																																						FLi 0.000000
																																																						Let Tb2628.6372.8636.12257
																																																							IfFLE Td1207.4346.12252 Td2638.6383.14399
																																																								Ans
																																																									Li 0
																																																								Ans
																																																									Li 1
																																																							Let Ti2629.6373.8637.12258
																																																								Li 0
																																																								Ans
																																																									IfEq Tb2628.6372.8636.12257 Ti2629.6373.8637.12258
																																																										Ans
																																																											FLi -1.000000
																																																										Ans
																																																											FLi 1.000000
																																																					Ans
																																																						FLi 0.000000
																																																				Let Td1209.4344.12256
																																																					FNeg Td1208.4345.12255
																																																					Let o.15078
																																																						Slw Ti1204.4343.12249 2
																																																						Ans
																																																							Stfd Td1209.4344.12256 Ta1202.4342.12247 o.15078
																																				Let Ti1134.4262.8064
																																					Li 2
																																					Ans
																																						IfEq m_shape.6109.12260 Ti1134.4262.8064
																																							Let Ta1187.4336.12191
																																								SetExt 568
																																								Let m_abc.6067.8626.12197
																																									Lwz obj.3895 16
																																									Let Td1189.4339.12205
																																										Lfd m_abc.6067.8626.12197 0
																																										Let Td1190.4338.12206
																																											FNeg Td1189.4339.12205
																																											Let Tu124.4326.12207
																																												Stfd Td1190.4338.12206 Ta1187.4336.12191 0
																																												Let Ta1191.4332.12208
																																													SetExt 568
																																													Let m_abc.6055.8614.12214
																																														Lwz obj.3895 16
																																														Let Td1193.4335.12222
																																															Lfd m_abc.6055.8614.12214 4
																																															Let Td1194.4334.12223
																																																FNeg Td1193.4335.12222
																																																Let Tu123.4327.12224
																																																	Stfd Td1194.4334.12223 Ta1191.4332.12208 4
																																																	Let Ta1195.4328.12225
																																																		SetExt 568
																																																		Let m_abc.6043.8602.12231
																																																			Lwz obj.3895 16
																																																			Let Td1197.4331.12239
																																																				Lfd m_abc.6043.8602.12231 8
																																																				Let Td1198.4330.12240
																																																					FNeg Td1197.4331.12239
																																																					Ans
																																																						Stfd Td1198.4330.12240 Ta1195.4328.12225 8
																																							Ans
																																								CallDir get_nvector_second.2979 d:obj.3895 f:
																																			Let Ta876.3986
																																				SetExt 636
																																				Let Ta877.3987
																																					SetExt 552
																																					Let Td2609.6353.8053
																																						Lfd Ta877.3987 0
																																						Let Tu6.6344.8054
																																							Stfd Td2609.6353.8053 Ta876.3986 0
																																							Let Td2612.6350.8057
																																								Lfd Ta877.3987 4
																																								Let Tu5.6345.8058
																																									Stfd Td2612.6350.8057 Ta876.3986 4
																																									Let Td2615.6347.8061
																																										Lfd Ta877.3987 8
																																										Let Tu151.3899
																																											Stfd Td2615.6347.8061 Ta876.3986 8
																																											Let Ta878.3985
																																												SetExt 552
																																												Let Tu150.3900
																																													CallDir utexture.2984 d:obj.3895 Ta878.3985 f:
																																													Let Ti879.3981
																																														ShiftL2 obj_id.3894
																																														Let Ta880.3983
																																															SetExt 544
																																															Let Ti882.3982
																																																Lwz Ta880.3983 0
																																																Let Ti883.3980
																																																	Add Ti879.3981 Ti882.3982
																																																	Let o.15086
																																																		Slw nref.2997 2
																																																		Let Tu149.3901
																																																			Stw Ti883.3980 m_sids.5863.8123 o.15086
																																																			Let m_isect_ps.5870.8044
																																																				Lwz pixel.3000 4
																																																				Let o.15087
																																																					Slw nref.2997 2
																																																					Let Ta884.3978
																																																						Lwz m_isect_ps.5870.8044 o.15087
																																																						Let Ta885.3979
																																																							SetExt 552
																																																							Let Td2609.6353.8034
																																																								Lfd Ta885.3979 0
																																																								Let Tu6.6344.8035
																																																									Stfd Td2609.6353.8034 Ta884.3978 0
																																																									Let Td2612.6350.8038
																																																										Lfd Ta885.3979 4
																																																										Let Tu5.6345.8039
																																																											Stfd Td2612.6350.8038 Ta884.3978 4
																																																											Let Td2615.6347.8042
																																																												Lfd Ta885.3979 8
																																																												Let Tu148.3903
																																																													Stfd Td2615.6347.8042 Ta884.3978 8
																																																													Let m_cdif.5856.8027
																																																														Lwz pixel.3000 12
																																																														Let m_surfparams.5987.8019
																																																															Lwz obj.3895 28
																																																															Let Td886.3976
																																																																Lfd m_surfparams.5987.8019 0
																																																																Let Td.e.10609
																																																																	FLi 0.500000
																																																																	Let z.6378.8011
																																																																		FSub Td886.3976 Td.e.10609
																																																																		Let Td2637.6382.12190
																																																																			FLi 0.000000
																																																																			Let Tb888.3957
																																																																				IfFLE Td2637.6382.12190 z.6378.8011
																																																																					Ans
																																																																						Li 0
																																																																					Ans
																																																																						Li 1
																																																																				Let Ti889.3958
																																																																					Li 0
																																																																					Let Tu147.3905
																																																																						IfEq Tb888.3957 Ti889.3958
																																																																							Let Ti890.3975
																																																																								Li 1
																																																																								Let o.15096
																																																																									Slw nref.2997 2
																																																																									Let Tu141.3960
																																																																										Stw Ti890.3975 m_cdif.5856.8027 o.15096
																																																																										Let m_engy.5849.8007
																																																																											Lwz pixel.3000 16
																																																																											Let o.15097
																																																																												Slw nref.2997 2
																																																																												Let Ta891.3973
																																																																													Lwz m_engy.5849.8007 o.15097
																																																																													Let Ta892.3974
																																																																														SetExt 580
																																																																														Let Td2609.6353.7994
																																																																															Lfd Ta892.3974 0
																																																																															Let Tu6.6344.7995
																																																																																Stfd Td2609.6353.7994 Ta891.3973 0
																																																																																Let Td2612.6350.7998
																																																																																	Lfd Ta892.3974 4
																																																																																	Let Tu5.6345.7999
																																																																																		Stfd Td2612.6350.7998 Ta891.3973 4
																																																																																		Let Td2615.6347.8002
																																																																																			Lfd Ta892.3974 8
																																																																																			Let Tu140.3962
																																																																																				Stfd Td2615.6347.8002 Ta891.3973 8
																																																																																				Let o.15104
																																																																																					Slw nref.2997 2
																																																																																					Let Ta893.3967
																																																																																						Lwz m_engy.5849.8007 o.15104
																																																																																						Let Td895.3971
																																																																																							FLi 256.000000
																																																																																							Let Td896.3972
																																																																																								FReciprocal Td895.3971
																																																																																								Let Td.e.10610
																																																																																									FLi 1.000000
																																																																																									Let Td897.3969
																																																																																										FMul Td.e.10610 Td896.3972
																																																																																										Let Td898.3968
																																																																																											FMul Td897.3969 diffuse.3897
																																																																																											Let Td2439.6171.7980
																																																																																												Lfd Ta893.3967 0
																																																																																												Let Td2440.6170.7981
																																																																																													FMul Td2439.6171.7980 Td898.3968
																																																																																													Let Tu18.6159.7982
																																																																																														Stfd Td2440.6170.7981 Ta893.3967 0
																																																																																														Let Td2443.6167.7985
																																																																																															Lfd Ta893.3967 4
																																																																																															Let Td2444.6166.7986
																																																																																																FMul Td2443.6167.7985 Td898.3968
																																																																																																Let Tu17.6160.7987
																																																																																																	Stfd Td2444.6166.7986 Ta893.3967 4
																																																																																																	Let Td2447.6163.7990
																																																																																																		Lfd Ta893.3967 8
																																																																																																		Let Td2448.6162.7991
																																																																																																			FMul Td2447.6163.7990 Td898.3968
																																																																																																			Let Tu139.3963
																																																																																																				Stfd Td2448.6162.7991 Ta893.3967 8
																																																																																																				Let m_nvectors.5818.7977
																																																																																																					Lwz pixel.3000 28
																																																																																																					Let o.15111
																																																																																																						Slw nref.2997 2
																																																																																																						Let Ta899.3965
																																																																																																							Lwz m_nvectors.5818.7977 o.15111
																																																																																																							Let Ta900.3966
																																																																																																								SetExt 568
																																																																																																								Let Td2609.6353.7961
																																																																																																									Lfd Ta900.3966 0
																																																																																																									Let Tu6.6344.7962
																																																																																																										Stfd Td2609.6353.7961 Ta899.3965 0
																																																																																																										Let Td2612.6350.7965
																																																																																																											Lfd Ta900.3966 4
																																																																																																											Let Tu5.6345.7966
																																																																																																												Stfd Td2612.6350.7965 Ta899.3965 4
																																																																																																												Let Td2615.6347.7969
																																																																																																													Lfd Ta900.3966 8
																																																																																																													Ans
																																																																																																														Stfd Td2615.6347.7969 Ta899.3965 8
																																																																							Let Ti901.3959
																																																																								Li 0
																																																																								Let o.15095
																																																																									Slw nref.2997 2
																																																																									Ans
																																																																										Stw Ti901.3959 m_cdif.5856.8027 o.15095
																																																																						Let Ta903.3956
																																																																							SetExt 568
																																																																							Let Td2517.6258.7944
																																																																								Lfd dirvec.2999 0
																																																																								Let Td2519.6259.7946
																																																																									Lfd Ta903.3956 0
																																																																									Let Td2520.6252.7947
																																																																										FMul Td2517.6258.7944 Td2519.6259.7946
																																																																										Let Td2522.6254.7949
																																																																											Lfd dirvec.2999 4
																																																																											Let Td2524.6255.7951
																																																																												Lfd Ta903.3956 4
																																																																												Let Td2525.6253.7952
																																																																													FMul Td2522.6254.7949 Td2524.6255.7951
																																																																													Let Td2526.6246.7953
																																																																														FAdd Td2520.6252.7947 Td2525.6253.7952
																																																																														Let Td2528.6248.7955
																																																																															Lfd dirvec.2999 8
																																																																															Let Td2530.6249.7957
																																																																																Lfd Ta903.3956 8
																																																																																Let Td2531.6247.7958
																																																																																	FMul Td2528.6248.7955 Td2530.6249.7957
																																																																																	Let Td904.3955
																																																																																		FAdd Td2526.6246.7953 Td2531.6247.7958
																																																																																		Let Td.e.10611
																																																																																			FLi -2.000000
																																																																																			Let w.3906
																																																																																				FMul Td.e.10611 Td904.3955
																																																																																				Let Ta905.3953
																																																																																					SetExt 568
																																																																																					Let Td2487.6231.7922
																																																																																						Lfd dirvec.2999 0
																																																																																						Let Td2489.6233.7924
																																																																																							Lfd Ta905.3953 0
																																																																																							Let Td2490.6232.7925
																																																																																								FMul w.3906 Td2489.6233.7924
																																																																																								Let Td2491.6230.7926
																																																																																									FAdd Td2487.6231.7922 Td2490.6232.7925
																																																																																									Let Tu12.6213.7927
																																																																																										Stfd Td2491.6230.7926 dirvec.2999 0
																																																																																										Let Td2494.6224.7930
																																																																																											Lfd dirvec.2999 4
																																																																																											Let Td2496.6226.7932
																																																																																												Lfd Ta905.3953 4
																																																																																												Let Td2497.6225.7933
																																																																																													FMul w.3906 Td2496.6226.7932
																																																																																													Let Td2498.6223.7934
																																																																																														FAdd Td2494.6224.7930 Td2497.6225.7933
																																																																																														Let Tu11.6214.7935
																																																																																															Stfd Td2498.6223.7934 dirvec.2999 4
																																																																																															Let Td2501.6217.7938
																																																																																																Lfd dirvec.2999 8
																																																																																																Let Td2503.6219.7940
																																																																																																	Lfd Ta905.3953 8
																																																																																																	Let Td2504.6218.7941
																																																																																																		FMul w.3906 Td2503.6219.7940
																																																																																																		Let Td2505.6216.7942
																																																																																																			FAdd Td2501.6217.7938 Td2504.6218.7941
																																																																																																			Let Tu146.3907
																																																																																																				Stfd Td2505.6216.7942 dirvec.2999 8
																																																																																																				Let m_surfparams.5975.7915
																																																																																																					Lwz obj.3895 28
																																																																																																					Let Td906.3952
																																																																																																						Lfd m_surfparams.5975.7915 4
																																																																																																						Let hilight_scale.3908
																																																																																																							FMul energy.2998 Td906.3952
																																																																																																							Let Ti907.3948
																																																																																																								Li 0
																																																																																																								Let Ta908.3950
																																																																																																									SetExt 536
																																																																																																									Let Ta910.3949
																																																																																																										Lwz Ta908.3950 0
																																																																																																										Let Tb911.3938
																																																																																																											CallDir shadow_check_one_or_matrix.2944 d:Ti907.3948 Ta910.3949 f:
																																																																																																											Let Ti912.3939
																																																																																																												Li 0
																																																																																																												Let Tu145.3909
																																																																																																													IfEq Tb911.3938 Ti912.3939
																																																																																																														Let Ta913.3946
																																																																																																															SetExt 568
																																																																																																															Let Ta914.3947
																																																																																																																SetExt 312
																																																																																																																Let Td2517.6258.7893
																																																																																																																	Lfd Ta913.3946 0
																																																																																																																	Let Td2519.6259.7895
																																																																																																																		Lfd Ta914.3947 0
																																																																																																																		Let Td2520.6252.7896
																																																																																																																			FMul Td2517.6258.7893 Td2519.6259.7895
																																																																																																																			Let Td2522.6254.7898
																																																																																																																				Lfd Ta913.3946 4
																																																																																																																				Let Td2524.6255.7900
																																																																																																																					Lfd Ta914.3947 4
																																																																																																																					Let Td2525.6253.7901
																																																																																																																						FMul Td2522.6254.7898 Td2524.6255.7900
																																																																																																																						Let Td2526.6246.7902
																																																																																																																							FAdd Td2520.6252.7896 Td2525.6253.7901
																																																																																																																							Let Td2528.6248.7904
																																																																																																																								Lfd Ta913.3946 8
																																																																																																																								Let Td2530.6249.7906
																																																																																																																									Lfd Ta914.3947 8
																																																																																																																									Let Td2531.6247.7907
																																																																																																																										FMul Td2528.6248.7904 Td2530.6249.7906
																																																																																																																										Let Td915.3945
																																																																																																																											FAdd Td2526.6246.7902 Td2531.6247.7907
																																																																																																																											Let Td916.3944
																																																																																																																												FNeg Td915.3945
																																																																																																																												Let bright.3940
																																																																																																																													FMul Td916.3944 diffuse.3897
																																																																																																																													Let Ta917.3943
																																																																																																																														SetExt 312
																																																																																																																														Let Td2517.6258.7877
																																																																																																																															Lfd dirvec.2999 0
																																																																																																																															Let Td2519.6259.7879
																																																																																																																																Lfd Ta917.3943 0
																																																																																																																																Let Td2520.6252.7880
																																																																																																																																	FMul Td2517.6258.7877 Td2519.6259.7879
																																																																																																																																	Let Td2522.6254.7882
																																																																																																																																		Lfd dirvec.2999 4
																																																																																																																																		Let Td2524.6255.7884
																																																																																																																																			Lfd Ta917.3943 4
																																																																																																																																			Let Td2525.6253.7885
																																																																																																																																				FMul Td2522.6254.7882 Td2524.6255.7884
																																																																																																																																				Let Td2526.6246.7886
																																																																																																																																					FAdd Td2520.6252.7880 Td2525.6253.7885
																																																																																																																																					Let Td2528.6248.7888
																																																																																																																																						Lfd dirvec.2999 8
																																																																																																																																						Let Td2530.6249.7890
																																																																																																																																							Lfd Ta917.3943 8
																																																																																																																																							Let Td2531.6247.7891
																																																																																																																																								FMul Td2528.6248.7888 Td2530.6249.7890
																																																																																																																																								Let Td918.3942
																																																																																																																																									FAdd Td2526.6246.7886 Td2531.6247.7891
																																																																																																																																									Let hilight.3941
																																																																																																																																										FNeg Td918.3942
																																																																																																																																										Ans
																																																																																																																																											CallDir add_light.2987 d:f:bright.3940 hilight.3941 hilight_scale.3908 
																																																																																																														Ans
																																																																																																															Nop
																																																																																																													Let Ta919.3937
																																																																																																														SetExt 552
																																																																																																														Let Ta1497.4712.7869
																																																																																																															SetExt 648
																																																																																																															Let Td2609.6353.12181
																																																																																																																Lfd Ta919.3937 0
																																																																																																																Let Tu6.6344.12182
																																																																																																																	Stfd Td2609.6353.12181 Ta1497.4712.7869 0
																																																																																																																	Let Td2612.6350.12185
																																																																																																																		Lfd Ta919.3937 4
																																																																																																																		Let Tu5.6345.12186
																																																																																																																			Stfd Td2612.6350.12185 Ta1497.4712.7869 4
																																																																																																																			Let Td2615.6347.12189
																																																																																																																				Lfd Ta919.3937 8
																																																																																																																				Let Tu105.4706.7870
																																																																																																																					Stfd Td2615.6347.12189 Ta1497.4712.7869 8
																																																																																																																					Let Ta1498.4710.7871
																																																																																																																						SetExt 0
																																																																																																																						Let Ti1500.4708.7873
																																																																																																																							Lwz Ta1498.4710.7871 0
																																																																																																																							Let Ti1502.4707.7875
																																																																																																																								Sub Ti1500.4708.7873 1
																																																																																																																								Let Tu144.3910
																																																																																																																									CallDir setup_startp_constants.2907 d:Ta919.3937 Ti1502.4707.7875 f:
																																																																																																																									Let Ta920.3935
																																																																																																																										SetExt 1736
																																																																																																																										Let Ti922.3933
																																																																																																																											Lwz Ta920.3935 0
																																																																																																																											Let Ti924.3932
																																																																																																																												Sub Ti922.3933 1
																																																																																																																												Let Tu143.3911
																																																																																																																													CallDir trace_reflections.2991 d:Ti924.3932 dirvec.2999 f:diffuse.3897 hilight_scale.3908 
																																																																																																																													Let Td.e.10614
																																																																																																																														FLi 0.100000
																																																																																																																														Let z.6378.7868
																																																																																																																															FSub Td.e.10614 energy.2998
																																																																																																																															Let Td2637.6382.12178
																																																																																																																																FLi 0.000000
																																																																																																																																Let Tb926.3912
																																																																																																																																	IfFLE Td2637.6382.12178 z.6378.7868
																																																																																																																																		Ans
																																																																																																																																			Li 0
																																																																																																																																		Ans
																																																																																																																																			Li 1
																																																																																																																																	Let Ti927.3913
																																																																																																																																		Li 0
																																																																																																																																		Ans
																																																																																																																																			IfEq Tb926.3912 Ti927.3913
																																																																																																																																				Ans
																																																																																																																																					Nop
																																																																																																																																				Let Ti928.3926
																																																																																																																																					Li 4
																																																																																																																																					Let Tu142.3914
																																																																																																																																						IfLE Ti928.3926 nref.2997
																																																																																																																																							Ans
																																																																																																																																								Nop
																																																																																																																																							Let Ti930.3927
																																																																																																																																								Add nref.2997 1
																																																																																																																																								Let Ti932.3928
																																																																																																																																									Li -1
																																																																																																																																									Let o.15155
																																																																																																																																										Slw Ti930.3927 2
																																																																																																																																										Ans
																																																																																																																																											Stw Ti932.3928 m_sids.5863.8123 o.15155
																																																																																																																																						Let Ti933.3915
																																																																																																																																							Li 2
																																																																																																																																							Ans
																																																																																																																																								IfEq m_surface.6099.8079 Ti933.3915
																																																																																																																																									Let m_surfparams.5987.7863
																																																																																																																																										Lwz obj.3895 28
																																																																																																																																										Let Td935.3925
																																																																																																																																											Lfd m_surfparams.5987.7863 0
																																																																																																																																											Let Td.e.10616
																																																																																																																																												FLi 1.000000
																																																																																																																																												Let Td936.3923
																																																																																																																																													FSub Td.e.10616 Td935.3925
																																																																																																																																													Let energy2.3916
																																																																																																																																														FMul energy.2998 Td936.3923
																																																																																																																																														Let Ti938.3917
																																																																																																																																															Add nref.2997 1
																																																																																																																																															Let Ta939.3920
																																																																																																																																																SetExt 548
																																																																																																																																																Let Td941.3919
																																																																																																																																																	Lfd Ta939.3920 0
																																																																																																																																																	Let Td942.3918
																																																																																																																																																		FAdd dist.3001 Td941.3919
																																																																																																																																																		Ans
																																																																																																																																																			CallDir trace_ray.2996 d:Ti938.3917 dirvec.2999 pixel.3000 f:energy2.3916 Td942.3918 
																																																																																																																																									Ans
																																																																																																																																										Nop
				Ans
					Nop
trace_diffuse_ray.3002 (args) : dirvec.3003 (fargs) : energy.3004 
	Let Ta1210.4366.7840
		SetExt 548
		Let Td1212.4368.7842
			FLi 1000000000.000000
			Let Tu121.4353.7843
				Stfd Td1212.4368.7842 Ta1210.4366.7840 0
				Let Ti1213.4362.7844
					Li 0
					Let Ta1214.4364.7845
						SetExt 536
						Let Ta1216.4363.7847
							Lwz Ta1214.4364.7845 0
							Let Tu120.4354.7848
								CallDir trace_or_matrix_fast.2969 d:Ti1213.4362.7844 Ta1216.4363.7847 dirvec.3003 f:
								Let Ta1217.4360.7849
									SetExt 548
									Let t.4355.7851
										Lfd Ta1217.4360.7849 0
										Let Td.e.13815
											FLi -0.100000
											Let z.6378.12176
												FSub Td.e.13815 t.4355.7851
												Let Td2637.6382.10492.12177
													FLi 0.000000
													Let Tb1220.4356.7853
														IfFLE Td2637.6382.10492.12177 z.6378.12176
															Ans
																Li 0
															Ans
																Li 1
														Let Ti1221.4357.7854
															Li 0
															Let Tb814.3861
																IfEq Tb1220.4356.7853 Ti1221.4357.7854
																	Ans
																		Li 0
																	Let Td.e.13816
																		FLi 100000000.000000
																		Let z.6378.12174
																			FSub t.4355.7851 Td.e.13816
																			Let Td2637.6382.10492.12175
																				FLi 0.000000
																				Ans
																					IfFLE Td2637.6382.10492.12175 z.6378.12174
																						Ans
																							Li 0
																						Ans
																							Li 1
																Let Ti815.3862
																	Li 0
																	Ans
																		IfEq Tb814.3861 Ti815.3862
																			Ans
																				Nop
																			Let Ta816.3886
																				SetExt 48
																				Let Ta817.3888
																					SetExt 564
																					Let Ti819.3887
																						Lwz Ta817.3888 0
																						Let o.15176
																							Slw Ti819.3887 2
																							Let obj.3863
																								Lwz Ta816.3886 o.15176
																								Let m_vec.5809.7838
																									Lwz dirvec.3003 0
																									Let m_shape.6109.12164
																										Lwz obj.3863 4
																										Let Ti1133.4261.7836
																											Li 1
																											Let Tu157.3864
																												IfEq m_shape.6109.12164 Ti1133.4261.7836
																													Let Ta1199.4351.12145
																														SetExt 544
																														Let rectside.4340.12147
																															Lwz Ta1199.4351.12145 0
																															Let Ta1201.4350.12148
																																SetExt 568
																																Let Td2616.6355.8638.12149
																																	FLi 0.000000
																																	Let Tu4.6356.14395
																																		Stfd Td2616.6355.8638.12149 Ta1201.4350.12148 0
																																		Let Tu3.6357.14397
																																			Stfd Td2616.6355.8638.12149 Ta1201.4350.12148 4
																																			Let Tu122.4341.12150
																																				Stfd Td2616.6355.8638.12149 Ta1201.4350.12148 8
																																				Let Ta1202.4342.12151
																																					SetExt 568
																																					Let Ti1204.4343.12153
																																						Sub rectside.4340.12147 1
																																						Let Ti1206.4347.12155
																																							Sub rectside.4340.12147 1
																																							Let o.15187
																																								Slw Ti1206.4347.12155 2
																																								Let Td1207.4346.12156
																																									Lfd m_vec.5809.7838 o.15187
																																									Let Td2636.6381.14393
																																										FLi 0.000000
																																										Let Tb2626.6370.8634.12157
																																											IfFEq Td1207.4346.12156 Td2636.6381.14393
																																												Ans
																																													Li 1
																																												Ans
																																													Li 0
																																											Let Ti2627.6371.8635.12158
																																												Li 0
																																												Let Td1208.4345.12159
																																													IfEq Tb2626.6370.8634.12157 Ti2627.6371.8635.12158
																																														Let Td2638.6383.14392
																																															FLi 0.000000
																																															Let Tb2628.6372.8636.12161
																																																IfFLE Td1207.4346.12156 Td2638.6383.14392
																																																	Ans
																																																		Li 0
																																																	Ans
																																																		Li 1
																																																Let Ti2629.6373.8637.12162
																																																	Li 0
																																																	Ans
																																																		IfEq Tb2628.6372.8636.12161 Ti2629.6373.8637.12162
																																																			Ans
																																																				FLi -1.000000
																																																			Ans
																																																				FLi 1.000000
																																														Ans
																																															FLi 0.000000
																																													Let Td1209.4344.12160
																																														FNeg Td1208.4345.12159
																																														Let o.15188
																																															Slw Ti1204.4343.12153 2
																																															Ans
																																																Stfd Td1209.4344.12160 Ta1202.4342.12151 o.15188
																													Let Ti1134.4262.7837
																														Li 2
																														Ans
																															IfEq m_shape.6109.12164 Ti1134.4262.7837
																																Let Ta1187.4336.12095
																																	SetExt 568
																																	Let m_abc.6067.8626.12101
																																		Lwz obj.3863 16
																																		Let Td1189.4339.12109
																																			Lfd m_abc.6067.8626.12101 0
																																			Let Td1190.4338.12110
																																				FNeg Td1189.4339.12109
																																				Let Tu124.4326.12111
																																					Stfd Td1190.4338.12110 Ta1187.4336.12095 0
																																					Let Ta1191.4332.12112
																																						SetExt 568
																																						Let m_abc.6055.8614.12118
																																							Lwz obj.3863 16
																																							Let Td1193.4335.12126
																																								Lfd m_abc.6055.8614.12118 4
																																								Let Td1194.4334.12127
																																									FNeg Td1193.4335.12126
																																									Let Tu123.4327.12128
																																										Stfd Td1194.4334.12127 Ta1191.4332.12112 4
																																										Let Ta1195.4328.12129
																																											SetExt 568
																																											Let m_abc.6043.8602.12135
																																												Lwz obj.3863 16
																																												Let Td1197.4331.12143
																																													Lfd m_abc.6043.8602.12135 8
																																													Let Td1198.4330.12144
																																														FNeg Td1197.4331.12143
																																														Ans
																																															Stfd Td1198.4330.12144 Ta1195.4328.12129 8
																																Ans
																																	CallDir get_nvector_second.2979 d:obj.3863 f:
																												Let Ta821.3884
																													SetExt 552
																													Let Tu156.3865
																														CallDir utexture.2984 d:obj.3863 Ta821.3884 f:
																														Let Ti822.3880
																															Li 0
																															Let Ta823.3882
																																SetExt 536
																																Let Ta825.3881
																																	Lwz Ta823.3882 0
																																	Let Tb826.3866
																																		CallDir shadow_check_one_or_matrix.2944 d:Ti822.3880 Ta825.3881 f:
																																		Let Ti827.3867
																																			Li 0
																																			Ans
																																				IfEq Tb826.3866 Ti827.3867
																																					Let Ta828.3878
																																						SetExt 568
																																						Let Ta829.3879
																																							SetExt 312
																																							Let Td2517.6258.7820
																																								Lfd Ta828.3878 0
																																								Let Td2519.6259.7822
																																									Lfd Ta829.3879 0
																																									Let Td2520.6252.7823
																																										FMul Td2517.6258.7820 Td2519.6259.7822
																																										Let Td2522.6254.7825
																																											Lfd Ta828.3878 4
																																											Let Td2524.6255.7827
																																												Lfd Ta829.3879 4
																																												Let Td2525.6253.7828
																																													FMul Td2522.6254.7825 Td2524.6255.7827
																																													Let Td2526.6246.7829
																																														FAdd Td2520.6252.7823 Td2525.6253.7828
																																														Let Td2528.6248.7831
																																															Lfd Ta828.3878 8
																																															Let Td2530.6249.7833
																																																Lfd Ta829.3879 8
																																																Let Td2531.6247.7834
																																																	FMul Td2528.6248.7831 Td2530.6249.7833
																																																	Let Td830.3877
																																																		FAdd Td2526.6246.7829 Td2531.6247.7834
																																																		Let br.3868
																																																			FNeg Td830.3877
																																																			Let Td2638.6383.7818
																																																				FLi 0.000000
																																																				Let Tb831.3875
																																																					IfFLE br.3868 Td2638.6383.7818
																																																						Ans
																																																							Li 0
																																																						Ans
																																																							Li 1
																																																					Let Ti832.3876
																																																						Li 0
																																																						Let bright.3869
																																																							IfEq Tb831.3875 Ti832.3876
																																																								Ans
																																																									FLi 0.000000
																																																								Ans
																																																									FMr br.3868
																																																							Let Ta833.3870
																																																								SetExt 592
																																																								Let Td834.3873
																																																									FMul energy.3004 bright.3869
																																																									Let m_surfparams.5987.7813
																																																										Lwz obj.3863 28
																																																										Let Td835.3874
																																																											Lfd m_surfparams.5987.7813 0
																																																											Let Td836.3871
																																																												FMul Td834.3873 Td835.3874
																																																												Let Ta837.3872
																																																													SetExt 580
																																																													Let Td2487.6231.7785
																																																														Lfd Ta833.3870 0
																																																														Let Td2489.6233.7787
																																																															Lfd Ta837.3872 0
																																																															Let Td2490.6232.7788
																																																																FMul Td836.3871 Td2489.6233.7787
																																																																Let Td2491.6230.7789
																																																																	FAdd Td2487.6231.7785 Td2490.6232.7788
																																																																	Let Tu12.6213.7790
																																																																		Stfd Td2491.6230.7789 Ta833.3870 0
																																																																		Let Td2494.6224.7793
																																																																			Lfd Ta833.3870 4
																																																																			Let Td2496.6226.7795
																																																																				Lfd Ta837.3872 4
																																																																				Let Td2497.6225.7796
																																																																					FMul Td836.3871 Td2496.6226.7795
																																																																					Let Td2498.6223.7797
																																																																						FAdd Td2494.6224.7793 Td2497.6225.7796
																																																																						Let Tu11.6214.7798
																																																																							Stfd Td2498.6223.7797 Ta833.3870 4
																																																																							Let Td2501.6217.7801
																																																																								Lfd Ta833.3870 8
																																																																								Let Td2503.6219.7803
																																																																									Lfd Ta837.3872 8
																																																																									Let Td2504.6218.7804
																																																																										FMul Td836.3871 Td2503.6219.7803
																																																																										Let Td2505.6216.7805
																																																																											FAdd Td2501.6217.7801 Td2504.6218.7804
																																																																											Ans
																																																																												Stfd Td2505.6216.7805 Ta833.3870 8
																																					Ans
																																						Nop
iter_trace_diffuse_rays.3005 (args) : dirvec_group.3006 nvector.3007 org.3008 index.3009 (fargs) : 
	Let Ti797.3842
		Li 0
		Ans
			IfLE Ti797.3842 index.3009
				Let o.15206
					Slw index.3009 2
					Let Tt798.3860
						Lwz dirvec_group.3006 o.15206
						Let m_vec.5809.7781
							Lwz Tt798.3860 0
							Let Td2517.6258.7766
								Lfd m_vec.5809.7781 0
								Let Td2519.6259.7768
									Lfd nvector.3007 0
									Let Td2520.6252.7769
										FMul Td2517.6258.7766 Td2519.6259.7768
										Let Td2522.6254.7771
											Lfd m_vec.5809.7781 4
											Let Td2524.6255.7773
												Lfd nvector.3007 4
												Let Td2525.6253.7774
													FMul Td2522.6254.7771 Td2524.6255.7773
													Let Td2526.6246.7775
														FAdd Td2520.6252.7769 Td2525.6253.7774
														Let Td2528.6248.7777
															Lfd m_vec.5809.7781 8
															Let Td2530.6249.7779
																Lfd nvector.3007 8
																Let Td2531.6247.7780
																	FMul Td2528.6248.7777 Td2530.6249.7779
																	Let p.3843
																		FAdd Td2526.6246.7775 Td2531.6247.7780
																		Let Td2637.6382.7764
																			FLi 0.000000
																			Let Tb800.3847
																				IfFLE Td2637.6382.7764 p.3843
																					Ans
																						Li 0
																					Ans
																						Li 1
																				Let Ti801.3848
																					Li 0
																					Let Tu158.3844
																						IfEq Tb800.3847 Ti801.3848
																							Let o.15214
																								Slw index.3009 2
																								Let Tt802.3855
																									Lwz dirvec_group.3006 o.15214
																									Let Td803.3857
																										FLi 150.000000
																										Let Td804.3858
																											FReciprocal Td803.3857
																											Let Td805.3856
																												FMul p.3843 Td804.3858
																												Ans
																													CallDir trace_diffuse_ray.3002 d:Tt802.3855 f:Td805.3856 
																							Let Ti807.3853
																								Add index.3009 1
																								Let o.15213
																									Slw Ti807.3853 2
																									Let Tt808.3849
																										Lwz dirvec_group.3006 o.15213
																										Let Td809.3851
																											FLi -150.000000
																											Let Td810.3852
																												FReciprocal Td809.3851
																												Let Td811.3850
																													FMul p.3843 Td810.3852
																													Ans
																														CallDir trace_diffuse_ray.3002 d:Tt808.3849 f:Td811.3850 
																						Let Ti813.3845
																							Sub index.3009 2
																							Let Ti797.3842.7745
																								Li 0
																								Ans
																									IfLE Ti797.3842.7745 Ti813.3845
																										Let o.15215
																											Slw Ti813.3845 2
																											Let Tt798.3860.7746
																												Lwz dirvec_group.3006 o.15215
																												Let m_vec.5809.12093
																													Lwz Tt798.3860.7746 0
																													Let Td2517.6258.12078
																														Lfd m_vec.5809.12093 0
																														Let Td2519.6259.12080
																															Lfd nvector.3007 0
																															Let Td2520.6252.12081
																																FMul Td2517.6258.12078 Td2519.6259.12080
																																Let Td2522.6254.12083
																																	Lfd m_vec.5809.12093 4
																																	Let Td2524.6255.12085
																																		Lfd nvector.3007 4
																																		Let Td2525.6253.12086
																																			FMul Td2522.6254.12083 Td2524.6255.12085
																																			Let Td2526.6246.12087
																																				FAdd Td2520.6252.12081 Td2525.6253.12086
																																				Let Td2528.6248.12089
																																					Lfd m_vec.5809.12093 8
																																					Let Td2530.6249.12091
																																						Lfd nvector.3007 8
																																						Let Td2531.6247.12092
																																							FMul Td2528.6248.12089 Td2530.6249.12091
																																							Let p.3843.7748
																																								FAdd Td2526.6246.12087 Td2531.6247.12092
																																								Let Td2637.6382.12076
																																									FLi 0.000000
																																									Let Tb800.3847.7749
																																										IfFLE Td2637.6382.12076 p.3843.7748
																																											Ans
																																												Li 0
																																											Ans
																																												Li 1
																																										Let Ti801.3848.7750
																																											Li 0
																																											Let Tu158.3844.7751
																																												IfEq Tb800.3847.7749 Ti801.3848.7750
																																													Let o.15223
																																														Slw Ti813.3845 2
																																														Let Tt802.3855.7760
																																															Lwz dirvec_group.3006 o.15223
																																															Let Td803.3857.7761
																																																FLi 150.000000
																																																Let Td804.3858.7762
																																																	FReciprocal Td803.3857.7761
																																																	Let Td805.3856.7763
																																																		FMul p.3843.7748 Td804.3858.7762
																																																		Ans
																																																			CallDir trace_diffuse_ray.3002 d:Tt802.3855.7760 f:Td805.3856.7763 
																																													Let Ti807.3853.7755
																																														Add Ti813.3845 1
																																														Let o.15222
																																															Slw Ti807.3853.7755 2
																																															Let Tt808.3849.7756
																																																Lwz dirvec_group.3006 o.15222
																																																Let Td809.3851.7757
																																																	FLi -150.000000
																																																	Let Td810.3852.7758
																																																		FReciprocal Td809.3851.7757
																																																		Let Td811.3850.7759
																																																			FMul p.3843.7748 Td810.3852.7758
																																																			Ans
																																																				CallDir trace_diffuse_ray.3002 d:Tt808.3849.7756 f:Td811.3850.7759 
																																												Let Ti813.3845.7753
																																													Sub Ti813.3845 2
																																													Ans
																																														CallDir iter_trace_diffuse_rays.3005 d:dirvec_group.3006 nvector.3007 org.3008 Ti813.3845.7753 f:
																										Ans
																											Nop
				Ans
					Nop
trace_diffuse_ray_80percent.3014 (args) : group_id.3015 nvector.3016 org.3017 (fargs) : 
	Let Ti776.3836
		Li 0
		Let Tu163.3816
			IfEq group_id.3015 Ti776.3836
				Ans
					Nop
				Let Ta777.3838
					SetExt 716
					Let Ta779.3837
						Lwz Ta777.3838 0
						Let Ta1497.4712.12028
							SetExt 648
							Let Td2609.6353.9241.12031
								Lfd org.3017 0
								Let Tu6.6344.9242.12032
									Stfd Td2609.6353.9241.12031 Ta1497.4712.12028 0
									Let Td2612.6350.9245.12035
										Lfd org.3017 4
										Let Tu5.6345.9246.12036
											Stfd Td2612.6350.9245.12035 Ta1497.4712.12028 4
											Let Td2615.6347.9249.12039
												Lfd org.3017 8
												Let Tu105.4706.12040
													Stfd Td2615.6347.9249.12039 Ta1497.4712.12028 8
													Let Ta1498.4710.12041
														SetExt 0
														Let Ti1500.4708.12043
															Lwz Ta1498.4710.12041 0
															Let Ti1502.4707.12045
																Sub Ti1500.4708.12043 1
																Let Tu159.3840.7717
																	CallDir setup_startp_constants.2907 d:org.3017 Ti1502.4707.12045 f:
																	Let Ti796.3841.7718
																		Li 118
																		Ans
																			CallDir iter_trace_diffuse_rays.3005 d:Ta779.3837 nvector.3016 org.3017 Ti796.3841.7718 f:
			Let Ti780.3832
				Li 1
				Let Tu162.3817
					IfEq group_id.3015 Ti780.3832
						Ans
							Nop
						Let Ta781.3834
							SetExt 716
							Let Ta783.3833
								Lwz Ta781.3834 4
								Let Ta1497.4712.12010
									SetExt 648
									Let Td2609.6353.9241.12013
										Lfd org.3017 0
										Let Tu6.6344.9242.12014
											Stfd Td2609.6353.9241.12013 Ta1497.4712.12010 0
											Let Td2612.6350.9245.12017
												Lfd org.3017 4
												Let Tu5.6345.9246.12018
													Stfd Td2612.6350.9245.12017 Ta1497.4712.12010 4
													Let Td2615.6347.9249.12021
														Lfd org.3017 8
														Let Tu105.4706.12022
															Stfd Td2615.6347.9249.12021 Ta1497.4712.12010 8
															Let Ta1498.4710.12023
																SetExt 0
																Let Ti1500.4708.12025
																	Lwz Ta1498.4710.12023 0
																	Let Ti1502.4707.12027
																		Sub Ti1500.4708.12025 1
																		Let Tu159.3840.7715
																			CallDir setup_startp_constants.2907 d:org.3017 Ti1502.4707.12027 f:
																			Let Ti796.3841.7716
																				Li 118
																				Ans
																					CallDir iter_trace_diffuse_rays.3005 d:Ta783.3833 nvector.3016 org.3017 Ti796.3841.7716 f:
					Let Ti784.3828
						Li 2
						Let Tu161.3818
							IfEq group_id.3015 Ti784.3828
								Ans
									Nop
								Let Ta785.3830
									SetExt 716
									Let Ta787.3829
										Lwz Ta785.3830 8
										Let Ta1497.4712.11992
											SetExt 648
											Let Td2609.6353.9241.11995
												Lfd org.3017 0
												Let Tu6.6344.9242.11996
													Stfd Td2609.6353.9241.11995 Ta1497.4712.11992 0
													Let Td2612.6350.9245.11999
														Lfd org.3017 4
														Let Tu5.6345.9246.12000
															Stfd Td2612.6350.9245.11999 Ta1497.4712.11992 4
															Let Td2615.6347.9249.12003
																Lfd org.3017 8
																Let Tu105.4706.12004
																	Stfd Td2615.6347.9249.12003 Ta1497.4712.11992 8
																	Let Ta1498.4710.12005
																		SetExt 0
																		Let Ti1500.4708.12007
																			Lwz Ta1498.4710.12005 0
																			Let Ti1502.4707.12009
																				Sub Ti1500.4708.12007 1
																				Let Tu159.3840.7713
																					CallDir setup_startp_constants.2907 d:org.3017 Ti1502.4707.12009 f:
																					Let Ti796.3841.7714
																						Li 118
																						Ans
																							CallDir iter_trace_diffuse_rays.3005 d:Ta787.3829 nvector.3016 org.3017 Ti796.3841.7714 f:
							Let Ti788.3824
								Li 3
								Let Tu160.3819
									IfEq group_id.3015 Ti788.3824
										Ans
											Nop
										Let Ta789.3826
											SetExt 716
											Let Ta791.3825
												Lwz Ta789.3826 12
												Let Ta1497.4712.11974
													SetExt 648
													Let Td2609.6353.9241.11977
														Lfd org.3017 0
														Let Tu6.6344.9242.11978
															Stfd Td2609.6353.9241.11977 Ta1497.4712.11974 0
															Let Td2612.6350.9245.11981
																Lfd org.3017 4
																Let Tu5.6345.9246.11982
																	Stfd Td2612.6350.9245.11981 Ta1497.4712.11974 4
																	Let Td2615.6347.9249.11985
																		Lfd org.3017 8
																		Let Tu105.4706.11986
																			Stfd Td2615.6347.9249.11985 Ta1497.4712.11974 8
																			Let Ta1498.4710.11987
																				SetExt 0
																				Let Ti1500.4708.11989
																					Lwz Ta1498.4710.11987 0
																					Let Ti1502.4707.11991
																						Sub Ti1500.4708.11989 1
																						Let Tu159.3840.7711
																							CallDir setup_startp_constants.2907 d:org.3017 Ti1502.4707.11991 f:
																							Let Ti796.3841.7712
																								Li 118
																								Ans
																									CallDir iter_trace_diffuse_rays.3005 d:Ta791.3825 nvector.3016 org.3017 Ti796.3841.7712 f:
									Let Ti792.3820
										Li 4
										Ans
											IfEq group_id.3015 Ti792.3820
												Ans
													Nop
												Let Ta793.3822
													SetExt 716
													Let Ta795.3821
														Lwz Ta793.3822 16
														Let Ta1497.4712.11956
															SetExt 648
															Let Td2609.6353.9241.11959
																Lfd org.3017 0
																Let Tu6.6344.9242.11960
																	Stfd Td2609.6353.9241.11959 Ta1497.4712.11956 0
																	Let Td2612.6350.9245.11963
																		Lfd org.3017 4
																		Let Tu5.6345.9246.11964
																			Stfd Td2612.6350.9245.11963 Ta1497.4712.11956 4
																			Let Td2615.6347.9249.11967
																				Lfd org.3017 8
																				Let Tu105.4706.11968
																					Stfd Td2615.6347.9249.11967 Ta1497.4712.11956 8
																					Let Ta1498.4710.11969
																						SetExt 0
																						Let Ti1500.4708.11971
																							Lwz Ta1498.4710.11969 0
																							Let Ti1502.4707.11973
																								Sub Ti1500.4708.11971 1
																								Let Tu159.3840.7709
																									CallDir setup_startp_constants.2907 d:org.3017 Ti1502.4707.11973 f:
																									Let Ti796.3841.7710
																										Li 118
																										Ans
																											CallDir iter_trace_diffuse_rays.3005 d:Ta795.3821 nvector.3016 org.3017 Ti796.3841.7710 f:
calc_diffuse_using_1point.3018 (args) : pixel.3019 nref.3020 (fargs) : 
	Let m_r20p.5842.7706
		Lwz pixel.3019 20
		Let m_nvectors.5818.7700
			Lwz pixel.3019 28
			Let m_isect_ps.5870.7686
				Lwz pixel.3019 4
				Let m_engy.5849.7681
					Lwz pixel.3019 16
					Let Ta768.3814
						SetExt 592
						Let o.15264
							Slw nref.3020 2
							Let Ta769.3815
								Lwz m_r20p.5842.7706 o.15264
								Let Td2609.6353.7668
									Lfd Ta769.3815 0
									Let Tu6.6344.7669
										Stfd Td2609.6353.7668 Ta768.3814 0
										Let Td2612.6350.7672
											Lfd Ta769.3815 4
											Let Tu5.6345.7673
												Stfd Td2612.6350.7672 Ta768.3814 4
												Let Td2615.6347.7676
													Lfd Ta769.3815 8
													Let Tu165.3806
														Stfd Td2615.6347.7676 Ta768.3814 8
														Let m_gid.5834.7663
															Lwz pixel.3019 24
															Let Ti770.3811
																Lwz m_gid.5834.7663 0
																Let o.15272
																	Slw nref.3020 2
																	Let Ta771.3812
																		Lwz m_nvectors.5818.7700 o.15272
																		Let o.15273
																			Slw nref.3020 2
																			Let Ta772.3813
																				Lwz m_isect_ps.5870.7686 o.15273
																				Let Ti776.3836.7633
																					Li 0
																					Let Tu163.3816.7634
																						IfEq Ti770.3811 Ti776.3836.7633
																							Ans
																								Nop
																							Let Ta777.3838.7654
																								SetExt 716
																								Let Ta779.3837.7656
																									Lwz Ta777.3838.7654 0
																									Let Ta1497.4712.7738.11931
																										SetExt 648
																										Let Td2609.6353.14383
																											Lfd Ta772.3813 0
																											Let Tu6.6344.14384
																												Stfd Td2609.6353.14383 Ta1497.4712.7738.11931 0
																												Let Td2612.6350.14387
																													Lfd Ta772.3813 4
																													Let Tu5.6345.14388
																														Stfd Td2612.6350.14387 Ta1497.4712.7738.11931 4
																														Let Td2615.6347.14391
																															Lfd Ta772.3813 8
																															Let Tu105.4706.7739.11932
																																Stfd Td2615.6347.14391 Ta1497.4712.7738.11931 8
																																Let Ta1498.4710.7740.11933
																																	SetExt 0
																																	Let Ti1500.4708.7742.11935
																																		Lwz Ta1498.4710.7740.11933 0
																																		Let Ti1502.4707.7744.11937
																																			Sub Ti1500.4708.7742.11935 1
																																			Let Tu159.3840.11938
																																				CallDir setup_startp_constants.2907 d:Ta772.3813 Ti1502.4707.7744.11937 f:
																																				Let Tt798.3860.7720.11940
																																					Lwz Ta779.3837.7656 472
																																					Let m_vec.5809.14379
																																						Lwz Tt798.3860.7720.11940 0
																																						Let Td2517.6258.14364
																																							Lfd m_vec.5809.14379 0
																																							Let Td2519.6259.14366
																																								Lfd Ta771.3812 0
																																								Let Td2520.6252.14367
																																									FMul Td2517.6258.14364 Td2519.6259.14366
																																									Let Td2522.6254.14369
																																										Lfd m_vec.5809.14379 4
																																										Let Td2524.6255.14371
																																											Lfd Ta771.3812 4
																																											Let Td2525.6253.14372
																																												FMul Td2522.6254.14369 Td2524.6255.14371
																																												Let Td2526.6246.14373
																																													FAdd Td2520.6252.14367 Td2525.6253.14372
																																													Let Td2528.6248.14375
																																														Lfd m_vec.5809.14379 8
																																														Let Td2530.6249.14377
																																															Lfd Ta771.3812 8
																																															Let Td2531.6247.14378
																																																FMul Td2528.6248.14375 Td2530.6249.14377
																																																Let p.3843.7722.11942
																																																	FAdd Td2526.6246.14373 Td2531.6247.14378
																																																	Let Td2637.6382.14362
																																																		FLi 0.000000
																																																		Let Tb800.3847.7723.11943
																																																			IfFLE Td2637.6382.14362 p.3843.7722.11942
																																																				Ans
																																																					Li 0
																																																				Ans
																																																					Li 1
																																																			Let Ti801.3848.7724.11944
																																																				Li 0
																																																				Let Tu158.3844.7725.11945
																																																					IfEq Tb800.3847.7723.11943 Ti801.3848.7724.11944
																																																						Let Tt802.3855.7734.11952
																																																							Lwz Ta779.3837.7656 472
																																																							Let Td803.3857.7735.11953
																																																								FLi 150.000000
																																																								Let Td804.3858.7736.11954
																																																									FReciprocal Td803.3857.7735.11953
																																																									Let Td805.3856.7737.11955
																																																										FMul p.3843.7722.11942 Td804.3858.7736.11954
																																																										Ans
																																																											CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11952 f:Td805.3856.7737.11955 
																																																						Let Tt808.3849.7730.11948
																																																							Lwz Ta779.3837.7656 476
																																																							Let Td809.3851.7731.11949
																																																								FLi -150.000000
																																																								Let Td810.3852.7732.11950
																																																									FReciprocal Td809.3851.7731.11949
																																																									Let Td811.3850.7733.11951
																																																										FMul p.3843.7722.11942 Td810.3852.7732.11950
																																																										Ans
																																																											CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11948 f:Td811.3850.7733.11951 
																																																					Let Ti813.3845.7727.11946
																																																						Li 116
																																																						Ans
																																																							CallDir iter_trace_diffuse_rays.3005 d:Ta779.3837.7656 Ta771.3812 Ta772.3813 Ti813.3845.7727.11946 f:
																						Let Ti780.3832.7635
																							Li 1
																							Let Tu162.3817.7636
																								IfEq Ti770.3811 Ti780.3832.7635
																									Ans
																										Nop
																									Let Ta781.3834.7651
																										SetExt 716
																										Let Ta783.3833.7653
																											Lwz Ta781.3834.7651 4
																											Let Ta1497.4712.7738.11906
																												SetExt 648
																												Let Td2609.6353.14353
																													Lfd Ta772.3813 0
																													Let Tu6.6344.14354
																														Stfd Td2609.6353.14353 Ta1497.4712.7738.11906 0
																														Let Td2612.6350.14357
																															Lfd Ta772.3813 4
																															Let Tu5.6345.14358
																																Stfd Td2612.6350.14357 Ta1497.4712.7738.11906 4
																																Let Td2615.6347.14361
																																	Lfd Ta772.3813 8
																																	Let Tu105.4706.7739.11907
																																		Stfd Td2615.6347.14361 Ta1497.4712.7738.11906 8
																																		Let Ta1498.4710.7740.11908
																																			SetExt 0
																																			Let Ti1500.4708.7742.11910
																																				Lwz Ta1498.4710.7740.11908 0
																																				Let Ti1502.4707.7744.11912
																																					Sub Ti1500.4708.7742.11910 1
																																					Let Tu159.3840.11913
																																						CallDir setup_startp_constants.2907 d:Ta772.3813 Ti1502.4707.7744.11912 f:
																																						Let Tt798.3860.7720.11915
																																							Lwz Ta783.3833.7653 472
																																							Let m_vec.5809.14349
																																								Lwz Tt798.3860.7720.11915 0
																																								Let Td2517.6258.14334
																																									Lfd m_vec.5809.14349 0
																																									Let Td2519.6259.14336
																																										Lfd Ta771.3812 0
																																										Let Td2520.6252.14337
																																											FMul Td2517.6258.14334 Td2519.6259.14336
																																											Let Td2522.6254.14339
																																												Lfd m_vec.5809.14349 4
																																												Let Td2524.6255.14341
																																													Lfd Ta771.3812 4
																																													Let Td2525.6253.14342
																																														FMul Td2522.6254.14339 Td2524.6255.14341
																																														Let Td2526.6246.14343
																																															FAdd Td2520.6252.14337 Td2525.6253.14342
																																															Let Td2528.6248.14345
																																																Lfd m_vec.5809.14349 8
																																																Let Td2530.6249.14347
																																																	Lfd Ta771.3812 8
																																																	Let Td2531.6247.14348
																																																		FMul Td2528.6248.14345 Td2530.6249.14347
																																																		Let p.3843.7722.11917
																																																			FAdd Td2526.6246.14343 Td2531.6247.14348
																																																			Let Td2637.6382.14332
																																																				FLi 0.000000
																																																				Let Tb800.3847.7723.11918
																																																					IfFLE Td2637.6382.14332 p.3843.7722.11917
																																																						Ans
																																																							Li 0
																																																						Ans
																																																							Li 1
																																																					Let Ti801.3848.7724.11919
																																																						Li 0
																																																						Let Tu158.3844.7725.11920
																																																							IfEq Tb800.3847.7723.11918 Ti801.3848.7724.11919
																																																								Let Tt802.3855.7734.11927
																																																									Lwz Ta783.3833.7653 472
																																																									Let Td803.3857.7735.11928
																																																										FLi 150.000000
																																																										Let Td804.3858.7736.11929
																																																											FReciprocal Td803.3857.7735.11928
																																																											Let Td805.3856.7737.11930
																																																												FMul p.3843.7722.11917 Td804.3858.7736.11929
																																																												Ans
																																																													CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11927 f:Td805.3856.7737.11930 
																																																								Let Tt808.3849.7730.11923
																																																									Lwz Ta783.3833.7653 476
																																																									Let Td809.3851.7731.11924
																																																										FLi -150.000000
																																																										Let Td810.3852.7732.11925
																																																											FReciprocal Td809.3851.7731.11924
																																																											Let Td811.3850.7733.11926
																																																												FMul p.3843.7722.11917 Td810.3852.7732.11925
																																																												Ans
																																																													CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11923 f:Td811.3850.7733.11926 
																																																							Let Ti813.3845.7727.11921
																																																								Li 116
																																																								Ans
																																																									CallDir iter_trace_diffuse_rays.3005 d:Ta783.3833.7653 Ta771.3812 Ta772.3813 Ti813.3845.7727.11921 f:
																								Let Ti784.3828.7637
																									Li 2
																									Let Tu161.3818.7638
																										IfEq Ti770.3811 Ti784.3828.7637
																											Ans
																												Nop
																											Let Ta785.3830.7648
																												SetExt 716
																												Let Ta787.3829.7650
																													Lwz Ta785.3830.7648 8
																													Let Ta1497.4712.7738.11881
																														SetExt 648
																														Let Td2609.6353.14323
																															Lfd Ta772.3813 0
																															Let Tu6.6344.14324
																																Stfd Td2609.6353.14323 Ta1497.4712.7738.11881 0
																																Let Td2612.6350.14327
																																	Lfd Ta772.3813 4
																																	Let Tu5.6345.14328
																																		Stfd Td2612.6350.14327 Ta1497.4712.7738.11881 4
																																		Let Td2615.6347.14331
																																			Lfd Ta772.3813 8
																																			Let Tu105.4706.7739.11882
																																				Stfd Td2615.6347.14331 Ta1497.4712.7738.11881 8
																																				Let Ta1498.4710.7740.11883
																																					SetExt 0
																																					Let Ti1500.4708.7742.11885
																																						Lwz Ta1498.4710.7740.11883 0
																																						Let Ti1502.4707.7744.11887
																																							Sub Ti1500.4708.7742.11885 1
																																							Let Tu159.3840.11888
																																								CallDir setup_startp_constants.2907 d:Ta772.3813 Ti1502.4707.7744.11887 f:
																																								Let Tt798.3860.7720.11890
																																									Lwz Ta787.3829.7650 472
																																									Let m_vec.5809.14319
																																										Lwz Tt798.3860.7720.11890 0
																																										Let Td2517.6258.14304
																																											Lfd m_vec.5809.14319 0
																																											Let Td2519.6259.14306
																																												Lfd Ta771.3812 0
																																												Let Td2520.6252.14307
																																													FMul Td2517.6258.14304 Td2519.6259.14306
																																													Let Td2522.6254.14309
																																														Lfd m_vec.5809.14319 4
																																														Let Td2524.6255.14311
																																															Lfd Ta771.3812 4
																																															Let Td2525.6253.14312
																																																FMul Td2522.6254.14309 Td2524.6255.14311
																																																Let Td2526.6246.14313
																																																	FAdd Td2520.6252.14307 Td2525.6253.14312
																																																	Let Td2528.6248.14315
																																																		Lfd m_vec.5809.14319 8
																																																		Let Td2530.6249.14317
																																																			Lfd Ta771.3812 8
																																																			Let Td2531.6247.14318
																																																				FMul Td2528.6248.14315 Td2530.6249.14317
																																																				Let p.3843.7722.11892
																																																					FAdd Td2526.6246.14313 Td2531.6247.14318
																																																					Let Td2637.6382.14302
																																																						FLi 0.000000
																																																						Let Tb800.3847.7723.11893
																																																							IfFLE Td2637.6382.14302 p.3843.7722.11892
																																																								Ans
																																																									Li 0
																																																								Ans
																																																									Li 1
																																																							Let Ti801.3848.7724.11894
																																																								Li 0
																																																								Let Tu158.3844.7725.11895
																																																									IfEq Tb800.3847.7723.11893 Ti801.3848.7724.11894
																																																										Let Tt802.3855.7734.11902
																																																											Lwz Ta787.3829.7650 472
																																																											Let Td803.3857.7735.11903
																																																												FLi 150.000000
																																																												Let Td804.3858.7736.11904
																																																													FReciprocal Td803.3857.7735.11903
																																																													Let Td805.3856.7737.11905
																																																														FMul p.3843.7722.11892 Td804.3858.7736.11904
																																																														Ans
																																																															CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11902 f:Td805.3856.7737.11905 
																																																										Let Tt808.3849.7730.11898
																																																											Lwz Ta787.3829.7650 476
																																																											Let Td809.3851.7731.11899
																																																												FLi -150.000000
																																																												Let Td810.3852.7732.11900
																																																													FReciprocal Td809.3851.7731.11899
																																																													Let Td811.3850.7733.11901
																																																														FMul p.3843.7722.11892 Td810.3852.7732.11900
																																																														Ans
																																																															CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11898 f:Td811.3850.7733.11901 
																																																									Let Ti813.3845.7727.11896
																																																										Li 116
																																																										Ans
																																																											CallDir iter_trace_diffuse_rays.3005 d:Ta787.3829.7650 Ta771.3812 Ta772.3813 Ti813.3845.7727.11896 f:
																										Let Ti788.3824.7639
																											Li 3
																											Let Tu160.3819.7640
																												IfEq Ti770.3811 Ti788.3824.7639
																													Ans
																														Nop
																													Let Ta789.3826.7645
																														SetExt 716
																														Let Ta791.3825.7647
																															Lwz Ta789.3826.7645 12
																															Let Ta1497.4712.7738.11856
																																SetExt 648
																																Let Td2609.6353.14293
																																	Lfd Ta772.3813 0
																																	Let Tu6.6344.14294
																																		Stfd Td2609.6353.14293 Ta1497.4712.7738.11856 0
																																		Let Td2612.6350.14297
																																			Lfd Ta772.3813 4
																																			Let Tu5.6345.14298
																																				Stfd Td2612.6350.14297 Ta1497.4712.7738.11856 4
																																				Let Td2615.6347.14301
																																					Lfd Ta772.3813 8
																																					Let Tu105.4706.7739.11857
																																						Stfd Td2615.6347.14301 Ta1497.4712.7738.11856 8
																																						Let Ta1498.4710.7740.11858
																																							SetExt 0
																																							Let Ti1500.4708.7742.11860
																																								Lwz Ta1498.4710.7740.11858 0
																																								Let Ti1502.4707.7744.11862
																																									Sub Ti1500.4708.7742.11860 1
																																									Let Tu159.3840.11863
																																										CallDir setup_startp_constants.2907 d:Ta772.3813 Ti1502.4707.7744.11862 f:
																																										Let Tt798.3860.7720.11865
																																											Lwz Ta791.3825.7647 472
																																											Let m_vec.5809.14289
																																												Lwz Tt798.3860.7720.11865 0
																																												Let Td2517.6258.14274
																																													Lfd m_vec.5809.14289 0
																																													Let Td2519.6259.14276
																																														Lfd Ta771.3812 0
																																														Let Td2520.6252.14277
																																															FMul Td2517.6258.14274 Td2519.6259.14276
																																															Let Td2522.6254.14279
																																																Lfd m_vec.5809.14289 4
																																																Let Td2524.6255.14281
																																																	Lfd Ta771.3812 4
																																																	Let Td2525.6253.14282
																																																		FMul Td2522.6254.14279 Td2524.6255.14281
																																																		Let Td2526.6246.14283
																																																			FAdd Td2520.6252.14277 Td2525.6253.14282
																																																			Let Td2528.6248.14285
																																																				Lfd m_vec.5809.14289 8
																																																				Let Td2530.6249.14287
																																																					Lfd Ta771.3812 8
																																																					Let Td2531.6247.14288
																																																						FMul Td2528.6248.14285 Td2530.6249.14287
																																																						Let p.3843.7722.11867
																																																							FAdd Td2526.6246.14283 Td2531.6247.14288
																																																							Let Td2637.6382.14272
																																																								FLi 0.000000
																																																								Let Tb800.3847.7723.11868
																																																									IfFLE Td2637.6382.14272 p.3843.7722.11867
																																																										Ans
																																																											Li 0
																																																										Ans
																																																											Li 1
																																																									Let Ti801.3848.7724.11869
																																																										Li 0
																																																										Let Tu158.3844.7725.11870
																																																											IfEq Tb800.3847.7723.11868 Ti801.3848.7724.11869
																																																												Let Tt802.3855.7734.11877
																																																													Lwz Ta791.3825.7647 472
																																																													Let Td803.3857.7735.11878
																																																														FLi 150.000000
																																																														Let Td804.3858.7736.11879
																																																															FReciprocal Td803.3857.7735.11878
																																																															Let Td805.3856.7737.11880
																																																																FMul p.3843.7722.11867 Td804.3858.7736.11879
																																																																Ans
																																																																	CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11877 f:Td805.3856.7737.11880 
																																																												Let Tt808.3849.7730.11873
																																																													Lwz Ta791.3825.7647 476
																																																													Let Td809.3851.7731.11874
																																																														FLi -150.000000
																																																														Let Td810.3852.7732.11875
																																																															FReciprocal Td809.3851.7731.11874
																																																															Let Td811.3850.7733.11876
																																																																FMul p.3843.7722.11867 Td810.3852.7732.11875
																																																																Ans
																																																																	CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11873 f:Td811.3850.7733.11876 
																																																											Let Ti813.3845.7727.11871
																																																												Li 116
																																																												Ans
																																																													CallDir iter_trace_diffuse_rays.3005 d:Ta791.3825.7647 Ta771.3812 Ta772.3813 Ti813.3845.7727.11871 f:
																												Let Ti792.3820.7641
																													Li 4
																													Let Tu164.3807
																														IfEq Ti770.3811 Ti792.3820.7641
																															Ans
																																Nop
																															Let Ta793.3822.7642
																																SetExt 716
																																Let Ta795.3821.7644
																																	Lwz Ta793.3822.7642 16
																																	Let Ta1497.4712.7738.11831
																																		SetExt 648
																																		Let Td2609.6353.14263
																																			Lfd Ta772.3813 0
																																			Let Tu6.6344.14264
																																				Stfd Td2609.6353.14263 Ta1497.4712.7738.11831 0
																																				Let Td2612.6350.14267
																																					Lfd Ta772.3813 4
																																					Let Tu5.6345.14268
																																						Stfd Td2612.6350.14267 Ta1497.4712.7738.11831 4
																																						Let Td2615.6347.14271
																																							Lfd Ta772.3813 8
																																							Let Tu105.4706.7739.11832
																																								Stfd Td2615.6347.14271 Ta1497.4712.7738.11831 8
																																								Let Ta1498.4710.7740.11833
																																									SetExt 0
																																									Let Ti1500.4708.7742.11835
																																										Lwz Ta1498.4710.7740.11833 0
																																										Let Ti1502.4707.7744.11837
																																											Sub Ti1500.4708.7742.11835 1
																																											Let Tu159.3840.11838
																																												CallDir setup_startp_constants.2907 d:Ta772.3813 Ti1502.4707.7744.11837 f:
																																												Let Tt798.3860.7720.11840
																																													Lwz Ta795.3821.7644 472
																																													Let m_vec.5809.14259
																																														Lwz Tt798.3860.7720.11840 0
																																														Let Td2517.6258.14244
																																															Lfd m_vec.5809.14259 0
																																															Let Td2519.6259.14246
																																																Lfd Ta771.3812 0
																																																Let Td2520.6252.14247
																																																	FMul Td2517.6258.14244 Td2519.6259.14246
																																																	Let Td2522.6254.14249
																																																		Lfd m_vec.5809.14259 4
																																																		Let Td2524.6255.14251
																																																			Lfd Ta771.3812 4
																																																			Let Td2525.6253.14252
																																																				FMul Td2522.6254.14249 Td2524.6255.14251
																																																				Let Td2526.6246.14253
																																																					FAdd Td2520.6252.14247 Td2525.6253.14252
																																																					Let Td2528.6248.14255
																																																						Lfd m_vec.5809.14259 8
																																																						Let Td2530.6249.14257
																																																							Lfd Ta771.3812 8
																																																							Let Td2531.6247.14258
																																																								FMul Td2528.6248.14255 Td2530.6249.14257
																																																								Let p.3843.7722.11842
																																																									FAdd Td2526.6246.14253 Td2531.6247.14258
																																																									Let Td2637.6382.14242
																																																										FLi 0.000000
																																																										Let Tb800.3847.7723.11843
																																																											IfFLE Td2637.6382.14242 p.3843.7722.11842
																																																												Ans
																																																													Li 0
																																																												Ans
																																																													Li 1
																																																											Let Ti801.3848.7724.11844
																																																												Li 0
																																																												Let Tu158.3844.7725.11845
																																																													IfEq Tb800.3847.7723.11843 Ti801.3848.7724.11844
																																																														Let Tt802.3855.7734.11852
																																																															Lwz Ta795.3821.7644 472
																																																															Let Td803.3857.7735.11853
																																																																FLi 150.000000
																																																																Let Td804.3858.7736.11854
																																																																	FReciprocal Td803.3857.7735.11853
																																																																	Let Td805.3856.7737.11855
																																																																		FMul p.3843.7722.11842 Td804.3858.7736.11854
																																																																		Ans
																																																																			CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11852 f:Td805.3856.7737.11855 
																																																														Let Tt808.3849.7730.11848
																																																															Lwz Ta795.3821.7644 476
																																																															Let Td809.3851.7731.11849
																																																																FLi -150.000000
																																																																Let Td810.3852.7732.11850
																																																																	FReciprocal Td809.3851.7731.11849
																																																																	Let Td811.3850.7733.11851
																																																																		FMul p.3843.7722.11842 Td810.3852.7732.11850
																																																																		Ans
																																																																			CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11848 f:Td811.3850.7733.11851 
																																																													Let Ti813.3845.7727.11846
																																																														Li 116
																																																														Ans
																																																															CallDir iter_trace_diffuse_rays.3005 d:Ta795.3821.7644 Ta771.3812 Ta772.3813 Ti813.3845.7727.11846 f:
																														Let Ta773.3808
																															SetExt 604
																															Let o.15359
																																Slw nref.3020 2
																																Let Ta774.3809
																																	Lwz m_engy.5849.7681 o.15359
																																	Let Ta775.3810
																																		SetExt 592
																																		Let Td2412.6152.7606
																																			Lfd Ta773.3808 0
																																			Let Td2414.6154.7608
																																				Lfd Ta774.3809 0
																																				Let Td2416.6155.7610
																																					Lfd Ta775.3810 0
																																					Let Td2417.6153.7611
																																						FMul Td2414.6154.7608 Td2416.6155.7610
																																						Let Td2418.6151.7612
																																							FAdd Td2412.6152.7606 Td2417.6153.7611
																																							Let Tu20.6130.7613
																																								Stfd Td2418.6151.7612 Ta773.3808 0
																																								Let Td2421.6143.7616
																																									Lfd Ta773.3808 4
																																									Let Td2423.6145.7618
																																										Lfd Ta774.3809 4
																																										Let Td2425.6146.7620
																																											Lfd Ta775.3810 4
																																											Let Td2426.6144.7621
																																												FMul Td2423.6145.7618 Td2425.6146.7620
																																												Let Td2427.6142.7622
																																													FAdd Td2421.6143.7616 Td2426.6144.7621
																																													Let Tu19.6131.7623
																																														Stfd Td2427.6142.7622 Ta773.3808 4
																																														Let Td2430.6134.7626
																																															Lfd Ta773.3808 8
																																															Let Td2432.6136.7628
																																																Lfd Ta774.3809 8
																																																Let Td2434.6137.7630
																																																	Lfd Ta775.3810 8
																																																	Let Td2435.6135.7631
																																																		FMul Td2432.6136.7628 Td2434.6137.7630
																																																		Let Td2436.6133.7632
																																																			FAdd Td2430.6134.7626 Td2435.6135.7631
																																																			Ans
																																																				Stfd Td2436.6133.7632 Ta773.3808 8
calc_diffuse_using_5points.3021 (args) : x.3022 prev.3023 cur.3024 next.3025 nref.3026 (fargs) : 
	Let o.15372
		Slw x.3022 2
		Let Tt745.3801
			Lwz prev.3023 o.15372
			Let m_r20p.5842.7601
				Lwz Tt745.3801 20
				Let Ti747.3799
					Sub x.3022 1
					Let o.15373
						Slw Ti747.3799 2
						Let Tt748.3798
							Lwz cur.3024 o.15373
							Let m_r20p.5842.7593
								Lwz Tt748.3798 20
								Let o.15374
									Slw x.3022 2
									Let Tt749.3797
										Lwz cur.3024 o.15374
										Let m_r20p.5842.7585
											Lwz Tt749.3797 20
											Let Ti751.3795
												Add x.3022 1
												Let o.15375
													Slw Ti751.3795 2
													Let Tt752.3794
														Lwz cur.3024 o.15375
														Let m_r20p.5842.7577
															Lwz Tt752.3794 20
															Let o.15376
																Slw x.3022 2
																Let Tt753.3793
																	Lwz next.3025 o.15376
																	Let m_r20p.5842.7569
																		Lwz Tt753.3793 20
																		Let Ta754.3791
																			SetExt 592
																			Let o.15377
																				Slw nref.3026 2
																				Let Ta755.3792
																					Lwz m_r20p.5842.7601 o.15377
																					Let Td2609.6353.7555
																						Lfd Ta755.3792 0
																						Let Tu6.6344.7556
																							Stfd Td2609.6353.7555 Ta754.3791 0
																							Let Td2612.6350.7559
																								Lfd Ta755.3792 4
																								Let Tu5.6345.7560
																									Stfd Td2612.6350.7559 Ta754.3791 4
																									Let Td2615.6347.7563
																										Lfd Ta755.3792 8
																										Let Tu170.3773
																											Stfd Td2615.6347.7563 Ta754.3791 8
																											Let Ta756.3789
																												SetExt 592
																												Let o.15384
																													Slw nref.3026 2
																													Let Ta757.3790
																														Lwz m_r20p.5842.7593 o.15384
																														Let Td2469.6209.7535
																															Lfd Ta756.3789 0
																															Let Td2471.6210.7537
																																Lfd Ta757.3790 0
																																Let Td2472.6208.7538
																																	FAdd Td2469.6209.7535 Td2471.6210.7537
																																	Let Tu14.6193.7539
																																		Stfd Td2472.6208.7538 Ta756.3789 0
																																		Let Td2475.6203.7542
																																			Lfd Ta756.3789 4
																																			Let Td2477.6204.7544
																																				Lfd Ta757.3790 4
																																				Let Td2478.6202.7545
																																					FAdd Td2475.6203.7542 Td2477.6204.7544
																																					Let Tu13.6194.7546
																																						Stfd Td2478.6202.7545 Ta756.3789 4
																																						Let Td2481.6197.7549
																																							Lfd Ta756.3789 8
																																							Let Td2483.6198.7551
																																								Lfd Ta757.3790 8
																																								Let Td2484.6196.7552
																																									FAdd Td2481.6197.7549 Td2483.6198.7551
																																									Let Tu169.3774
																																										Stfd Td2484.6196.7552 Ta756.3789 8
																																										Let Ta758.3787
																																											SetExt 592
																																											Let o.15394
																																												Slw nref.3026 2
																																												Let Ta759.3788
																																													Lwz m_r20p.5842.7585 o.15394
																																													Let Td2469.6209.7515
																																														Lfd Ta758.3787 0
																																														Let Td2471.6210.7517
																																															Lfd Ta759.3788 0
																																															Let Td2472.6208.7518
																																																FAdd Td2469.6209.7515 Td2471.6210.7517
																																																Let Tu14.6193.7519
																																																	Stfd Td2472.6208.7518 Ta758.3787 0
																																																	Let Td2475.6203.7522
																																																		Lfd Ta758.3787 4
																																																		Let Td2477.6204.7524
																																																			Lfd Ta759.3788 4
																																																			Let Td2478.6202.7525
																																																				FAdd Td2475.6203.7522 Td2477.6204.7524
																																																				Let Tu13.6194.7526
																																																					Stfd Td2478.6202.7525 Ta758.3787 4
																																																					Let Td2481.6197.7529
																																																						Lfd Ta758.3787 8
																																																						Let Td2483.6198.7531
																																																							Lfd Ta759.3788 8
																																																							Let Td2484.6196.7532
																																																								FAdd Td2481.6197.7529 Td2483.6198.7531
																																																								Let Tu168.3775
																																																									Stfd Td2484.6196.7532 Ta758.3787 8
																																																									Let Ta760.3785
																																																										SetExt 592
																																																										Let o.15404
																																																											Slw nref.3026 2
																																																											Let Ta761.3786
																																																												Lwz m_r20p.5842.7577 o.15404
																																																												Let Td2469.6209.7495
																																																													Lfd Ta760.3785 0
																																																													Let Td2471.6210.7497
																																																														Lfd Ta761.3786 0
																																																														Let Td2472.6208.7498
																																																															FAdd Td2469.6209.7495 Td2471.6210.7497
																																																															Let Tu14.6193.7499
																																																																Stfd Td2472.6208.7498 Ta760.3785 0
																																																																Let Td2475.6203.7502
																																																																	Lfd Ta760.3785 4
																																																																	Let Td2477.6204.7504
																																																																		Lfd Ta761.3786 4
																																																																		Let Td2478.6202.7505
																																																																			FAdd Td2475.6203.7502 Td2477.6204.7504
																																																																			Let Tu13.6194.7506
																																																																				Stfd Td2478.6202.7505 Ta760.3785 4
																																																																				Let Td2481.6197.7509
																																																																					Lfd Ta760.3785 8
																																																																					Let Td2483.6198.7511
																																																																						Lfd Ta761.3786 8
																																																																						Let Td2484.6196.7512
																																																																							FAdd Td2481.6197.7509 Td2483.6198.7511
																																																																							Let Tu167.3776
																																																																								Stfd Td2484.6196.7512 Ta760.3785 8
																																																																								Let Ta762.3783
																																																																									SetExt 592
																																																																									Let o.15414
																																																																										Slw nref.3026 2
																																																																										Let Ta763.3784
																																																																											Lwz m_r20p.5842.7569 o.15414
																																																																											Let Td2469.6209.7475
																																																																												Lfd Ta762.3783 0
																																																																												Let Td2471.6210.7477
																																																																													Lfd Ta763.3784 0
																																																																													Let Td2472.6208.7478
																																																																														FAdd Td2469.6209.7475 Td2471.6210.7477
																																																																														Let Tu14.6193.7479
																																																																															Stfd Td2472.6208.7478 Ta762.3783 0
																																																																															Let Td2475.6203.7482
																																																																																Lfd Ta762.3783 4
																																																																																Let Td2477.6204.7484
																																																																																	Lfd Ta763.3784 4
																																																																																	Let Td2478.6202.7485
																																																																																		FAdd Td2475.6203.7482 Td2477.6204.7484
																																																																																		Let Tu13.6194.7486
																																																																																			Stfd Td2478.6202.7485 Ta762.3783 4
																																																																																			Let Td2481.6197.7489
																																																																																				Lfd Ta762.3783 8
																																																																																				Let Td2483.6198.7491
																																																																																					Lfd Ta763.3784 8
																																																																																					Let Td2484.6196.7492
																																																																																						FAdd Td2481.6197.7489 Td2483.6198.7491
																																																																																						Let Tu166.3777
																																																																																							Stfd Td2484.6196.7492 Ta762.3783 8
																																																																																							Let o.15424
																																																																																								Slw x.3022 2
																																																																																								Let Tt764.3782
																																																																																									Lwz cur.3024 o.15424
																																																																																									Let m_engy.5849.7469
																																																																																										Lwz Tt764.3782 16
																																																																																										Let Ta765.3779
																																																																																											SetExt 604
																																																																																											Let o.15425
																																																																																												Slw nref.3026 2
																																																																																												Let Ta766.3780
																																																																																													Lwz m_engy.5849.7469 o.15425
																																																																																													Let Ta767.3781
																																																																																														SetExt 592
																																																																																														Let Td2412.6152.7438
																																																																																															Lfd Ta765.3779 0
																																																																																															Let Td2414.6154.7440
																																																																																																Lfd Ta766.3780 0
																																																																																																Let Td2416.6155.7442
																																																																																																	Lfd Ta767.3781 0
																																																																																																	Let Td2417.6153.7443
																																																																																																		FMul Td2414.6154.7440 Td2416.6155.7442
																																																																																																		Let Td2418.6151.7444
																																																																																																			FAdd Td2412.6152.7438 Td2417.6153.7443
																																																																																																			Let Tu20.6130.7445
																																																																																																				Stfd Td2418.6151.7444 Ta765.3779 0
																																																																																																				Let Td2421.6143.7448
																																																																																																					Lfd Ta765.3779 4
																																																																																																					Let Td2423.6145.7450
																																																																																																						Lfd Ta766.3780 4
																																																																																																						Let Td2425.6146.7452
																																																																																																							Lfd Ta767.3781 4
																																																																																																							Let Td2426.6144.7453
																																																																																																								FMul Td2423.6145.7450 Td2425.6146.7452
																																																																																																								Let Td2427.6142.7454
																																																																																																									FAdd Td2421.6143.7448 Td2426.6144.7453
																																																																																																									Let Tu19.6131.7455
																																																																																																										Stfd Td2427.6142.7454 Ta765.3779 4
																																																																																																										Let Td2430.6134.7458
																																																																																																											Lfd Ta765.3779 8
																																																																																																											Let Td2432.6136.7460
																																																																																																												Lfd Ta766.3780 8
																																																																																																												Let Td2434.6137.7462
																																																																																																													Lfd Ta767.3781 8
																																																																																																													Let Td2435.6135.7463
																																																																																																														FMul Td2432.6136.7460 Td2434.6137.7462
																																																																																																														Let Td2436.6133.7464
																																																																																																															FAdd Td2430.6134.7458 Td2435.6135.7463
																																																																																																															Ans
																																																																																																																Stfd Td2436.6133.7464 Ta765.3779 8
do_without_neighbors.3027 (args) : pixel.3028 nref.3029 (fargs) : 
	Let Ti738.3758
		Li 4
		Ans
			IfLE nref.3029 Ti738.3758
				Let m_sids.5863.7430
					Lwz pixel.3028 8
					Let Ti739.3760
						Li 0
						Let o.15438
							Slw nref.3029 2
							Let Ti740.3761
								Lwz m_sids.5863.7430 o.15438
								Ans
									IfLE Ti739.3760 Ti740.3761
										Let m_cdif.5856.7423
											Lwz pixel.3028 12
											Let o.15439
												Slw nref.3029 2
												Let Tb741.3766
													Lwz m_cdif.5856.7423 o.15439
													Let Ti742.3767
														Li 0
														Let Tu171.3763
															IfEq Tb741.3766 Ti742.3767
																Ans
																	Nop
																Let m_r20p.5842.11828
																	Lwz pixel.3028 20
																	Let m_nvectors.5818.11822
																		Lwz pixel.3028 28
																		Let m_isect_ps.5870.11808
																			Lwz pixel.3028 4
																			Let m_engy.5849.11803
																				Lwz pixel.3028 16
																				Let Ta768.3814.7410
																					SetExt 592
																					Let o.15440
																						Slw nref.3029 2
																						Let Ta769.3815.7411
																							Lwz m_r20p.5842.11828 o.15440
																							Let Td2609.6353.11790
																								Lfd Ta769.3815.7411 0
																								Let Tu6.6344.11791
																									Stfd Td2609.6353.11790 Ta768.3814.7410 0
																									Let Td2612.6350.11794
																										Lfd Ta769.3815.7411 4
																										Let Tu5.6345.11795
																											Stfd Td2612.6350.11794 Ta768.3814.7410 4
																											Let Td2615.6347.11798
																												Lfd Ta769.3815.7411 8
																												Let Tu165.3806.7412
																													Stfd Td2615.6347.11798 Ta768.3814.7410 8
																													Let m_gid.5834.11785
																														Lwz pixel.3028 24
																														Let Ti770.3811.7413
																															Lwz m_gid.5834.11785 0
																															Let o.15448
																																Slw nref.3029 2
																																Let Ta771.3812.7414
																																	Lwz m_nvectors.5818.11822 o.15448
																																	Let o.15449
																																		Slw nref.3029 2
																																		Let Ta772.3813.7415
																																			Lwz m_isect_ps.5870.11808 o.15449
																																			Let Tu164.3807.7416
																																				CallDir trace_diffuse_ray_80percent.3014 d:Ti770.3811.7413 Ta771.3812.7414 Ta772.3813.7415 f:
																																				Let Ta773.3808.7417
																																					SetExt 604
																																					Let o.15450
																																						Slw nref.3029 2
																																						Let Ta774.3809.7418
																																							Lwz m_engy.5849.11803 o.15450
																																							Let Ta775.3810.7419
																																								SetExt 592
																																								Let Td2412.6152.11752
																																									Lfd Ta773.3808.7417 0
																																									Let Td2414.6154.11754
																																										Lfd Ta774.3809.7418 0
																																										Let Td2416.6155.11756
																																											Lfd Ta775.3810.7419 0
																																											Let Td2417.6153.11757
																																												FMul Td2414.6154.11754 Td2416.6155.11756
																																												Let Td2418.6151.11758
																																													FAdd Td2412.6152.11752 Td2417.6153.11757
																																													Let Tu20.6130.11759
																																														Stfd Td2418.6151.11758 Ta773.3808.7417 0
																																														Let Td2421.6143.11762
																																															Lfd Ta773.3808.7417 4
																																															Let Td2423.6145.11764
																																																Lfd Ta774.3809.7418 4
																																																Let Td2425.6146.11766
																																																	Lfd Ta775.3810.7419 4
																																																	Let Td2426.6144.11767
																																																		FMul Td2423.6145.11764 Td2425.6146.11766
																																																		Let Td2427.6142.11768
																																																			FAdd Td2421.6143.11762 Td2426.6144.11767
																																																			Let Tu19.6131.11769
																																																				Stfd Td2427.6142.11768 Ta773.3808.7417 4
																																																				Let Td2430.6134.11772
																																																					Lfd Ta773.3808.7417 8
																																																					Let Td2432.6136.11774
																																																						Lfd Ta774.3809.7418 8
																																																						Let Td2434.6137.11776
																																																							Lfd Ta775.3810.7419 8
																																																							Let Td2435.6135.11777
																																																								FMul Td2432.6136.11774 Td2434.6137.11776
																																																								Let Td2436.6133.11778
																																																									FAdd Td2430.6134.11772 Td2435.6135.11777
																																																									Ans
																																																										Stfd Td2436.6133.11778 Ta773.3808.7417 8
															Let Ti744.3764
																Add nref.3029 1
																Let Ti738.3758.7396
																	Li 4
																	Ans
																		IfLE Ti744.3764 Ti738.3758.7396
																			Let m_sids.5863.11744
																				Lwz pixel.3028 8
																				Let Ti739.3760.7398
																					Li 0
																					Let o.15463
																						Slw Ti744.3764 2
																						Let Ti740.3761.7399
																							Lwz m_sids.5863.11744 o.15463
																							Ans
																								IfLE Ti739.3760.7398 Ti740.3761.7399
																									Let m_cdif.5856.11737
																										Lwz pixel.3028 12
																										Let o.15464
																											Slw Ti744.3764 2
																											Let Tb741.3766.7401
																												Lwz m_cdif.5856.11737 o.15464
																												Let Ti742.3767.7402
																													Li 0
																													Let Tu171.3763.7403
																														IfEq Tb741.3766.7401 Ti742.3767.7402
																															Ans
																																Nop
																															Ans
																																CallDir calc_diffuse_using_1point.3018 d:pixel.3028 Ti744.3764 f:
																														Let Ti744.3764.7405
																															Add Ti744.3764 1
																															Ans
																																CallDir do_without_neighbors.3027 d:pixel.3028 Ti744.3764.7405 f:
																									Ans
																										Nop
																			Ans
																				Nop
										Ans
											Nop
				Ans
					Nop
try_exploit_neighbors.3043 (args) : x.3044 y.3045 prev.3046 cur.3047 next.3048 nref.3049 (fargs) : 
	Let o.15465
		Slw x.3044 2
		Let pixel.3718
			Lwz cur.3047 o.15465
			Let Ti703.3719
				Li 4
				Ans
					IfLE nref.3049 Ti703.3719
						Let Ti704.3720
							Li 0
							Let m_sids.5863.11688
								Lwz pixel.3718 8
								Let o.15466
									Slw nref.3049 2
									Let Ti705.3721
										Lwz m_sids.5863.11688 o.15466
										Ans
											IfLE Ti704.3720 Ti705.3721
												Let o.15467
													Slw x.3044 2
													Let Tt713.3744.7368
														Lwz cur.3047 o.15467
														Let m_sids.5863.7390.11679
															Lwz Tt713.3744.7368 8
															Let o.15468
																Slw nref.3049 2
																Let sid_center.3731.7369
																	Lwz m_sids.5863.7390.11679 o.15468
																	Let o.15469
																		Slw x.3044 2
																		Let Tt714.3743.7370
																			Lwz prev.3046 o.15469
																			Let m_sids.5863.7390.11670
																				Lwz Tt714.3743.7370 8
																				Let o.15470
																					Slw nref.3049 2
																					Let Ti715.3732.7371
																						Lwz m_sids.5863.7390.11670 o.15470
																						Let Tb706.3722
																							IfEq Ti715.3732.7371 sid_center.3731.7369
																								Let o.15471
																									Slw x.3044 2
																									Let Tt716.3742.7372
																										Lwz next.3048 o.15471
																										Let m_sids.5863.7390.11661
																											Lwz Tt716.3742.7372 8
																											Let o.15472
																												Slw nref.3049 2
																												Let Ti717.3733.7373
																													Lwz m_sids.5863.7390.11661 o.15472
																													Ans
																														IfEq Ti717.3733.7373 sid_center.3731.7369
																															Let Ti719.3740.7375
																																Sub x.3044 1
																																Let o.15473
																																	Slw Ti719.3740.7375 2
																																	Let Tt720.3739.7376
																																		Lwz cur.3047 o.15473
																																		Let m_sids.5863.7390.11652
																																			Lwz Tt720.3739.7376 8
																																			Let o.15474
																																				Slw nref.3049 2
																																				Let Ti721.3734.7377
																																					Lwz m_sids.5863.7390.11652 o.15474
																																					Ans
																																						IfEq Ti721.3734.7377 sid_center.3731.7369
																																							Let Ti723.3737.7379
																																								Add x.3044 1
																																								Let o.15475
																																									Slw Ti723.3737.7379 2
																																									Let Tt724.3736.7380
																																										Lwz cur.3047 o.15475
																																										Let m_sids.5863.7390.11643
																																											Lwz Tt724.3736.7380 8
																																											Let o.15476
																																												Slw nref.3049 2
																																												Let Ti725.3735.7381
																																													Lwz m_sids.5863.7390.11643 o.15476
																																													Ans
																																														IfEq Ti725.3735.7381 sid_center.3731.7369
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
																							Let Ti707.3723
																								Li 0
																								Ans
																									IfEq Tb706.3722 Ti707.3723
																										Let o.15492
																											Slw x.3044 2
																											Let Tt708.3730
																												Lwz cur.3047 o.15492
																												Let Ti738.3758.7358
																													Li 4
																													Ans
																														IfLE nref.3049 Ti738.3758.7358
																															Let m_sids.5863.11635
																																Lwz Tt708.3730 8
																																Let Ti739.3760.7360
																																	Li 0
																																	Let o.15493
																																		Slw nref.3049 2
																																		Let Ti740.3761.7361
																																			Lwz m_sids.5863.11635 o.15493
																																			Ans
																																				IfLE Ti739.3760.7360 Ti740.3761.7361
																																					Let m_cdif.5856.11628
																																						Lwz Tt708.3730 12
																																						Let o.15494
																																							Slw nref.3049 2
																																							Let Tb741.3766.7363
																																								Lwz m_cdif.5856.11628 o.15494
																																								Let Ti742.3767.7364
																																									Li 0
																																									Let Tu171.3763.7365
																																										IfEq Tb741.3766.7363 Ti742.3767.7364
																																											Ans
																																												Nop
																																											Ans
																																												CallDir calc_diffuse_using_1point.3018 d:Tt708.3730 nref.3049 f:
																																										Let Ti744.3764.7367
																																											Add nref.3049 1
																																											Ans
																																												CallDir do_without_neighbors.3027 d:Tt708.3730 Ti744.3764.7367 f:
																																					Ans
																																						Nop
																															Ans
																																Nop
																										Let m_cdif.5856.7353
																											Lwz pixel.3718 12
																											Let o.15477
																												Slw nref.3049 2
																												Let Tb709.3728
																													Lwz m_cdif.5856.7353 o.15477
																													Let Ti710.3729
																														Li 0
																														Let Tu172.3725
																															IfEq Tb709.3728 Ti710.3729
																																Ans
																																	Nop
																																Ans
																																	CallDir calc_diffuse_using_5points.3021 d:x.3044 prev.3046 cur.3047 next.3048 nref.3049 f:
																															Let Ti712.3726
																																Add nref.3049 1
																																Let o.15478
																																	Slw x.3044 2
																																	Let pixel.3718.7337
																																		Lwz cur.3047 o.15478
																																		Let Ti703.3719.7338
																																			Li 4
																																			Ans
																																				IfLE Ti712.3726 Ti703.3719.7338
																																					Let Ti704.3720.7339
																																						Li 0
																																						Let m_sids.5863.7390.11618
																																							Lwz pixel.3718.7337 8
																																							Let o.15479
																																								Slw Ti712.3726 2
																																								Let Ti705.3721.7340
																																									Lwz m_sids.5863.7390.11618 o.15479
																																									Ans
																																										IfLE Ti704.3720.7339 Ti705.3721.7340
																																											Let o.15480
																																												Slw x.3044 2
																																												Let Tt713.3744.11597
																																													Lwz cur.3047 o.15480
																																													Let m_sids.5863.14236
																																														Lwz Tt713.3744.11597 8
																																														Let o.15481
																																															Slw Ti712.3726 2
																																															Let sid_center.3731.11599
																																																Lwz m_sids.5863.14236 o.15481
																																																Let o.15482
																																																	Slw x.3044 2
																																																	Let Tt714.3743.11600
																																																		Lwz prev.3046 o.15482
																																																		Let m_sids.5863.14228
																																																			Lwz Tt714.3743.11600 8
																																																			Let o.15483
																																																				Slw Ti712.3726 2
																																																				Let Ti715.3732.11602
																																																					Lwz m_sids.5863.14228 o.15483
																																																					Let Tb706.3722.7341
																																																						IfEq Ti715.3732.11602 sid_center.3731.11599
																																																							Let o.15484
																																																								Slw x.3044 2
																																																								Let Tt716.3742.11603
																																																									Lwz next.3048 o.15484
																																																									Let m_sids.5863.14220
																																																										Lwz Tt716.3742.11603 8
																																																										Let o.15485
																																																											Slw Ti712.3726 2
																																																											Let Ti717.3733.11605
																																																												Lwz m_sids.5863.14220 o.15485
																																																												Ans
																																																													IfEq Ti717.3733.11605 sid_center.3731.11599
																																																														Let Ti719.3740.11607
																																																															Sub x.3044 1
																																																															Let o.15486
																																																																Slw Ti719.3740.11607 2
																																																																Let Tt720.3739.11608
																																																																	Lwz cur.3047 o.15486
																																																																	Let m_sids.5863.14212
																																																																		Lwz Tt720.3739.11608 8
																																																																		Let o.15487
																																																																			Slw Ti712.3726 2
																																																																			Let Ti721.3734.11610
																																																																				Lwz m_sids.5863.14212 o.15487
																																																																				Ans
																																																																					IfEq Ti721.3734.11610 sid_center.3731.11599
																																																																						Let Ti723.3737.11612
																																																																							Add x.3044 1
																																																																							Let o.15488
																																																																								Slw Ti723.3737.11612 2
																																																																								Let Tt724.3736.11613
																																																																									Lwz cur.3047 o.15488
																																																																									Let m_sids.5863.14204
																																																																										Lwz Tt724.3736.11613 8
																																																																										Let o.15489
																																																																											Slw Ti712.3726 2
																																																																											Let Ti725.3735.11615
																																																																												Lwz m_sids.5863.14204 o.15489
																																																																												Ans
																																																																													IfEq Ti725.3735.11615 sid_center.3731.11599
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
																																																						Let Ti707.3723.7342
																																																							Li 0
																																																							Ans
																																																								IfEq Tb706.3722.7341 Ti707.3723.7342
																																																									Let o.15491
																																																										Slw x.3044 2
																																																										Let Tt708.3730.7349
																																																											Lwz cur.3047 o.15491
																																																											Ans
																																																												CallDir do_without_neighbors.3027 d:Tt708.3730.7349 Ti712.3726 f:
																																																									Let m_cdif.5856.11592
																																																										Lwz pixel.3718.7337 12
																																																										Let o.15490
																																																											Slw Ti712.3726 2
																																																											Let Tb709.3728.7344
																																																												Lwz m_cdif.5856.11592 o.15490
																																																												Let Ti710.3729.7345
																																																													Li 0
																																																													Let Tu172.3725.7346
																																																														IfEq Tb709.3728.7344 Ti710.3729.7345
																																																															Ans
																																																																Nop
																																																															Ans
																																																																CallDir calc_diffuse_using_5points.3021 d:x.3044 prev.3046 cur.3047 next.3048 Ti712.3726 f:
																																																														Let Ti712.3726.7348
																																																															Add Ti712.3726 1
																																																															Ans
																																																																CallDir try_exploit_neighbors.3043 d:x.3044 y.3045 prev.3046 cur.3047 next.3048 Ti712.3726.7348 f:
																																											Ans
																																												Nop
																																					Ans
																																						Nop
												Ans
													Nop
						Ans
							Nop
write_rgb.3054 (args) : (fargs) : 
	Let Ta674.3689
		SetExt 604
		Let Td676.3688
			Lfd Ta674.3689 0
			Let ix.3691.7333
				CallDir min_caml_int_of_float d:f:Td676.3688 
				Let Ti686.3693.7334
					Li 255
					Let elem.3692.7335
						IfLE ix.3691.7333 Ti686.3693.7334
							Let Ti687.3694.7336
								Li 0
								Ans
									IfLE Ti687.3694.7336 ix.3691.7333
										Ans
											Mr ix.3691.7333
										Ans
											Li 0
							Ans
								Li 255
						Let Tu187.3674
							CallDir min_caml_print_int d:elem.3692.7335 f:
							Let Ti677.3687
								Li 32
								Let Tu186.3675
									CallDir min_caml_print_byte d:Ti677.3687 f:
									Let Ta678.3685
										SetExt 604
										Let Td680.3684
											Lfd Ta678.3685 4
											Let ix.3691.7329
												CallDir min_caml_int_of_float d:f:Td680.3684 
												Let Ti686.3693.7330
													Li 255
													Let elem.3692.7331
														IfLE ix.3691.7329 Ti686.3693.7330
															Let Ti687.3694.7332
																Li 0
																Ans
																	IfLE Ti687.3694.7332 ix.3691.7329
																		Ans
																			Mr ix.3691.7329
																		Ans
																			Li 0
															Ans
																Li 255
														Let Tu185.3676
															CallDir min_caml_print_int d:elem.3692.7331 f:
															Let Ti681.3683
																Li 32
																Let Tu184.3677
																	CallDir min_caml_print_byte d:Ti681.3683 f:
																	Let Ta682.3681
																		SetExt 604
																		Let Td684.3680
																			Lfd Ta682.3681 8
																			Let ix.3691.7325
																				CallDir min_caml_int_of_float d:f:Td684.3680 
																				Let Ti686.3693.7326
																					Li 255
																					Let elem.3692.7327
																						IfLE ix.3691.7325 Ti686.3693.7326
																							Let Ti687.3694.7328
																								Li 0
																								Ans
																									IfLE Ti687.3694.7328 ix.3691.7325
																										Ans
																											Mr ix.3691.7325
																										Ans
																											Li 0
																							Ans
																								Li 255
																						Let Tu183.3678
																							CallDir min_caml_print_int d:elem.3692.7327 f:
																							Let Ti685.3679
																								Li 10
																								Ans
																									CallDir min_caml_print_byte d:Ti685.3679 f:
pretrace_diffuse_rays.3056 (args) : pixel.3057 nref.3058 (fargs) : 
	Let Ti661.3652
		Li 4
		Ans
			IfLE nref.3058 Ti661.3652
				Let m_sids.5863.11583
					Lwz pixel.3057 8
					Let o.15498
						Slw nref.3058 2
						Let sid.3653
							Lwz m_sids.5863.11583 o.15498
							Let Ti662.3654
								Li 0
								Ans
									IfLE Ti662.3654 sid.3653
										Let m_cdif.5856.7319
											Lwz pixel.3057 12
											Let o.15499
												Slw nref.3058 2
												Let Tb663.3659
													Lwz m_cdif.5856.7319 o.15499
													Let Ti664.3660
														Li 0
														Let Tu190.3656
															IfEq Tb663.3659 Ti664.3660
																Ans
																	Nop
																Let m_gid.5834.7313
																	Lwz pixel.3057 24
																	Let group_id.3661
																		Lwz m_gid.5834.7313 0
																		Let Ta665.3673
																			SetExt 592
																			Let Td2616.6355.7306
																				FLi 0.000000
																				Let Tu4.6356.11577
																					Stfd Td2616.6355.7306 Ta665.3673 0
																					Let Tu3.6357.11579
																						Stfd Td2616.6355.7306 Ta665.3673 4
																						Let Tu189.3662
																							Stfd Td2616.6355.7306 Ta665.3673 8
																							Let m_nvectors.5818.7305
																								Lwz pixel.3057 28
																								Let m_isect_ps.5870.7291
																									Lwz pixel.3057 4
																									Let Ta666.3672
																										SetExt 716
																										Let o.15504
																											Slw group_id.3661 2
																											Let Ta667.3669
																												Lwz Ta666.3672 o.15504
																												Let o.15505
																													Slw nref.3058 2
																													Let Ta668.3670
																														Lwz m_nvectors.5818.7305 o.15505
																														Let o.15506
																															Slw nref.3058 2
																															Let Ta669.3671
																																Lwz m_isect_ps.5870.7291 o.15506
																																Let Ta1497.4712.11558
																																	SetExt 648
																																	Let Td2609.6353.9241.11561
																																		Lfd Ta669.3671 0
																																		Let Tu6.6344.9242.11562
																																			Stfd Td2609.6353.9241.11561 Ta1497.4712.11558 0
																																			Let Td2612.6350.9245.11565
																																				Lfd Ta669.3671 4
																																				Let Tu5.6345.9246.11566
																																					Stfd Td2612.6350.9245.11565 Ta1497.4712.11558 4
																																					Let Td2615.6347.9249.11569
																																						Lfd Ta669.3671 8
																																						Let Tu105.4706.11570
																																							Stfd Td2615.6347.9249.11569 Ta1497.4712.11558 8
																																							Let Ta1498.4710.11571
																																								SetExt 0
																																								Let Ti1500.4708.11573
																																									Lwz Ta1498.4710.11571 0
																																									Let Ti1502.4707.11575
																																										Sub Ti1500.4708.11573 1
																																										Let Tu159.3840.7288
																																											CallDir setup_startp_constants.2907 d:Ta669.3671 Ti1502.4707.11575 f:
																																											Let Ti796.3841.7289
																																												Li 118
																																												Let Tu188.3665
																																													CallDir iter_trace_diffuse_rays.3005 d:Ta667.3669 Ta668.3670 Ta669.3671 Ti796.3841.7289 f:
																																													Let m_r20p.5842.7285
																																														Lwz pixel.3057 20
																																														Let o.15514
																																															Slw nref.3058 2
																																															Let Ta670.3667
																																																Lwz m_r20p.5842.7285 o.15514
																																																Let Ta671.3668
																																																	SetExt 592
																																																	Let Td2609.6353.7271
																																																		Lfd Ta671.3668 0
																																																		Let Tu6.6344.7272
																																																			Stfd Td2609.6353.7271 Ta670.3667 0
																																																			Let Td2612.6350.7275
																																																				Lfd Ta671.3668 4
																																																				Let Tu5.6345.7276
																																																					Stfd Td2612.6350.7275 Ta670.3667 4
																																																					Let Td2615.6347.7279
																																																						Lfd Ta671.3668 8
																																																						Ans
																																																							Stfd Td2615.6347.7279 Ta670.3667 8
															Let Ti673.3657
																Add nref.3058 1
																Let Ti661.3652.7247
																	Li 4
																	Ans
																		IfLE Ti673.3657 Ti661.3652.7247
																			Let m_sids.5863.7390.11551
																				Lwz pixel.3057 8
																				Let o.15521
																					Slw Ti673.3657 2
																					Let sid.3653.7248
																						Lwz m_sids.5863.7390.11551 o.15521
																						Let Ti662.3654.7249
																							Li 0
																							Ans
																								IfLE Ti662.3654.7249 sid.3653.7248
																									Let m_cdif.5856.11544
																										Lwz pixel.3057 12
																										Let o.15522
																											Slw Ti673.3657 2
																											Let Tb663.3659.7251
																												Lwz m_cdif.5856.11544 o.15522
																												Let Ti664.3660.7252
																													Li 0
																													Let Tu190.3656.7253
																														IfEq Tb663.3659.7251 Ti664.3660.7252
																															Ans
																																Nop
																															Let m_gid.5834.11538
																																Lwz pixel.3057 24
																																Let group_id.3661.7256
																																	Lwz m_gid.5834.11538 0
																																	Let Ta665.3673.7257
																																		SetExt 592
																																		Let Td2616.6355.11526
																																			FLi 0.000000
																																			Let Tu4.6356.10486.11528
																																				Stfd Td2616.6355.11526 Ta665.3673.7257 0
																																				Let Tu3.6357.10488.11530
																																					Stfd Td2616.6355.11526 Ta665.3673.7257 4
																																					Let Tu189.3662.7258
																																						Stfd Td2616.6355.11526 Ta665.3673.7257 8
																																						Let m_nvectors.5818.11525
																																							Lwz pixel.3057 28
																																							Let m_isect_ps.5870.11511
																																								Lwz pixel.3057 4
																																								Let Ta666.3672.7261
																																									SetExt 716
																																									Let o.15527
																																										Slw group_id.3661.7256 2
																																										Let Ta667.3669.7262
																																											Lwz Ta666.3672.7261 o.15527
																																											Let o.15528
																																												Slw Ti673.3657 2
																																												Let Ta668.3670.7263
																																													Lwz m_nvectors.5818.11525 o.15528
																																													Let o.15529
																																														Slw Ti673.3657 2
																																														Let Ta669.3671.7264
																																															Lwz m_isect_ps.5870.11511 o.15529
																																															Let Ta1497.4712.7738.11485
																																																SetExt 648
																																																Let Td2609.6353.14193
																																																	Lfd Ta669.3671.7264 0
																																																	Let Tu6.6344.14194
																																																		Stfd Td2609.6353.14193 Ta1497.4712.7738.11485 0
																																																		Let Td2612.6350.14197
																																																			Lfd Ta669.3671.7264 4
																																																			Let Tu5.6345.14198
																																																				Stfd Td2612.6350.14197 Ta1497.4712.7738.11485 4
																																																				Let Td2615.6347.14201
																																																					Lfd Ta669.3671.7264 8
																																																					Let Tu105.4706.7739.11486
																																																						Stfd Td2615.6347.14201 Ta1497.4712.7738.11485 8
																																																						Let Ta1498.4710.7740.11487
																																																							SetExt 0
																																																							Let Ti1500.4708.7742.11489
																																																								Lwz Ta1498.4710.7740.11487 0
																																																								Let Ti1502.4707.7744.11491
																																																									Sub Ti1500.4708.7742.11489 1
																																																									Let Tu159.3840.11492
																																																										CallDir setup_startp_constants.2907 d:Ta669.3671.7264 Ti1502.4707.7744.11491 f:
																																																										Let Tt798.3860.7720.11494
																																																											Lwz Ta667.3669.7262 472
																																																											Let m_vec.5809.14189
																																																												Lwz Tt798.3860.7720.11494 0
																																																												Let Td2517.6258.14174
																																																													Lfd m_vec.5809.14189 0
																																																													Let Td2519.6259.14176
																																																														Lfd Ta668.3670.7263 0
																																																														Let Td2520.6252.14177
																																																															FMul Td2517.6258.14174 Td2519.6259.14176
																																																															Let Td2522.6254.14179
																																																																Lfd m_vec.5809.14189 4
																																																																Let Td2524.6255.14181
																																																																	Lfd Ta668.3670.7263 4
																																																																	Let Td2525.6253.14182
																																																																		FMul Td2522.6254.14179 Td2524.6255.14181
																																																																		Let Td2526.6246.14183
																																																																			FAdd Td2520.6252.14177 Td2525.6253.14182
																																																																			Let Td2528.6248.14185
																																																																				Lfd m_vec.5809.14189 8
																																																																				Let Td2530.6249.14187
																																																																					Lfd Ta668.3670.7263 8
																																																																					Let Td2531.6247.14188
																																																																						FMul Td2528.6248.14185 Td2530.6249.14187
																																																																						Let p.3843.7722.11496
																																																																							FAdd Td2526.6246.14183 Td2531.6247.14188
																																																																							Let Td2637.6382.14172
																																																																								FLi 0.000000
																																																																								Let Tb800.3847.7723.11497
																																																																									IfFLE Td2637.6382.14172 p.3843.7722.11496
																																																																										Ans
																																																																											Li 0
																																																																										Ans
																																																																											Li 1
																																																																									Let Ti801.3848.7724.11498
																																																																										Li 0
																																																																										Let Tu158.3844.7725.11499
																																																																											IfEq Tb800.3847.7723.11497 Ti801.3848.7724.11498
																																																																												Let Tt802.3855.7734.11506
																																																																													Lwz Ta667.3669.7262 472
																																																																													Let Td803.3857.7735.11507
																																																																														FLi 150.000000
																																																																														Let Td804.3858.7736.11508
																																																																															FReciprocal Td803.3857.7735.11507
																																																																															Let Td805.3856.7737.11509
																																																																																FMul p.3843.7722.11496 Td804.3858.7736.11508
																																																																																Ans
																																																																																	CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11506 f:Td805.3856.7737.11509 
																																																																												Let Tt808.3849.7730.11502
																																																																													Lwz Ta667.3669.7262 476
																																																																													Let Td809.3851.7731.11503
																																																																														FLi -150.000000
																																																																														Let Td810.3852.7732.11504
																																																																															FReciprocal Td809.3851.7731.11503
																																																																															Let Td811.3850.7733.11505
																																																																																FMul p.3843.7722.11496 Td810.3852.7732.11504
																																																																																Ans
																																																																																	CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11502 f:Td811.3850.7733.11505 
																																																																											Let Ti813.3845.7727.11500
																																																																												Li 116
																																																																												Let Tu188.3665.7265
																																																																													CallDir iter_trace_diffuse_rays.3005 d:Ta667.3669.7262 Ta668.3670.7263 Ta669.3671.7264 Ti813.3845.7727.11500 f:
																																																																													Let m_r20p.5842.11482
																																																																														Lwz pixel.3057 20
																																																																														Let o.15546
																																																																															Slw Ti673.3657 2
																																																																															Let Ta670.3667.7267
																																																																																Lwz m_r20p.5842.11482 o.15546
																																																																																Let Ta671.3668.7268
																																																																																	SetExt 592
																																																																																	Let Td2609.6353.11468
																																																																																		Lfd Ta671.3668.7268 0
																																																																																		Let Tu6.6344.11469
																																																																																			Stfd Td2609.6353.11468 Ta670.3667.7267 0
																																																																																			Let Td2612.6350.11472
																																																																																				Lfd Ta671.3668.7268 4
																																																																																				Let Tu5.6345.11473
																																																																																					Stfd Td2612.6350.11472 Ta670.3667.7267 4
																																																																																					Let Td2615.6347.11476
																																																																																						Lfd Ta671.3668.7268 8
																																																																																						Ans
																																																																																							Stfd Td2615.6347.11476 Ta670.3667.7267 8
																														Let Ti673.3657.7255
																															Add Ti673.3657 1
																															Ans
																																CallDir pretrace_diffuse_rays.3056 d:pixel.3057 Ti673.3657.7255 f:
																									Ans
																										Nop
																			Ans
																				Nop
										Ans
											Nop
				Ans
					Nop
pretrace_pixels.3059 (args) : line.3060 x.3061 group_id.3062 (fargs) : lc0.3063 lc1.3064 lc2.3065 
	Let Ti611.3591
		Li 0
		Ans
			IfLE Ti611.3591 x.3061
				Let Ta612.3650
					SetExt 632
					Let Td614.3644
						Lfd Ta612.3650 0
						Let Ta615.3648
							SetExt 624
							Let Ti617.3647
								Lwz Ta615.3648 0
								Let Ti618.3646
									Sub x.3061 Ti617.3647
									Let Td619.3645
										CallDir min_caml_float_of_int d:Ti618.3646 f:
										Let xdisp.3592
											FMul Td614.3644 Td619.3645
											Let Ta620.3637
												SetExt 696
												Let Ta622.3642
													SetExt 660
													Let Td624.3641
														Lfd Ta622.3642 0
														Let Td625.3640
															FMul xdisp.3592 Td624.3641
															Let Td626.3639
																FAdd Td625.3640 lc0.3063
																Let Tu200.3593
																	Stfd Td626.3639 Ta620.3637 0
																	Let Ta627.3630
																		SetExt 696
																		Let Ta629.3635
																			SetExt 660
																			Let Td631.3634
																				Lfd Ta629.3635 4
																				Let Td632.3633
																					FMul xdisp.3592 Td631.3634
																					Let Td633.3632
																						FAdd Td632.3633 lc1.3064
																						Let Tu199.3594
																							Stfd Td633.3632 Ta627.3630 4
																							Let Ta634.3623
																								SetExt 696
																								Let Ta636.3628
																									SetExt 660
																									Let Td638.3627
																										Lfd Ta636.3628 8
																										Let Td639.3626
																											FMul xdisp.3592 Td638.3627
																											Let Td640.3625
																												FAdd Td639.3626 lc2.3065
																												Let Tu198.3595
																													Stfd Td640.3625 Ta634.3623 8
																													Let Ta641.3621
																														SetExt 696
																														Let Ti642.3622
																															Li 0
																															Let Tu197.3596
																																CallDir vecunit_sgn.2687 d:Ta641.3621 Ti642.3622 f:
																																Let Ta643.3620
																																	SetExt 604
																																	Let Td2616.6355.7246
																																		FLi 0.000000
																																		Let Tu4.6356.11462
																																			Stfd Td2616.6355.7246 Ta643.3620 0
																																			Let Tu3.6357.11464
																																				Stfd Td2616.6355.7246 Ta643.3620 4
																																				Let Tu196.3597
																																					Stfd Td2616.6355.7246 Ta643.3620 8
																																					Let Ta644.3618
																																						SetExt 636
																																						Let Ta645.3619
																																							SetExt 300
																																							Let Td2609.6353.7237
																																								Lfd Ta645.3619 0
																																								Let Tu6.6344.7238
																																									Stfd Td2609.6353.7237 Ta644.3618 0
																																									Let Td2612.6350.7241
																																										Lfd Ta645.3619 4
																																										Let Tu5.6345.7242
																																											Stfd Td2612.6350.7241 Ta644.3618 4
																																											Let Td2615.6347.7245
																																												Lfd Ta645.3619 8
																																												Let Tu195.3598
																																													Stfd Td2615.6347.7245 Ta644.3618 8
																																													Let Ti646.3613
																																														Li 0
																																														Let Td647.3614
																																															FLi 1.000000
																																															Let Ta648.3615
																																																SetExt 696
																																																Let o.15570
																																																	Slw x.3061 2
																																																	Let Tt649.3616
																																																		Lwz line.3060 o.15570
																																																		Let Td650.3617
																																																			FLi 0.000000
																																																			Let Tu194.3599
																																																				CallDir trace_ray.2996 d:Ti646.3613 Ta648.3615 Tt649.3616 f:Td647.3614 Td650.3617 
																																																				Let o.15571
																																																					Slw x.3061 2
																																																					Let Tt651.3612
																																																						Lwz line.3060 o.15571
																																																						Let m_rgb.5877.7227
																																																							Lwz Tt651.3612 0
																																																							Let Ta653.3611
																																																								SetExt 604
																																																								Let Td2609.6353.7218
																																																									Lfd Ta653.3611 0
																																																									Let Tu6.6344.7219
																																																										Stfd Td2609.6353.7218 m_rgb.5877.7227 0
																																																										Let Td2612.6350.7222
																																																											Lfd Ta653.3611 4
																																																											Let Tu5.6345.7223
																																																												Stfd Td2612.6350.7222 m_rgb.5877.7227 4
																																																												Let Td2615.6347.7226
																																																													Lfd Ta653.3611 8
																																																													Let Tu193.3600
																																																														Stfd Td2615.6347.7226 m_rgb.5877.7227 8
																																																														Let o.15578
																																																															Slw x.3061 2
																																																															Let Tt654.3609
																																																																Lwz line.3060 o.15578
																																																																Let m_gid.5825.7213
																																																																	Lwz Tt654.3609 24
																																																																	Let Tu192.3601
																																																																		Stw group_id.3062 m_gid.5825.7213 0
																																																																		Let o.15580
																																																																			Slw x.3061 2
																																																																			Let Tt655.3607
																																																																				Lwz line.3060 o.15580
																																																																				Let m_sids.5863.7390.11454
																																																																					Lwz Tt655.3607 8
																																																																					Let sid.3653.7186
																																																																						Lwz m_sids.5863.7390.11454 0
																																																																						Let Ti662.3654.7187
																																																																							Li 0
																																																																							Let Tu191.3602
																																																																								IfLE Ti662.3654.7187 sid.3653.7186
																																																																									Let m_cdif.5856.11447
																																																																										Lwz Tt655.3607 12
																																																																										Let Tb663.3659.7189
																																																																											Lwz m_cdif.5856.11447 0
																																																																											Let Ti664.3660.7190
																																																																												Li 0
																																																																												Let Tu190.3656.7191
																																																																													IfEq Tb663.3659.7189 Ti664.3660.7190
																																																																														Ans
																																																																															Nop
																																																																														Let m_gid.5834.11441
																																																																															Lwz Tt655.3607 24
																																																																															Let group_id.3661.7194
																																																																																Lwz m_gid.5834.11441 0
																																																																																Let Ta665.3673.7195
																																																																																	SetExt 592
																																																																																	Let Td2616.6355.11429
																																																																																		FLi 0.000000
																																																																																		Let Tu4.6356.10486.11431
																																																																																			Stfd Td2616.6355.11429 Ta665.3673.7195 0
																																																																																			Let Tu3.6357.10488.11433
																																																																																				Stfd Td2616.6355.11429 Ta665.3673.7195 4
																																																																																				Let Tu189.3662.7196
																																																																																					Stfd Td2616.6355.11429 Ta665.3673.7195 8
																																																																																					Let m_nvectors.5818.11428
																																																																																						Lwz Tt655.3607 28
																																																																																						Let m_isect_ps.5870.11414
																																																																																							Lwz Tt655.3607 4
																																																																																							Let Ta666.3672.7199
																																																																																								SetExt 716
																																																																																								Let o.15587
																																																																																									Slw group_id.3661.7194 2
																																																																																									Let Ta667.3669.7200
																																																																																										Lwz Ta666.3672.7199 o.15587
																																																																																										Let Ta668.3670.7201
																																																																																											Lwz m_nvectors.5818.11428 0
																																																																																											Let Ta669.3671.7202
																																																																																												Lwz m_isect_ps.5870.11414 0
																																																																																												Let Ta1497.4712.7738.11388
																																																																																													SetExt 648
																																																																																													Let Td2609.6353.14163
																																																																																														Lfd Ta669.3671.7202 0
																																																																																														Let Tu6.6344.14164
																																																																																															Stfd Td2609.6353.14163 Ta1497.4712.7738.11388 0
																																																																																															Let Td2612.6350.14167
																																																																																																Lfd Ta669.3671.7202 4
																																																																																																Let Tu5.6345.14168
																																																																																																	Stfd Td2612.6350.14167 Ta1497.4712.7738.11388 4
																																																																																																	Let Td2615.6347.14171
																																																																																																		Lfd Ta669.3671.7202 8
																																																																																																		Let Tu105.4706.7739.11389
																																																																																																			Stfd Td2615.6347.14171 Ta1497.4712.7738.11388 8
																																																																																																			Let Ta1498.4710.7740.11390
																																																																																																				SetExt 0
																																																																																																				Let Ti1500.4708.7742.11392
																																																																																																					Lwz Ta1498.4710.7740.11390 0
																																																																																																					Let Ti1502.4707.7744.11394
																																																																																																						Sub Ti1500.4708.7742.11392 1
																																																																																																						Let Tu159.3840.11395
																																																																																																							CallDir setup_startp_constants.2907 d:Ta669.3671.7202 Ti1502.4707.7744.11394 f:
																																																																																																							Let Tt798.3860.7720.11397
																																																																																																								Lwz Ta667.3669.7200 472
																																																																																																								Let m_vec.5809.14159
																																																																																																									Lwz Tt798.3860.7720.11397 0
																																																																																																									Let Td2517.6258.14144
																																																																																																										Lfd m_vec.5809.14159 0
																																																																																																										Let Td2519.6259.14146
																																																																																																											Lfd Ta668.3670.7201 0
																																																																																																											Let Td2520.6252.14147
																																																																																																												FMul Td2517.6258.14144 Td2519.6259.14146
																																																																																																												Let Td2522.6254.14149
																																																																																																													Lfd m_vec.5809.14159 4
																																																																																																													Let Td2524.6255.14151
																																																																																																														Lfd Ta668.3670.7201 4
																																																																																																														Let Td2525.6253.14152
																																																																																																															FMul Td2522.6254.14149 Td2524.6255.14151
																																																																																																															Let Td2526.6246.14153
																																																																																																																FAdd Td2520.6252.14147 Td2525.6253.14152
																																																																																																																Let Td2528.6248.14155
																																																																																																																	Lfd m_vec.5809.14159 8
																																																																																																																	Let Td2530.6249.14157
																																																																																																																		Lfd Ta668.3670.7201 8
																																																																																																																		Let Td2531.6247.14158
																																																																																																																			FMul Td2528.6248.14155 Td2530.6249.14157
																																																																																																																			Let p.3843.7722.11399
																																																																																																																				FAdd Td2526.6246.14153 Td2531.6247.14158
																																																																																																																				Let Td2637.6382.14142
																																																																																																																					FLi 0.000000
																																																																																																																					Let Tb800.3847.7723.11400
																																																																																																																						IfFLE Td2637.6382.14142 p.3843.7722.11399
																																																																																																																							Ans
																																																																																																																								Li 0
																																																																																																																							Ans
																																																																																																																								Li 1
																																																																																																																						Let Ti801.3848.7724.11401
																																																																																																																							Li 0
																																																																																																																							Let Tu158.3844.7725.11402
																																																																																																																								IfEq Tb800.3847.7723.11400 Ti801.3848.7724.11401
																																																																																																																									Let Tt802.3855.7734.11409
																																																																																																																										Lwz Ta667.3669.7200 472
																																																																																																																										Let Td803.3857.7735.11410
																																																																																																																											FLi 150.000000
																																																																																																																											Let Td804.3858.7736.11411
																																																																																																																												FReciprocal Td803.3857.7735.11410
																																																																																																																												Let Td805.3856.7737.11412
																																																																																																																													FMul p.3843.7722.11399 Td804.3858.7736.11411
																																																																																																																													Ans
																																																																																																																														CallDir trace_diffuse_ray.3002 d:Tt802.3855.7734.11409 f:Td805.3856.7737.11412 
																																																																																																																									Let Tt808.3849.7730.11405
																																																																																																																										Lwz Ta667.3669.7200 476
																																																																																																																										Let Td809.3851.7731.11406
																																																																																																																											FLi -150.000000
																																																																																																																											Let Td810.3852.7732.11407
																																																																																																																												FReciprocal Td809.3851.7731.11406
																																																																																																																												Let Td811.3850.7733.11408
																																																																																																																													FMul p.3843.7722.11399 Td810.3852.7732.11407
																																																																																																																													Ans
																																																																																																																														CallDir trace_diffuse_ray.3002 d:Tt808.3849.7730.11405 f:Td811.3850.7733.11408 
																																																																																																																								Let Ti813.3845.7727.11403
																																																																																																																									Li 116
																																																																																																																									Let Tu188.3665.7203
																																																																																																																										CallDir iter_trace_diffuse_rays.3005 d:Ta667.3669.7200 Ta668.3670.7201 Ta669.3671.7202 Ti813.3845.7727.11403 f:
																																																																																																																										Let m_r20p.5842.11385
																																																																																																																											Lwz Tt655.3607 20
																																																																																																																											Let Ta670.3667.7205
																																																																																																																												Lwz m_r20p.5842.11385 0
																																																																																																																												Let Ta671.3668.7206
																																																																																																																													SetExt 592
																																																																																																																													Let Td2609.6353.11371
																																																																																																																														Lfd Ta671.3668.7206 0
																																																																																																																														Let Tu6.6344.11372
																																																																																																																															Stfd Td2609.6353.11371 Ta670.3667.7205 0
																																																																																																																															Let Td2612.6350.11375
																																																																																																																																Lfd Ta671.3668.7206 4
																																																																																																																																Let Tu5.6345.11376
																																																																																																																																	Stfd Td2612.6350.11375 Ta670.3667.7205 4
																																																																																																																																	Let Td2615.6347.11379
																																																																																																																																		Lfd Ta671.3668.7206 8
																																																																																																																																		Ans
																																																																																																																																			Stfd Td2615.6347.11379 Ta670.3667.7205 8
																																																																													Let Ti673.3657.7193
																																																																														Li 1
																																																																														Ans
																																																																															CallDir pretrace_diffuse_rays.3056 d:Tt655.3607 Ti673.3657.7193 f:
																																																																									Ans
																																																																										Nop
																																																																								Let Ti658.3603
																																																																									Sub x.3061 1
																																																																									Let sum.6366.7182
																																																																										Add group_id.3062 1
																																																																										Let Ti2623.6367.7183
																																																																											Li 5
																																																																											Let Ti660.3604
																																																																												IfLE Ti2623.6367.7183 sum.6366.7182
																																																																													Ans
																																																																														Sub sum.6366.7182 5
																																																																													Ans
																																																																														Mr sum.6366.7182
																																																																												Ans
																																																																													CallDir pretrace_pixels.3059 d:line.3060 Ti658.3603 Ti660.3604 f:lc0.3063 lc1.3064 lc2.3065 
				Ans
					Nop
pretrace_line.3066 (args) : line.3067 y.3068 group_id.3069 (fargs) : 
	Let Ta577.3589
		SetExt 632
		Let Td579.3583
			Lfd Ta577.3589 0
			Let Ta580.3587
				SetExt 624
				Let Ti582.3586
					Lwz Ta580.3587 4
					Let Ti583.3585
						Sub y.3068 Ti582.3586
						Let Td584.3584
							CallDir min_caml_float_of_int d:Ti583.3585 f:
							Let ydisp.3553
								FMul Td579.3583 Td584.3584
								Let Ta585.3581
									SetExt 672
									Let Td587.3580
										Lfd Ta585.3581 0
										Let Td588.3576
											FMul ydisp.3553 Td587.3580
											Let Ta589.3578
												SetExt 684
												Let Td591.3577
													Lfd Ta589.3578 0
													Let lc0.3554
														FAdd Td588.3576 Td591.3577
														Let Ta592.3574
															SetExt 672
															Let Td594.3573
																Lfd Ta592.3574 4
																Let Td595.3569
																	FMul ydisp.3553 Td594.3573
																	Let Ta596.3571
																		SetExt 684
																		Let Td598.3570
																			Lfd Ta596.3571 4
																			Let lc1.3555
																				FAdd Td595.3569 Td598.3570
																				Let Ta599.3567
																					SetExt 672
																					Let Td601.3566
																						Lfd Ta599.3567 8
																						Let Td602.3562
																							FMul ydisp.3553 Td601.3566
																							Let Ta603.3564
																								SetExt 684
																								Let Td605.3563
																									Lfd Ta603.3564 8
																									Let lc2.3556
																										FAdd Td602.3562 Td605.3563
																										Let Ta606.3560
																											SetExt 616
																											Let Ti608.3558
																												Lwz Ta606.3560 0
																												Let Ti610.3557
																													Sub Ti608.3558 1
																													Ans
																														CallDir pretrace_pixels.3059 d:line.3067 Ti610.3557 group_id.3069 f:lc0.3554 lc1.3555 lc2.3556 
scan_pixel.3070 (args) : x.3071 y.3072 prev.3073 cur.3074 next.3075 (fargs) : 
	Let Ta563.3551
		SetExt 616
		Let Ti565.3536
			Lwz Ta563.3551 0
			Ans
				IfLE Ti565.3536 x.3071
					Ans
						Nop
					Let Ta566.3548
						SetExt 604
						Let o.15623
							Slw x.3071 2
							Let Tt567.3550
								Lwz cur.3074 o.15623
								Let m_rgb.5877.7174
									Lwz Tt567.3550 0
									Let Td2609.6353.7165
										Lfd m_rgb.5877.7174 0
										Let Tu6.6344.7166
											Stfd Td2609.6353.7165 Ta566.3548 0
											Let Td2612.6350.7169
												Lfd m_rgb.5877.7174 4
												Let Tu5.6345.7170
													Stfd Td2612.6350.7169 Ta566.3548 4
													Let Td2615.6347.7173
														Lfd m_rgb.5877.7174 8
														Let Tu203.3537
															Stfd Td2615.6347.7173 Ta566.3548 8
															Let Ta726.3756.7151
																SetExt 616
																Let Ti728.3746.7153
																	Lwz Ta726.3756.7151 4
																	Let Ti730.3747.7155
																		Add y.3072 1
																		Let Tb569.3543
																			IfLE Ti728.3746.7153 Ti730.3747.7155
																				Ans
																					Li 0
																				Let Ti731.3748.7156
																					Li 0
																					Ans
																						IfLE y.3072 Ti731.3748.7156
																							Ans
																								Li 0
																							Let Ta732.3753.7157
																								SetExt 616
																								Let Ti734.3749.7159
																									Lwz Ta732.3753.7157 0
																									Let Ti736.3750.7161
																										Add x.3071 1
																										Ans
																											IfLE Ti734.3749.7159 Ti736.3750.7161
																												Ans
																													Li 0
																												Let Ti737.3751.7162
																													Li 0
																													Ans
																														IfLE x.3071 Ti737.3751.7162
																															Ans
																																Li 0
																															Ans
																																Li 1
																			Let Ti570.3544
																				Li 0
																				Let Tu202.3538
																					IfEq Tb569.3543 Ti570.3544
																						Let o.15646
																							Slw x.3071 2
																							Let Tt571.3546
																								Lwz cur.3074 o.15646
																								Let Ti572.3547
																									Li 0
																									Let m_sids.5863.11363
																										Lwz Tt571.3546 8
																										Let Ti739.3760.7143
																											Li 0
																											Let Ti740.3761.7144
																												Lwz m_sids.5863.11363 0
																												Ans
																													IfLE Ti739.3760.7143 Ti740.3761.7144
																														Let m_cdif.5856.11356
																															Lwz Tt571.3546 12
																															Let Tb741.3766.7146
																																Lwz m_cdif.5856.11356 0
																																Let Ti742.3767.7147
																																	Li 0
																																	Let Tu171.3763.7148
																																		IfEq Tb741.3766.7146 Ti742.3767.7147
																																			Ans
																																				Nop
																																			Ans
																																				CallDir calc_diffuse_using_1point.3018 d:Tt571.3546 Ti572.3547 f:
																																		Let Ti744.3764.7150
																																			Li 1
																																			Ans
																																				CallDir do_without_neighbors.3027 d:Tt571.3546 Ti744.3764.7150 f:
																														Ans
																															Nop
																						Let Ti573.3545
																							Li 0
																							Let o.15632
																								Slw x.3071 2
																								Let pixel.3718.7128
																									Lwz cur.3074 o.15632
																									Let Ti704.3720.7130
																										Li 0
																										Let m_sids.5863.7390.11346
																											Lwz pixel.3718.7128 8
																											Let Ti705.3721.7131
																												Lwz m_sids.5863.7390.11346 0
																												Ans
																													IfLE Ti704.3720.7130 Ti705.3721.7131
																														Let o.15634
																															Slw x.3071 2
																															Let Tt713.3744.11325
																																Lwz cur.3074 o.15634
																																Let m_sids.5863.14136
																																	Lwz Tt713.3744.11325 8
																																	Let sid_center.3731.11327
																																		Lwz m_sids.5863.14136 0
																																		Let o.15636
																																			Slw x.3071 2
																																			Let Tt714.3743.11328
																																				Lwz prev.3073 o.15636
																																				Let m_sids.5863.14128
																																					Lwz Tt714.3743.11328 8
																																					Let Ti715.3732.11330
																																						Lwz m_sids.5863.14128 0
																																						Let Tb706.3722.7132
																																							IfEq Ti715.3732.11330 sid_center.3731.11327
																																								Let o.15638
																																									Slw x.3071 2
																																									Let Tt716.3742.11331
																																										Lwz next.3075 o.15638
																																										Let m_sids.5863.14120
																																											Lwz Tt716.3742.11331 8
																																											Let Ti717.3733.11333
																																												Lwz m_sids.5863.14120 0
																																												Ans
																																													IfEq Ti717.3733.11333 sid_center.3731.11327
																																														Let Ti719.3740.11335
																																															Sub x.3071 1
																																															Let o.15640
																																																Slw Ti719.3740.11335 2
																																																Let Tt720.3739.11336
																																																	Lwz cur.3074 o.15640
																																																	Let m_sids.5863.14112
																																																		Lwz Tt720.3739.11336 8
																																																		Let Ti721.3734.11338
																																																			Lwz m_sids.5863.14112 0
																																																			Ans
																																																				IfEq Ti721.3734.11338 sid_center.3731.11327
																																																					Let Ti723.3737.11340
																																																						Add x.3071 1
																																																						Let o.15642
																																																							Slw Ti723.3737.11340 2
																																																							Let Tt724.3736.11341
																																																								Lwz cur.3074 o.15642
																																																								Let m_sids.5863.14104
																																																									Lwz Tt724.3736.11341 8
																																																									Let Ti725.3735.11343
																																																										Lwz m_sids.5863.14104 0
																																																										Ans
																																																											IfEq Ti725.3735.11343 sid_center.3731.11327
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
																																							Let Ti707.3723.7133
																																								Li 0
																																								Ans
																																									IfEq Tb706.3722.7132 Ti707.3723.7133
																																										Let o.15645
																																											Slw x.3071 2
																																											Let Tt708.3730.7140
																																												Lwz cur.3074 o.15645
																																												Ans
																																													CallDir do_without_neighbors.3027 d:Tt708.3730.7140 Ti573.3545 f:
																																										Let m_cdif.5856.11320
																																											Lwz pixel.3718.7128 12
																																											Let Tb709.3728.7135
																																												Lwz m_cdif.5856.11320 0
																																												Let Ti710.3729.7136
																																													Li 0
																																													Let Tu172.3725.7137
																																														IfEq Tb709.3728.7135 Ti710.3729.7136
																																															Ans
																																																Nop
																																															Ans
																																																CallDir calc_diffuse_using_5points.3021 d:x.3071 prev.3073 cur.3074 next.3075 Ti573.3545 f:
																																														Let Ti712.3726.7139
																																															Li 1
																																															Ans
																																																CallDir try_exploit_neighbors.3043 d:x.3071 y.3072 prev.3073 cur.3074 next.3075 Ti712.3726.7139 f:
																														Ans
																															Nop
																					Let Ta674.3689.7111
																						SetExt 604
																						Let Td676.3688.7113
																							Lfd Ta674.3689.7111 0
																							Let ix.3691.11313
																								CallDir min_caml_int_of_float d:f:Td676.3688.7113 
																								Let Ti686.3693.11314
																									Li 255
																									Let elem.3692.11315
																										IfLE ix.3691.11313 Ti686.3693.11314
																											Let Ti687.3694.11316
																												Li 0
																												Ans
																													IfLE Ti687.3694.11316 ix.3691.11313
																														Ans
																															Mr ix.3691.11313
																														Ans
																															Li 0
																											Ans
																												Li 255
																										Let Tu187.3674.7114
																											CallDir min_caml_print_int d:elem.3692.11315 f:
																											Let Ti677.3687.7115
																												Li 32
																												Let Tu186.3675.7116
																													CallDir min_caml_print_byte d:Ti677.3687.7115 f:
																													Let Ta678.3685.7117
																														SetExt 604
																														Let Td680.3684.7119
																															Lfd Ta678.3685.7117 4
																															Let ix.3691.11309
																																CallDir min_caml_int_of_float d:f:Td680.3684.7119 
																																Let Ti686.3693.11310
																																	Li 255
																																	Let elem.3692.11311
																																		IfLE ix.3691.11309 Ti686.3693.11310
																																			Let Ti687.3694.11312
																																				Li 0
																																				Ans
																																					IfLE Ti687.3694.11312 ix.3691.11309
																																						Ans
																																							Mr ix.3691.11309
																																						Ans
																																							Li 0
																																			Ans
																																				Li 255
																																		Let Tu185.3676.7120
																																			CallDir min_caml_print_int d:elem.3692.11311 f:
																																			Let Ti681.3683.7121
																																				Li 32
																																				Let Tu184.3677.7122
																																					CallDir min_caml_print_byte d:Ti681.3683.7121 f:
																																					Let Ta682.3681.7123
																																						SetExt 604
																																						Let Td684.3680.7125
																																							Lfd Ta682.3681.7123 8
																																							Let ix.3691.11305
																																								CallDir min_caml_int_of_float d:f:Td684.3680.7125 
																																								Let Ti686.3693.11306
																																									Li 255
																																									Let elem.3692.11307
																																										IfLE ix.3691.11305 Ti686.3693.11306
																																											Let Ti687.3694.11308
																																												Li 0
																																												Ans
																																													IfLE Ti687.3694.11308 ix.3691.11305
																																														Ans
																																															Mr ix.3691.11305
																																														Ans
																																															Li 0
																																											Ans
																																												Li 255
																																										Let Tu183.3678.7126
																																											CallDir min_caml_print_int d:elem.3692.11307 f:
																																											Let Ti685.3679.7127
																																												Li 10
																																												Let Tu201.3539
																																													CallDir min_caml_print_byte d:Ti685.3679.7127 f:
																																													Let Ti576.3540
																																														Add x.3071 1
																																														Let Ta563.3551.7094
																																															SetExt 616
																																															Let Ti565.3536.7096
																																																Lwz Ta563.3551.7094 0
																																																Ans
																																																	IfLE Ti565.3536.7096 Ti576.3540
																																																		Ans
																																																			Nop
																																																		Let Ta566.3548.7097
																																																			SetExt 604
																																																			Let o.15653
																																																				Slw Ti576.3540 2
																																																				Let Tt567.3550.7098
																																																					Lwz cur.3074 o.15653
																																																					Let m_rgb.5877.11297
																																																						Lwz Tt567.3550.7098 0
																																																						Let Td2609.6353.11288
																																																							Lfd m_rgb.5877.11297 0
																																																							Let Tu6.6344.11289
																																																								Stfd Td2609.6353.11288 Ta566.3548.7097 0
																																																								Let Td2612.6350.11292
																																																									Lfd m_rgb.5877.11297 4
																																																									Let Tu5.6345.11293
																																																										Stfd Td2612.6350.11292 Ta566.3548.7097 4
																																																										Let Td2615.6347.11296
																																																											Lfd m_rgb.5877.11297 8
																																																											Let Tu203.3537.7100
																																																												Stfd Td2615.6347.11296 Ta566.3548.7097 8
																																																												Let Ta726.3756.11274
																																																													SetExt 616
																																																													Let Ti728.3746.11276
																																																														Lwz Ta726.3756.11274 4
																																																														Let Ti730.3747.11278
																																																															Add y.3072 1
																																																															Let Tb569.3543.7101
																																																																IfLE Ti728.3746.11276 Ti730.3747.11278
																																																																	Ans
																																																																		Li 0
																																																																	Let Ti731.3748.11279
																																																																		Li 0
																																																																		Ans
																																																																			IfLE y.3072 Ti731.3748.11279
																																																																				Ans
																																																																					Li 0
																																																																				Let Ta732.3753.11280
																																																																					SetExt 616
																																																																					Let Ti734.3749.11282
																																																																						Lwz Ta732.3753.11280 0
																																																																						Let Ti736.3750.11284
																																																																							Add Ti576.3540 1
																																																																							Ans
																																																																								IfLE Ti734.3749.11282 Ti736.3750.11284
																																																																									Ans
																																																																										Li 0
																																																																									Let Ti737.3751.11285
																																																																										Li 0
																																																																										Ans
																																																																											IfLE Ti576.3540 Ti737.3751.11285
																																																																												Ans
																																																																													Li 0
																																																																												Ans
																																																																													Li 1
																																																																Let Ti570.3544.7102
																																																																	Li 0
																																																																	Let Tu202.3538.7103
																																																																		IfEq Tb569.3543.7101 Ti570.3544.7102
																																																																			Let o.15662
																																																																				Slw Ti576.3540 2
																																																																				Let Tt571.3546.7109
																																																																					Lwz cur.3074 o.15662
																																																																					Let Ti572.3547.7110
																																																																						Li 0
																																																																						Ans
																																																																							CallDir do_without_neighbors.3027 d:Tt571.3546.7109 Ti572.3547.7110 f:
																																																																			Let Ti573.3545.7108
																																																																				Li 0
																																																																				Ans
																																																																					CallDir try_exploit_neighbors.3043 d:Ti576.3540 y.3072 prev.3073 cur.3074 next.3075 Ti573.3545.7108 f:
																																																																		Let Tu574.3542.7104
																																																																			Nop
																																																																			Let Tu201.3539.7105
																																																																				CallDir write_rgb.3054 d:f:
																																																																				Let Ti576.3540.7107
																																																																					Add Ti576.3540 1
																																																																					Ans
																																																																						CallDir scan_pixel.3070 d:Ti576.3540.7107 y.3072 prev.3073 cur.3074 next.3075 f:
scan_line.3076 (args) : y.3077 prev.3078 cur.3079 next.3080 group_id.3081 (fargs) : 
	Let Ta548.3534
		SetExt 616
		Let Ti550.3519
			Lwz Ta548.3534 4
			Ans
				IfLE Ti550.3519 y.3077
					Ans
						Nop
					Let Ta551.3532
						SetExt 616
						Let Ti553.3530
							Lwz Ta551.3532 4
							Let Ti555.3527
								Sub Ti553.3530 1
								Let Tu205.3520
									IfLE Ti555.3527 y.3077
										Ans
											Nop
										Let Ti557.3528
											Add y.3077 1
											Ans
												CallDir pretrace_line.3066 d:next.3080 Ti557.3528 group_id.3081 f:
									Let Ti558.3526
										Li 0
										Let Ta563.3551.7077
											SetExt 616
											Let Ti565.3536.7079
												Lwz Ta563.3551.7077 0
												Let Tu204.3521
													IfLE Ti565.3536.7079 Ti558.3526
														Ans
															Nop
														Let Ta566.3548.7080
															SetExt 604
															Let Tt567.3550.7081
																Lwz cur.3079 0
																Let m_rgb.5877.11266
																	Lwz Tt567.3550.7081 0
																	Let Td2609.6353.11257
																		Lfd m_rgb.5877.11266 0
																		Let Tu6.6344.11258
																			Stfd Td2609.6353.11257 Ta566.3548.7080 0
																			Let Td2612.6350.11261
																				Lfd m_rgb.5877.11266 4
																				Let Tu5.6345.11262
																					Stfd Td2612.6350.11261 Ta566.3548.7080 4
																					Let Td2615.6347.11265
																						Lfd m_rgb.5877.11266 8
																						Let Tu203.3537.7083
																							Stfd Td2615.6347.11265 Ta566.3548.7080 8
																							Let Ta726.3756.11243
																								SetExt 616
																								Let Ti728.3746.11245
																									Lwz Ta726.3756.11243 4
																									Let Ti730.3747.11247
																										Add y.3077 1
																										Let Tb569.3543.7084
																											IfLE Ti728.3746.11245 Ti730.3747.11247
																												Ans
																													Li 0
																												Let Ti731.3748.11248
																													Li 0
																													Ans
																														IfLE y.3077 Ti731.3748.11248
																															Ans
																																Li 0
																															Let Ta732.3753.11249
																																SetExt 616
																																Let Ti734.3749.11251
																																	Lwz Ta732.3753.11249 0
																																	Let Ti736.3750.11253
																																		Li 1
																																		Ans
																																			IfLE Ti734.3749.11251 Ti736.3750.11253
																																				Ans
																																					Li 0
																																				Ans
																																					Li 0
																											Let Ti570.3544.7085
																												Li 0
																												Let Tu202.3538.7086
																													IfEq Tb569.3543.7084 Ti570.3544.7085
																														Let Tt571.3546.7092
																															Lwz cur.3079 0
																															Let Ti572.3547.7093
																																Li 0
																																Ans
																																	CallDir do_without_neighbors.3027 d:Tt571.3546.7092 Ti572.3547.7093 f:
																														Let Ti573.3545.7091
																															Li 0
																															Ans
																																CallDir try_exploit_neighbors.3043 d:Ti558.3526 y.3077 prev.3078 cur.3079 next.3080 Ti573.3545.7091 f:
																													Let Tu574.3542.7087
																														Nop
																														Let Tu201.3539.7088
																															CallDir write_rgb.3054 d:f:
																															Let Ti576.3540.7090
																																Li 1
																																Ans
																																	CallDir scan_pixel.3070 d:Ti576.3540.7090 y.3077 prev.3078 cur.3079 next.3080 f:
													Let Ti560.3522
														Add y.3077 1
														Let sum.6366.7074
															Add group_id.3081 2
															Let Ti2623.6367.7075
																Li 5
																Let Ti562.3523
																	IfLE Ti2623.6367.7075 sum.6366.7074
																		Ans
																			Sub sum.6366.7074 5
																		Ans
																			Mr sum.6366.7074
																	Let Ta548.3534.7057
																		SetExt 616
																		Let Ti550.3519.7059
																			Lwz Ta548.3534.7057 4
																			Ans
																				IfLE Ti550.3519.7059 Ti560.3522
																					Ans
																						Nop
																					Let Ta551.3532.7060
																						SetExt 616
																						Let Ti553.3530.7062
																							Lwz Ta551.3532.7060 4
																							Let Ti555.3527.7064
																								Sub Ti553.3530.7062 1
																								Let Tu205.3520.7065
																									IfLE Ti555.3527.7064 Ti560.3522
																										Ans
																											Nop
																										Let Ti557.3528.7073
																											Add Ti560.3522 1
																											Ans
																												CallDir pretrace_line.3066 d:prev.3078 Ti557.3528.7073 Ti562.3523 f:
																									Let Ti558.3526.7066
																										Li 0
																										Let Tu204.3521.7067
																											CallDir scan_pixel.3070 d:Ti558.3526.7066 Ti560.3522 cur.3079 next.3080 prev.3078 f:
																											Let Ti560.3522.7069
																												Add Ti560.3522 1
																												Let sum.6366.11240
																													Add Ti562.3523 2
																													Let Ti2623.6367.11241
																														Li 5
																														Let Ti562.3523.7071
																															IfLE Ti2623.6367.11241 sum.6366.11240
																																Ans
																																	Sub sum.6366.11240 5
																																Ans
																																	Mr sum.6366.11240
																															Ans
																																CallDir scan_line.3076 d:Ti560.3522.7069 next.3080 prev.3078 cur.3079 Ti562.3523.7071 f:
create_pixel.3084 (args) : (fargs) : 
	Let Ti517.3492
		Li 3
		Let Td518.3493
			FLi 0.000000
			Let m_rgb.3474
				CallDir min_caml_create_float_array d:Ti517.3492 f:Td518.3493 
				Let Ti529.3517.7032
					Li 3
					Let Td530.3518.7033
						FLi 0.000000
						Let vec.3494.7034
							CallDir min_caml_create_float_array d:Ti529.3517.7032 f:Td530.3518.7033 
							Let Ti531.3516.7035
								Li 5
								Let array.3495.7036
									CallDir min_caml_create_array d:Ti531.3516.7035 vec.3494.7034 f:
									Let Ti533.3514.7038
										Li 3
										Let Td534.3515.7039
											FLi 0.000000
											Let Ta535.3513.7040
												CallDir min_caml_create_float_array d:Ti533.3514.7038 f:Td534.3515.7039 
												Let Tu210.3496.7041
													Stw Ta535.3513.7040 array.3495.7036 4
													Let Ti537.3510.7043
														Li 3
														Let Td538.3511.7044
															FLi 0.000000
															Let Ta539.3509.7045
																CallDir min_caml_create_float_array d:Ti537.3510.7043 f:Td538.3511.7044 
																Let Tu209.3497.7046
																	Stw Ta539.3509.7045 array.3495.7036 8
																	Let Ti541.3506.7048
																		Li 3
																		Let Td542.3507.7049
																			FLi 0.000000
																			Let Ta543.3505.7050
																				CallDir min_caml_create_float_array d:Ti541.3506.7048 f:Td542.3507.7049 
																				Let Tu208.3498.7051
																					Stw Ta543.3505.7050 array.3495.7036 12
																					Let Ti545.3502.7053
																						Li 3
																						Let Td546.3503.7054
																							FLi 0.000000
																							Let Ta547.3501.7055
																								CallDir min_caml_create_float_array d:Ti545.3502.7053 f:Td546.3503.7054 
																								Let Tu207.3499.7056
																									Stw Ta547.3501.7055 array.3495.7036 16
																									Let Ti520.3489
																										Li 5
																										Let Ti521.3490
																											Li 0
																											Let m_sids.3476
																												CallDir min_caml_create_array d:Ti520.3489 Ti521.3490 f:
																												Let Ti522.3487
																													Li 5
																													Let Ti523.3488
																														Li 0
																														Let m_cdif.3477
																															CallDir min_caml_create_array d:Ti522.3487 Ti523.3488 f:
																															Let Ti529.3517.7007
																																Li 3
																																Let Td530.3518.7008
																																	FLi 0.000000
																																	Let vec.3494.7009
																																		CallDir min_caml_create_float_array d:Ti529.3517.7007 f:Td530.3518.7008 
																																		Let Ti531.3516.7010
																																			Li 5
																																			Let array.3495.7011
																																				CallDir min_caml_create_array d:Ti531.3516.7010 vec.3494.7009 f:
																																				Let Ti533.3514.7013
																																					Li 3
																																					Let Td534.3515.7014
																																						FLi 0.000000
																																						Let Ta535.3513.7015
																																							CallDir min_caml_create_float_array d:Ti533.3514.7013 f:Td534.3515.7014 
																																							Let Tu210.3496.7016
																																								Stw Ta535.3513.7015 array.3495.7011 4
																																								Let Ti537.3510.7018
																																									Li 3
																																									Let Td538.3511.7019
																																										FLi 0.000000
																																										Let Ta539.3509.7020
																																											CallDir min_caml_create_float_array d:Ti537.3510.7018 f:Td538.3511.7019 
																																											Let Tu209.3497.7021
																																												Stw Ta539.3509.7020 array.3495.7011 8
																																												Let Ti541.3506.7023
																																													Li 3
																																													Let Td542.3507.7024
																																														FLi 0.000000
																																														Let Ta543.3505.7025
																																															CallDir min_caml_create_float_array d:Ti541.3506.7023 f:Td542.3507.7024 
																																															Let Tu208.3498.7026
																																																Stw Ta543.3505.7025 array.3495.7011 12
																																																Let Ti545.3502.7028
																																																	Li 3
																																																	Let Td546.3503.7029
																																																		FLi 0.000000
																																																		Let Ta547.3501.7030
																																																			CallDir min_caml_create_float_array d:Ti545.3502.7028 f:Td546.3503.7029 
																																																			Let Tu207.3499.7031
																																																				Stw Ta547.3501.7030 array.3495.7011 16
																																																				Let Ti529.3517.6982
																																																					Li 3
																																																					Let Td530.3518.6983
																																																						FLi 0.000000
																																																						Let vec.3494.6984
																																																							CallDir min_caml_create_float_array d:Ti529.3517.6982 f:Td530.3518.6983 
																																																							Let Ti531.3516.6985
																																																								Li 5
																																																								Let array.3495.6986
																																																									CallDir min_caml_create_array d:Ti531.3516.6985 vec.3494.6984 f:
																																																									Let Ti533.3514.6988
																																																										Li 3
																																																										Let Td534.3515.6989
																																																											FLi 0.000000
																																																											Let Ta535.3513.6990
																																																												CallDir min_caml_create_float_array d:Ti533.3514.6988 f:Td534.3515.6989 
																																																												Let Tu210.3496.6991
																																																													Stw Ta535.3513.6990 array.3495.6986 4
																																																													Let Ti537.3510.6993
																																																														Li 3
																																																														Let Td538.3511.6994
																																																															FLi 0.000000
																																																															Let Ta539.3509.6995
																																																																CallDir min_caml_create_float_array d:Ti537.3510.6993 f:Td538.3511.6994 
																																																																Let Tu209.3497.6996
																																																																	Stw Ta539.3509.6995 array.3495.6986 8
																																																																	Let Ti541.3506.6998
																																																																		Li 3
																																																																		Let Td542.3507.6999
																																																																			FLi 0.000000
																																																																			Let Ta543.3505.7000
																																																																				CallDir min_caml_create_float_array d:Ti541.3506.6998 f:Td542.3507.6999 
																																																																				Let Tu208.3498.7001
																																																																					Stw Ta543.3505.7000 array.3495.6986 12
																																																																					Let Ti545.3502.7003
																																																																						Li 3
																																																																						Let Td546.3503.7004
																																																																							FLi 0.000000
																																																																							Let Ta547.3501.7005
																																																																								CallDir min_caml_create_float_array d:Ti545.3502.7003 f:Td546.3503.7004 
																																																																								Let Tu207.3499.7006
																																																																									Stw Ta547.3501.7005 array.3495.6986 16
																																																																									Let Ti526.3483
																																																																										Li 1
																																																																										Let Ti527.3484
																																																																											Li 0
																																																																											Let m_gid.3480
																																																																												CallDir min_caml_create_array d:Ti526.3483 Ti527.3484 f:
																																																																												Let Ti529.3517.6957
																																																																													Li 3
																																																																													Let Td530.3518.6958
																																																																														FLi 0.000000
																																																																														Let vec.3494.6959
																																																																															CallDir min_caml_create_float_array d:Ti529.3517.6957 f:Td530.3518.6958 
																																																																															Let Ti531.3516.6960
																																																																																Li 5
																																																																																Let array.3495.6961
																																																																																	CallDir min_caml_create_array d:Ti531.3516.6960 vec.3494.6959 f:
																																																																																	Let Ti533.3514.6963
																																																																																		Li 3
																																																																																		Let Td534.3515.6964
																																																																																			FLi 0.000000
																																																																																			Let Ta535.3513.6965
																																																																																				CallDir min_caml_create_float_array d:Ti533.3514.6963 f:Td534.3515.6964 
																																																																																				Let Tu210.3496.6966
																																																																																					Stw Ta535.3513.6965 array.3495.6961 4
																																																																																					Let Ti537.3510.6968
																																																																																						Li 3
																																																																																						Let Td538.3511.6969
																																																																																							FLi 0.000000
																																																																																							Let Ta539.3509.6970
																																																																																								CallDir min_caml_create_float_array d:Ti537.3510.6968 f:Td538.3511.6969 
																																																																																								Let Tu209.3497.6971
																																																																																									Stw Ta539.3509.6970 array.3495.6961 8
																																																																																									Let Ti541.3506.6973
																																																																																										Li 3
																																																																																										Let Td542.3507.6974
																																																																																											FLi 0.000000
																																																																																											Let Ta543.3505.6975
																																																																																												CallDir min_caml_create_float_array d:Ti541.3506.6973 f:Td542.3507.6974 
																																																																																												Let Tu208.3498.6976
																																																																																													Stw Ta543.3505.6975 array.3495.6961 12
																																																																																													Let Ti545.3502.6978
																																																																																														Li 3
																																																																																														Let Td546.3503.6979
																																																																																															FLi 0.000000
																																																																																															Let Ta547.3501.6980
																																																																																																CallDir min_caml_create_float_array d:Ti545.3502.6978 f:Td546.3503.6979 
																																																																																																Let Tu207.3499.6981
																																																																																																	Stw Ta547.3501.6980 array.3495.6961 16
																																																																																																	Let t.15694
																																																																																																		Mr $fp
																																																																																																		Let $fp
																																																																																																			Add $fp 32
																																																																																																			Let Tu15702
																																																																																																				Stw array.3495.6961 t.15694 28
																																																																																																				Let Tu15701
																																																																																																					Stw m_gid.3480 t.15694 24
																																																																																																					Let Tu15700
																																																																																																						Stw array.3495.6986 t.15694 20
																																																																																																						Let Tu15699
																																																																																																							Stw array.3495.7011 t.15694 16
																																																																																																							Let Tu15698
																																																																																																								Stw m_cdif.3477 t.15694 12
																																																																																																								Let Tu15697
																																																																																																									Stw m_sids.3476 t.15694 8
																																																																																																									Let Tu15696
																																																																																																										Stw array.3495.7036 t.15694 4
																																																																																																										Let Tu15695
																																																																																																											Stw m_rgb.3474 t.15694 0
																																																																																																											Ans
																																																																																																												Mr t.15694
init_line_elements.3086 (args) : line.3087 n.3088 (fargs) : 
	Let Ti512.3468
		Li 0
		Ans
			IfLE Ti512.3468 n.3088
				Let Ti517.3492.6937
					Li 3
					Let Td518.3493.6938
						FLi 0.000000
						Let m_rgb.3474.6939
							CallDir min_caml_create_float_array d:Ti517.3492.6937 f:Td518.3493.6938 
							Let Ti529.3517.11215
								Li 3
								Let Td530.3518.11216
									FLi 0.000000
									Let vec.3494.11217
										CallDir min_caml_create_float_array d:Ti529.3517.11215 f:Td530.3518.11216 
										Let Ti531.3516.11218
											Li 5
											Let array.3495.11219
												CallDir min_caml_create_array d:Ti531.3516.11218 vec.3494.11217 f:
												Let Ti533.3514.11221
													Li 3
													Let Td534.3515.11222
														FLi 0.000000
														Let Ta535.3513.11223
															CallDir min_caml_create_float_array d:Ti533.3514.11221 f:Td534.3515.11222 
															Let Tu210.3496.11224
																Stw Ta535.3513.11223 array.3495.11219 4
																Let Ti537.3510.11226
																	Li 3
																	Let Td538.3511.11227
																		FLi 0.000000
																		Let Ta539.3509.11228
																			CallDir min_caml_create_float_array d:Ti537.3510.11226 f:Td538.3511.11227 
																			Let Tu209.3497.11229
																				Stw Ta539.3509.11228 array.3495.11219 8
																				Let Ti541.3506.11231
																					Li 3
																					Let Td542.3507.11232
																						FLi 0.000000
																						Let Ta543.3505.11233
																							CallDir min_caml_create_float_array d:Ti541.3506.11231 f:Td542.3507.11232 
																							Let Tu208.3498.11234
																								Stw Ta543.3505.11233 array.3495.11219 12
																								Let Ti545.3502.11236
																									Li 3
																									Let Td546.3503.11237
																										FLi 0.000000
																										Let Ta547.3501.11238
																											CallDir min_caml_create_float_array d:Ti545.3502.11236 f:Td546.3503.11237 
																											Let Tu207.3499.11239
																												Stw Ta547.3501.11238 array.3495.11219 16
																												Let Ti520.3489.6942
																													Li 5
																													Let Ti521.3490.6943
																														Li 0
																														Let m_sids.3476.6944
																															CallDir min_caml_create_array d:Ti520.3489.6942 Ti521.3490.6943 f:
																															Let Ti522.3487.6945
																																Li 5
																																Let Ti523.3488.6946
																																	Li 0
																																	Let m_cdif.3477.6947
																																		CallDir min_caml_create_array d:Ti522.3487.6945 Ti523.3488.6946 f:
																																		Let Ti529.3517.11190
																																			Li 3
																																			Let Td530.3518.11191
																																				FLi 0.000000
																																				Let vec.3494.11192
																																					CallDir min_caml_create_float_array d:Ti529.3517.11190 f:Td530.3518.11191 
																																					Let Ti531.3516.11193
																																						Li 5
																																						Let array.3495.11194
																																							CallDir min_caml_create_array d:Ti531.3516.11193 vec.3494.11192 f:
																																							Let Ti533.3514.11196
																																								Li 3
																																								Let Td534.3515.11197
																																									FLi 0.000000
																																									Let Ta535.3513.11198
																																										CallDir min_caml_create_float_array d:Ti533.3514.11196 f:Td534.3515.11197 
																																										Let Tu210.3496.11199
																																											Stw Ta535.3513.11198 array.3495.11194 4
																																											Let Ti537.3510.11201
																																												Li 3
																																												Let Td538.3511.11202
																																													FLi 0.000000
																																													Let Ta539.3509.11203
																																														CallDir min_caml_create_float_array d:Ti537.3510.11201 f:Td538.3511.11202 
																																														Let Tu209.3497.11204
																																															Stw Ta539.3509.11203 array.3495.11194 8
																																															Let Ti541.3506.11206
																																																Li 3
																																																Let Td542.3507.11207
																																																	FLi 0.000000
																																																	Let Ta543.3505.11208
																																																		CallDir min_caml_create_float_array d:Ti541.3506.11206 f:Td542.3507.11207 
																																																		Let Tu208.3498.11209
																																																			Stw Ta543.3505.11208 array.3495.11194 12
																																																			Let Ti545.3502.11211
																																																				Li 3
																																																				Let Td546.3503.11212
																																																					FLi 0.000000
																																																					Let Ta547.3501.11213
																																																						CallDir min_caml_create_float_array d:Ti545.3502.11211 f:Td546.3503.11212 
																																																						Let Tu207.3499.11214
																																																							Stw Ta547.3501.11213 array.3495.11194 16
																																																							Let Ti529.3517.11165
																																																								Li 3
																																																								Let Td530.3518.11166
																																																									FLi 0.000000
																																																									Let vec.3494.11167
																																																										CallDir min_caml_create_float_array d:Ti529.3517.11165 f:Td530.3518.11166 
																																																										Let Ti531.3516.11168
																																																											Li 5
																																																											Let array.3495.11169
																																																												CallDir min_caml_create_array d:Ti531.3516.11168 vec.3494.11167 f:
																																																												Let Ti533.3514.11171
																																																													Li 3
																																																													Let Td534.3515.11172
																																																														FLi 0.000000
																																																														Let Ta535.3513.11173
																																																															CallDir min_caml_create_float_array d:Ti533.3514.11171 f:Td534.3515.11172 
																																																															Let Tu210.3496.11174
																																																																Stw Ta535.3513.11173 array.3495.11169 4
																																																																Let Ti537.3510.11176
																																																																	Li 3
																																																																	Let Td538.3511.11177
																																																																		FLi 0.000000
																																																																		Let Ta539.3509.11178
																																																																			CallDir min_caml_create_float_array d:Ti537.3510.11176 f:Td538.3511.11177 
																																																																			Let Tu209.3497.11179
																																																																				Stw Ta539.3509.11178 array.3495.11169 8
																																																																				Let Ti541.3506.11181
																																																																					Li 3
																																																																					Let Td542.3507.11182
																																																																						FLi 0.000000
																																																																						Let Ta543.3505.11183
																																																																							CallDir min_caml_create_float_array d:Ti541.3506.11181 f:Td542.3507.11182 
																																																																							Let Tu208.3498.11184
																																																																								Stw Ta543.3505.11183 array.3495.11169 12
																																																																								Let Ti545.3502.11186
																																																																									Li 3
																																																																									Let Td546.3503.11187
																																																																										FLi 0.000000
																																																																										Let Ta547.3501.11188
																																																																											CallDir min_caml_create_float_array d:Ti545.3502.11186 f:Td546.3503.11187 
																																																																											Let Tu207.3499.11189
																																																																												Stw Ta547.3501.11188 array.3495.11169 16
																																																																												Let Ti526.3483.6952
																																																																													Li 1
																																																																													Let Ti527.3484.6953
																																																																														Li 0
																																																																														Let m_gid.3480.6954
																																																																															CallDir min_caml_create_array d:Ti526.3483.6952 Ti527.3484.6953 f:
																																																																															Let Ti529.3517.11140
																																																																																Li 3
																																																																																Let Td530.3518.11141
																																																																																	FLi 0.000000
																																																																																	Let vec.3494.11142
																																																																																		CallDir min_caml_create_float_array d:Ti529.3517.11140 f:Td530.3518.11141 
																																																																																		Let Ti531.3516.11143
																																																																																			Li 5
																																																																																			Let array.3495.11144
																																																																																				CallDir min_caml_create_array d:Ti531.3516.11143 vec.3494.11142 f:
																																																																																				Let Ti533.3514.11146
																																																																																					Li 3
																																																																																					Let Td534.3515.11147
																																																																																						FLi 0.000000
																																																																																						Let Ta535.3513.11148
																																																																																							CallDir min_caml_create_float_array d:Ti533.3514.11146 f:Td534.3515.11147 
																																																																																							Let Tu210.3496.11149
																																																																																								Stw Ta535.3513.11148 array.3495.11144 4
																																																																																								Let Ti537.3510.11151
																																																																																									Li 3
																																																																																									Let Td538.3511.11152
																																																																																										FLi 0.000000
																																																																																										Let Ta539.3509.11153
																																																																																											CallDir min_caml_create_float_array d:Ti537.3510.11151 f:Td538.3511.11152 
																																																																																											Let Tu209.3497.11154
																																																																																												Stw Ta539.3509.11153 array.3495.11144 8
																																																																																												Let Ti541.3506.11156
																																																																																													Li 3
																																																																																													Let Td542.3507.11157
																																																																																														FLi 0.000000
																																																																																														Let Ta543.3505.11158
																																																																																															CallDir min_caml_create_float_array d:Ti541.3506.11156 f:Td542.3507.11157 
																																																																																															Let Tu208.3498.11159
																																																																																																Stw Ta543.3505.11158 array.3495.11144 12
																																																																																																Let Ti545.3502.11161
																																																																																																	Li 3
																																																																																																	Let Td546.3503.11162
																																																																																																		FLi 0.000000
																																																																																																		Let Ta547.3501.11163
																																																																																																			CallDir min_caml_create_float_array d:Ti545.3502.11161 f:Td546.3503.11162 
																																																																																																			Let Tu207.3499.11164
																																																																																																				Stw Ta547.3501.11163 array.3495.11144 16
																																																																																																				Let t.15719
																																																																																																					Mr $fp
																																																																																																					Let $fp
																																																																																																						Add $fp 32
																																																																																																						Let Tu15727
																																																																																																							Stw array.3495.11144 t.15719 28
																																																																																																							Let Tu15726
																																																																																																								Stw m_gid.3480.6954 t.15719 24
																																																																																																								Let Tu15725
																																																																																																									Stw array.3495.11169 t.15719 20
																																																																																																									Let Tu15724
																																																																																																										Stw array.3495.11194 t.15719 16
																																																																																																										Let Tu15723
																																																																																																											Stw m_cdif.3477.6947 t.15719 12
																																																																																																											Let Tu15722
																																																																																																												Stw m_sids.3476.6944 t.15719 8
																																																																																																												Let Tu15721
																																																																																																													Stw array.3495.11219 t.15719 4
																																																																																																													Let Tu15720
																																																																																																														Stw m_rgb.3474.6939 t.15719 0
																																																																																																														Let Tt514.3472
																																																																																																															Mr t.15719
																																																																																																															Let o.15728
																																																																																																																Slw n.3088 2
																																																																																																																Let Tu212.3469
																																																																																																																	Stw Tt514.3472 line.3087 o.15728
																																																																																																																	Let Ti516.3470
																																																																																																																		Sub n.3088 1
																																																																																																																		Let Ti512.3468.6931
																																																																																																																			Li 0
																																																																																																																			Ans
																																																																																																																				IfLE Ti512.3468.6931 Ti516.3470
																																																																																																																					Let Tu513.3473.6932
																																																																																																																						Nop
																																																																																																																						Let Tt514.3472.6933
																																																																																																																							CallDir create_pixel.3084 d:f:
																																																																																																																							Let o.15729
																																																																																																																								Slw Ti516.3470 2
																																																																																																																								Let Tu212.3469.6934
																																																																																																																									Stw Tt514.3472.6933 line.3087 o.15729
																																																																																																																									Let Ti516.3470.6936
																																																																																																																										Sub Ti516.3470 1
																																																																																																																										Ans
																																																																																																																											CallDir init_line_elements.3086 d:line.3087 Ti516.3470.6936 f:
																																																																																																																					Ans
																																																																																																																						Mr line.3087
				Ans
					Mr line.3087
calc_dirvec.3096 (args) : icount.3097 group_id.3102 index.3103 (fargs) : x.3098 y.3099 rx.3100 ry.3101 
	Let Ti448.3388
		Li 5
		Ans
			IfLE Ti448.3388 icount.3097
				Let Td449.3442
					FMul x.3098 x.3098
					Let Td450.3443
						FMul y.3099 y.3099
						Let Td451.3440
							FAdd Td449.3442 Td450.3443
							Let Td.e.10560
								FLi 1.000000
								Let Td453.3439
									FAdd Td451.3440 Td.e.10560
									Let l.3393
										CallDir min_caml_sqrt d:f:Td453.3439 
										Let Td454.3438
											FReciprocal l.3393
											Let vx.3394
												FMul x.3098 Td454.3438
												Let Td455.3437
													FReciprocal l.3393
													Let vy.3395
														FMul y.3099 Td455.3437
														Let Td457.3436
															FReciprocal l.3393
															Let Td.e.10561
																FLi 1.000000
																Let vz.3396
																	FMul Td.e.10561 Td457.3436
																	Let Ta458.3434
																		SetExt 716
																		Let o.15730
																			Slw group_id.3102 2
																			Let dgroup.3397
																				Lwz Ta458.3434 o.15730
																				Let o.15731
																					Slw index.3103 2
																					Let Tt459.3433
																						Lwz dgroup.3397 o.15731
																						Let m_vec.5809.6900
																							Lwz Tt459.3433 0
																							Let Tu2.6361.6896
																								Stfd vx.3394 m_vec.5809.6900 0
																								Let Tu1.6362.6898
																									Stfd vy.3395 m_vec.5809.6900 4
																									Let Tu218.3398
																										Stfd vz.3396 m_vec.5809.6900 8
																										Let Ti462.3430
																											Add index.3103 40
																											Let o.15735
																												Slw Ti462.3430 2
																												Let Tt463.3429
																													Lwz dgroup.3397 o.15735
																													Let m_vec.5809.6893
																														Lwz Tt463.3429 0
																														Let Td465.3428
																															FNeg vy.3395
																															Let Tu2.6361.6889
																																Stfd vx.3394 m_vec.5809.6893 0
																																Let Tu1.6362.6891
																																	Stfd vz.3396 m_vec.5809.6893 4
																																	Let Tu217.3399
																																		Stfd Td465.3428 m_vec.5809.6893 8
																																		Let Ti467.3425
																																			Add index.3103 80
																																			Let o.15739
																																				Slw Ti467.3425 2
																																				Let Tt468.3424
																																					Lwz dgroup.3397 o.15739
																																					Let m_vec.5809.6886
																																						Lwz Tt468.3424 0
																																						Let Td470.3422
																																							FNeg vx.3394
																																							Let Td471.3423
																																								FNeg vy.3395
																																								Let Tu2.6361.6882
																																									Stfd vz.3396 m_vec.5809.6886 0
																																									Let Tu1.6362.6884
																																										Stfd Td470.3422 m_vec.5809.6886 4
																																										Let Tu216.3400
																																											Stfd Td471.3423 m_vec.5809.6886 8
																																											Let Ti473.3419
																																												Add index.3103 1
																																												Let o.15743
																																													Slw Ti473.3419 2
																																													Let Tt474.3418
																																														Lwz dgroup.3397 o.15743
																																														Let m_vec.5809.6879
																																															Lwz Tt474.3418 0
																																															Let Td476.3415
																																																FNeg vx.3394
																																																Let Td477.3416
																																																	FNeg vy.3395
																																																	Let Td478.3417
																																																		FNeg vz.3396
																																																		Let Tu2.6361.6875
																																																			Stfd Td476.3415 m_vec.5809.6879 0
																																																			Let Tu1.6362.6877
																																																				Stfd Td477.3416 m_vec.5809.6879 4
																																																				Let Tu215.3401
																																																					Stfd Td478.3417 m_vec.5809.6879 8
																																																					Let Ti480.3412
																																																						Add index.3103 41
																																																						Let o.15747
																																																							Slw Ti480.3412 2
																																																							Let Tt481.3411
																																																								Lwz dgroup.3397 o.15747
																																																								Let m_vec.5809.6872
																																																									Lwz Tt481.3411 0
																																																									Let Td483.3409
																																																										FNeg vx.3394
																																																										Let Td484.3410
																																																											FNeg vz.3396
																																																											Let Tu2.6361.6868
																																																												Stfd Td483.3409 m_vec.5809.6872 0
																																																												Let Tu1.6362.6870
																																																													Stfd Td484.3410 m_vec.5809.6872 4
																																																													Let Tu214.3402
																																																														Stfd vy.3395 m_vec.5809.6872 8
																																																														Let Ti486.3406
																																																															Add index.3103 81
																																																															Let o.15751
																																																																Slw Ti486.3406 2
																																																																Let Tt487.3405
																																																																	Lwz dgroup.3397 o.15751
																																																																	Let m_vec.5809.6865
																																																																		Lwz Tt487.3405 0
																																																																		Let Td489.3404
																																																																			FNeg vz.3396
																																																																			Let Tu2.6361.6861
																																																																				Stfd Td489.3404 m_vec.5809.6865 0
																																																																				Let Tu1.6362.6863
																																																																					Stfd vx.3394 m_vec.5809.6865 4
																																																																					Ans
																																																																						Stfd vy.3395 m_vec.5809.6865 8
				Let Td493.3452.6850
					FMul y.3099 y.3099
					Let Td.e.10555
						FLi 0.100000
						Let Td495.3451.6852
							FAdd Td493.3452.6850 Td.e.10555
							Let l.3444.6853
								CallDir min_caml_sqrt d:f:Td495.3451.6852 
								Let Td497.3450.6855
									FReciprocal l.3444.6853
									Let Td.e.10556
										FLi 1.000000
										Let tan_h.3445.6856
											FMul Td.e.10556 Td497.3450.6855
											Let theta_h.3446.6857
												CallDir min_caml_atan d:f:tan_h.3445.6856 
												Let Td498.3448.6858
													FMul theta_h.3446.6857 rx.3100
													Let Td499.3454.11137
														CallDir min_caml_sin d:f:Td498.3448.6858 
														Let Td500.3455.11138
															CallDir min_caml_cos d:f:Td498.3448.6858 
															Let Td501.3456.11139
																FReciprocal Td500.3455.11138
																Let tan_m.3447.6859
																	FMul Td499.3454.11137 Td501.3456.11139
																	Let x2.3389
																		FMul tan_m.3447.6859 l.3444.6853
																		Let Ti491.3390
																			Add icount.3097 1
																			Let Td493.3452.6840
																				FMul x2.3389 x2.3389
																				Let Td.e.10558
																					FLi 0.100000
																					Let Td495.3451.6842
																						FAdd Td493.3452.6840 Td.e.10558
																						Let l.3444.6843
																							CallDir min_caml_sqrt d:f:Td495.3451.6842 
																							Let Td497.3450.6845
																								FReciprocal l.3444.6843
																								Let Td.e.10559
																									FLi 1.000000
																									Let tan_h.3445.6846
																										FMul Td.e.10559 Td497.3450.6845
																										Let theta_h.3446.6847
																											CallDir min_caml_atan d:f:tan_h.3445.6846 
																											Let Td498.3448.6848
																												FMul theta_h.3446.6847 ry.3101
																												Let Td499.3454.11134
																													CallDir min_caml_sin d:f:Td498.3448.6848 
																													Let Td500.3455.11135
																														CallDir min_caml_cos d:f:Td498.3448.6848 
																														Let Td501.3456.11136
																															FReciprocal Td500.3455.11135
																															Let tan_m.3447.6849
																																FMul Td499.3454.11134 Td501.3456.11136
																																Let Td492.3391
																																	FMul tan_m.3447.6849 l.3444.6843
																																	Ans
																																		CallDir calc_dirvec.3096 d:Ti491.3390 group_id.3102 index.3103 f:x2.3389 Td492.3391 rx.3100 ry.3101 
calc_dirvecs.3104 (args) : col.3105 group_id.3107 index.3108 (fargs) : ry.3106 
	Let Ti427.3363
		Li 0
		Ans
			IfLE Ti427.3363 col.3105
				Let Td428.3386
					CallDir min_caml_float_of_int d:col.3105 f:
					Let Td.e.10541
						FLi 0.200000
						Let Td430.3384
							FMul Td428.3386 Td.e.10541
							Let Td.e.10542
								FLi 0.900000
								Let rx.3364
									FSub Td430.3384 Td.e.10542
									Let Ti432.3381
										Li 0
										Let Td433.3382
											FLi 0.000000
											Let Td434.3383
												FLi 0.000000
												Let Tu220.3365
													CallDir calc_dirvec.3096 d:Ti432.3381 group_id.3107 index.3108 f:Td433.3382 Td434.3383 rx.3364 ry.3106 
													Let Td435.3379
														CallDir min_caml_float_of_int d:col.3105 f:
														Let Td.e.10543
															FLi 0.200000
															Let Td437.3377
																FMul Td435.3379 Td.e.10543
																Let Td.e.10544
																	FLi 0.100000
																	Let rx2.3366
																		FAdd Td437.3377 Td.e.10544
																		Let Ti439.3372
																			Li 0
																			Let Td440.3373
																				FLi 0.000000
																				Let Td441.3374
																					FLi 0.000000
																					Let Ti443.3375
																						Add index.3108 2
																						Let Tu219.3367
																							CallDir calc_dirvec.3096 d:Ti439.3372 group_id.3107 Ti443.3375 f:Td440.3373 Td441.3374 rx2.3366 ry.3106 
																							Let Ti445.3368
																								Sub col.3105 1
																								Let sum.6366.6837
																									Add group_id.3107 1
																									Let Ti2623.6367.6838
																										Li 5
																										Let Ti447.3369
																											IfLE Ti2623.6367.6838 sum.6366.6837
																												Ans
																													Sub sum.6366.6837 5
																												Ans
																													Mr sum.6366.6837
																											Let Ti427.3363.6812
																												Li 0
																												Ans
																													IfLE Ti427.3363.6812 Ti445.3368
																														Let Td428.3386.6813
																															CallDir min_caml_float_of_int d:Ti445.3368 f:
																															Let Td.e.10549
																																FLi 0.200000
																																Let Td430.3384.6815
																																	FMul Td428.3386.6813 Td.e.10549
																																	Let Td.e.10550
																																		FLi 0.900000
																																		Let rx.3364.6817
																																			FSub Td430.3384.6815 Td.e.10550
																																			Let Ti432.3381.6818
																																				Li 0
																																				Let Td433.3382.6819
																																					FLi 0.000000
																																					Let Td434.3383.6820
																																						FLi 0.000000
																																						Let Tu220.3365.6821
																																							CallDir calc_dirvec.3096 d:Ti432.3381.6818 Ti447.3369 index.3108 f:Td433.3382.6819 Td434.3383.6820 rx.3364.6817 ry.3106 
																																							Let Td435.3379.6822
																																								CallDir min_caml_float_of_int d:Ti445.3368 f:
																																								Let Td.e.10551
																																									FLi 0.200000
																																									Let Td437.3377.6824
																																										FMul Td435.3379.6822 Td.e.10551
																																										Let Td.e.10552
																																											FLi 0.100000
																																											Let rx2.3366.6826
																																												FAdd Td437.3377.6824 Td.e.10552
																																												Let Ti439.3372.6827
																																													Li 0
																																													Let Td440.3373.6828
																																														FLi 0.000000
																																														Let Td441.3374.6829
																																															FLi 0.000000
																																															Let Ti443.3375.6831
																																																Add index.3108 2
																																																Let Tu219.3367.6832
																																																	CallDir calc_dirvec.3096 d:Ti439.3372.6827 Ti447.3369 Ti443.3375.6831 f:Td440.3373.6828 Td441.3374.6829 rx2.3366.6826 ry.3106 
																																																	Let Ti445.3368.6834
																																																		Sub Ti445.3368 1
																																																		Let sum.6366.11131
																																																			Add Ti447.3369 1
																																																			Let Ti2623.6367.11132
																																																				Li 5
																																																				Let Ti447.3369.6836
																																																					IfLE Ti2623.6367.11132 sum.6366.11131
																																																						Ans
																																																							Sub sum.6366.11131 5
																																																						Ans
																																																							Mr sum.6366.11131
																																																					Ans
																																																						CallDir calc_dirvecs.3104 d:Ti445.3368.6834 Ti447.3369.6836 index.3108 f:ry.3106 
																														Ans
																															Nop
				Ans
					Nop
calc_dirvec_rows.3109 (args) : row.3110 group_id.3111 index.3112 (fargs) : 
	Let Ti415.3349
		Li 0
		Ans
			IfLE Ti415.3349 row.3110
				Let Td416.3361
					CallDir min_caml_float_of_int d:row.3110 f:
					Let Td.e.10526
						FLi 0.200000
						Let Td418.3359
							FMul Td416.3361 Td.e.10526
							Let Td.e.10527
								FLi 0.900000
								Let ry.3350
									FSub Td418.3359 Td.e.10527
									Let Ti420.3358
										Li 4
										Let Td428.3386.6788
											CallDir min_caml_float_of_int d:Ti420.3358 f:
											Let Td.e.10528
												FLi 0.200000
												Let Td430.3384.6790
													FMul Td428.3386.6788 Td.e.10528
													Let Td.e.10529
														FLi 0.900000
														Let rx.3364.6792
															FSub Td430.3384.6790 Td.e.10529
															Let Ti432.3381.6793
																Li 0
																Let Td433.3382.6794
																	FLi 0.000000
																	Let Td434.3383.6795
																		FLi 0.000000
																		Let Tu220.3365.6796
																			CallDir calc_dirvec.3096 d:Ti432.3381.6793 group_id.3111 index.3112 f:Td433.3382.6794 Td434.3383.6795 rx.3364.6792 ry.3350 
																			Let Td435.3379.6797
																				CallDir min_caml_float_of_int d:Ti420.3358 f:
																				Let Td.e.10530
																					FLi 0.200000
																					Let Td437.3377.6799
																						FMul Td435.3379.6797 Td.e.10530
																						Let Td.e.10531
																							FLi 0.100000
																							Let rx2.3366.6801
																								FAdd Td437.3377.6799 Td.e.10531
																								Let Ti439.3372.6802
																									Li 0
																									Let Td440.3373.6803
																										FLi 0.000000
																										Let Td441.3374.6804
																											FLi 0.000000
																											Let Ti443.3375.6806
																												Add index.3112 2
																												Let Tu219.3367.6807
																													CallDir calc_dirvec.3096 d:Ti439.3372.6802 group_id.3111 Ti443.3375.6806 f:Td440.3373.6803 Td441.3374.6804 rx2.3366.6801 ry.3350 
																													Let Ti445.3368.6809
																														Li 3
																														Let sum.6366.11128
																															Add group_id.3111 1
																															Let Ti2623.6367.11129
																																Li 5
																																Let Ti447.3369.6811
																																	IfLE Ti2623.6367.11129 sum.6366.11128
																																		Ans
																																			Sub sum.6366.11128 5
																																		Ans
																																			Mr sum.6366.11128
																																	Let Tu221.3351
																																		CallDir calc_dirvecs.3104 d:Ti445.3368.6809 Ti447.3369.6811 index.3112 f:ry.3350 
																																		Let Ti422.3352
																																			Sub row.3110 1
																																			Let sum.6366.6784
																																				Add group_id.3111 2
																																				Let Ti2623.6367.6785
																																					Li 5
																																					Let Ti424.3353
																																						IfLE Ti2623.6367.6785 sum.6366.6784
																																							Ans
																																								Sub sum.6366.6784 5
																																							Ans
																																								Mr sum.6366.6784
																																						Let Ti426.3354
																																							Add index.3112 4
																																							Let Ti415.3349.6770
																																								Li 0
																																								Ans
																																									IfLE Ti415.3349.6770 Ti422.3352
																																										Let Td416.3361.6771
																																											CallDir min_caml_float_of_int d:Ti422.3352 f:
																																											Let Td.e.10537
																																												FLi 0.200000
																																												Let Td418.3359.6773
																																													FMul Td416.3361.6771 Td.e.10537
																																													Let Td.e.10538
																																														FLi 0.900000
																																														Let ry.3350.6775
																																															FSub Td418.3359.6773 Td.e.10538
																																															Let Ti420.3358.6776
																																																Li 4
																																																Let Tu221.3351.6777
																																																	CallDir calc_dirvecs.3104 d:Ti420.3358.6776 Ti424.3353 Ti426.3354 f:ry.3350.6775 
																																																	Let Ti422.3352.6779
																																																		Sub Ti422.3352 1
																																																		Let sum.6366.11125
																																																			Add Ti424.3353 2
																																																			Let Ti2623.6367.11126
																																																				Li 5
																																																				Let Ti424.3353.6781
																																																					IfLE Ti2623.6367.11126 sum.6366.11125
																																																						Ans
																																																							Sub sum.6366.11125 5
																																																						Ans
																																																							Mr sum.6366.11125
																																																					Let Ti426.3354.6783
																																																						Add Ti426.3354 4
																																																						Ans
																																																							CallDir calc_dirvec_rows.3109 d:Ti422.3352.6779 Ti424.3353.6781 Ti426.3354.6783 f:
																																										Ans
																																											Nop
				Ans
					Nop
create_dirvec_elements.3115 (args) : d.3116 index.3117 (fargs) : 
	Let Ti405.3336
		Li 0
		Ans
			IfLE Ti405.3336 index.3117
				Let Ti410.3347.6763
					Li 3
					Let Td411.3348.6764
						FLi 0.000000
						Let v3.3342.6765
							CallDir min_caml_create_float_array d:Ti410.3347.6763 f:Td411.3348.6764 
							Let Ta412.3345.6766
								SetExt 0
								Let Ti414.3344.6768
									Lwz Ta412.3345.6766 0
									Let consts.3343.6769
										CallDir min_caml_create_array d:Ti414.3344.6768 v3.3342.6765 f:
										Let t.15756
											Mr $fp
											Let $fp
												Add $fp 8
												Let Tu15758
													Stw consts.3343.6769 t.15756 4
													Let Tu15757
														Stw v3.3342.6765 t.15756 0
														Let Tt407.3340
															Mr t.15756
															Let o.15759
																Slw index.3117 2
																Let Tu223.3337
																	Stw Tt407.3340 d.3116 o.15759
																	Let Ti409.3338
																		Sub index.3117 1
																		Let Ti405.3336.6757
																			Li 0
																			Ans
																				IfLE Ti405.3336.6757 Ti409.3338
																					Let Ti410.3347.11118
																						Li 3
																						Let Td411.3348.11119
																							FLi 0.000000
																							Let v3.3342.11120
																								CallDir min_caml_create_float_array d:Ti410.3347.11118 f:Td411.3348.11119 
																								Let Ta412.3345.11121
																									SetExt 0
																									Let Ti414.3344.11123
																										Lwz Ta412.3345.11121 0
																										Let consts.3343.11124
																											CallDir min_caml_create_array d:Ti414.3344.11123 v3.3342.11120 f:
																											Let t.15761
																												Mr $fp
																												Let $fp
																													Add $fp 8
																													Let Tu15763
																														Stw consts.3343.11124 t.15761 4
																														Let Tu15762
																															Stw v3.3342.11120 t.15761 0
																															Let Tt407.3340.6759
																																Mr t.15761
																																Let o.15764
																																	Slw Ti409.3338 2
																																	Let Tu223.3337.6760
																																		Stw Tt407.3340.6759 d.3116 o.15764
																																		Let Ti409.3338.6762
																																			Sub Ti409.3338 1
																																			Let Ti405.3336.11100
																																				Li 0
																																				Ans
																																					IfLE Ti405.3336.11100 Ti409.3338.6762
																																						Let Ti410.3347.6763.11101
																																							Li 3
																																							Let Td411.3348.6764.11102
																																								FLi 0.000000
																																								Let v3.3342.6765.11103
																																									CallDir min_caml_create_float_array d:Ti410.3347.6763.11101 f:Td411.3348.6764.11102 
																																									Let Ta412.3345.6766.11104
																																										SetExt 0
																																										Let Ti414.3344.6768.11106
																																											Lwz Ta412.3345.6766.11104 0
																																											Let consts.3343.6769.11107
																																												CallDir min_caml_create_array d:Ti414.3344.6768.11106 v3.3342.6765.11103 f:
																																												Let t.15766
																																													Mr $fp
																																													Let $fp
																																														Add $fp 8
																																														Let Tu15768
																																															Stw consts.3343.6769.11107 t.15766 4
																																															Let Tu15767
																																																Stw v3.3342.6765.11103 t.15766 0
																																																Let Tt407.3340.11108
																																																	Mr t.15766
																																																	Let o.15769
																																																		Slw Ti409.3338.6762 2
																																																		Let Tu223.3337.11109
																																																			Stw Tt407.3340.11108 d.3116 o.15769
																																																			Let Ti409.3338.11111
																																																				Sub Ti409.3338.6762 1
																																																				Let Ti405.3336.6757.11112
																																																					Li 0
																																																					Ans
																																																						IfLE Ti405.3336.6757.11112 Ti409.3338.11111
																																																							Let Ti410.3347.14095
																																																								Li 3
																																																								Let Td411.3348.14096
																																																									FLi 0.000000
																																																									Let v3.3342.14097
																																																										CallDir min_caml_create_float_array d:Ti410.3347.14095 f:Td411.3348.14096 
																																																										Let Ta412.3345.14098
																																																											SetExt 0
																																																											Let Ti414.3344.14100
																																																												Lwz Ta412.3345.14098 0
																																																												Let consts.3343.14101
																																																													CallDir min_caml_create_array d:Ti414.3344.14100 v3.3342.14097 f:
																																																													Let t.15771
																																																														Mr $fp
																																																														Let $fp
																																																															Add $fp 8
																																																															Let Tu15773
																																																																Stw consts.3343.14101 t.15771 4
																																																																Let Tu15772
																																																																	Stw v3.3342.14097 t.15771 0
																																																																	Let Tt407.3340.6759.11114
																																																																		Mr t.15771
																																																																		Let o.15774
																																																																			Slw Ti409.3338.11111 2
																																																																			Let Tu223.3337.6760.11115
																																																																				Stw Tt407.3340.6759.11114 d.3116 o.15774
																																																																				Let Ti409.3338.6762.11117
																																																																					Sub Ti409.3338.11111 1
																																																																					Ans
																																																																						CallDir create_dirvec_elements.3115 d:d.3116 Ti409.3338.6762.11117 f:
																																																							Ans
																																																								Nop
																																						Ans
																																							Nop
																					Ans
																						Nop
				Ans
					Nop
create_dirvecs.3118 (args) : index.3119 (fargs) : 
	Let Ti394.3323
		Li 0
		Ans
			IfLE Ti394.3323 index.3119
				Let Ta395.3331
					SetExt 716
					Let Ti396.3333
						Li 120
						Let Ti410.3347.6750
							Li 3
							Let Td411.3348.6751
								FLi 0.000000
								Let v3.3342.6752
									CallDir min_caml_create_float_array d:Ti410.3347.6750 f:Td411.3348.6751 
									Let Ta412.3345.6753
										SetExt 0
										Let Ti414.3344.6755
											Lwz Ta412.3345.6753 0
											Let consts.3343.6756
												CallDir min_caml_create_array d:Ti414.3344.6755 v3.3342.6752 f:
												Let t.15776
													Mr $fp
													Let $fp
														Add $fp 8
														Let Tu15778
															Stw consts.3343.6756 t.15776 4
															Let Tu15777
																Stw v3.3342.6752 t.15776 0
																Let Tt398.3334
																	Mr t.15776
																	Let Ta399.3332
																		CallDir min_caml_create_array d:Ti396.3333 Tt398.3334 f:
																		Let o.15779
																			Slw index.3119 2
																			Let Tu225.3324
																				Stw Ta399.3332 Ta395.3331 o.15779
																				Let Ta400.3330
																					SetExt 716
																					Let o.15780
																						Slw index.3119 2
																						Let Ta401.3328
																							Lwz Ta400.3330 o.15780
																							Let Ti410.3347.11093
																								Li 3
																								Let Td411.3348.11094
																									FLi 0.000000
																									Let v3.3342.11095
																										CallDir min_caml_create_float_array d:Ti410.3347.11093 f:Td411.3348.11094 
																										Let Ta412.3345.11096
																											SetExt 0
																											Let Ti414.3344.11098
																												Lwz Ta412.3345.11096 0
																												Let consts.3343.11099
																													CallDir min_caml_create_array d:Ti414.3344.11098 v3.3342.11095 f:
																													Let t.15782
																														Mr $fp
																														Let $fp
																															Add $fp 8
																															Let Tu15784
																																Stw consts.3343.11099 t.15782 4
																																Let Tu15783
																																	Stw v3.3342.11095 t.15782 0
																																	Let Tt407.3340.6746
																																		Mr t.15782
																																		Let Tu223.3337.6747
																																			Stw Tt407.3340.6746 Ta401.3328 472
																																			Let Ti410.3347.6763.11076
																																				Li 3
																																				Let Td411.3348.6764.11077
																																					FLi 0.000000
																																					Let v3.3342.6765.11078
																																						CallDir min_caml_create_float_array d:Ti410.3347.6763.11076 f:Td411.3348.6764.11077 
																																						Let Ta412.3345.6766.11079
																																							SetExt 0
																																							Let Ti414.3344.6768.11081
																																								Lwz Ta412.3345.6766.11079 0
																																								Let consts.3343.6769.11082
																																									CallDir min_caml_create_array d:Ti414.3344.6768.11081 v3.3342.6765.11078 f:
																																									Let t.15787
																																										Mr $fp
																																										Let $fp
																																											Add $fp 8
																																											Let Tu15789
																																												Stw consts.3343.6769.11082 t.15787 4
																																												Let Tu15788
																																													Stw v3.3342.6765.11078 t.15787 0
																																													Let Tt407.3340.11083
																																														Mr t.15787
																																														Let Tu223.3337.11084
																																															Stw Tt407.3340.11083 Ta401.3328 468
																																															Let Ti410.3347.14088
																																																Li 3
																																																Let Td411.3348.14089
																																																	FLi 0.000000
																																																	Let v3.3342.14090
																																																		CallDir min_caml_create_float_array d:Ti410.3347.14088 f:Td411.3348.14089 
																																																		Let Ta412.3345.14091
																																																			SetExt 0
																																																			Let Ti414.3344.14093
																																																				Lwz Ta412.3345.14091 0
																																																				Let consts.3343.14094
																																																					CallDir min_caml_create_array d:Ti414.3344.14093 v3.3342.14090 f:
																																																					Let t.15792
																																																						Mr $fp
																																																						Let $fp
																																																							Add $fp 8
																																																							Let Tu15794
																																																								Stw consts.3343.14094 t.15792 4
																																																								Let Tu15793
																																																									Stw v3.3342.14090 t.15792 0
																																																									Let Tt407.3340.6759.11089
																																																										Mr t.15792
																																																										Let Tu223.3337.6760.11090
																																																											Stw Tt407.3340.6759.11089 Ta401.3328 464
																																																											Let Ti409.3338.6762.11092
																																																												Li 115
																																																												Let Tu224.3325
																																																													CallDir create_dirvec_elements.3115 d:Ta401.3328 Ti409.3338.6762.11092 f:
																																																													Let Ti404.3326
																																																														Sub index.3119 1
																																																														Let Ti394.3323.6731
																																																															Li 0
																																																															Ans
																																																																IfLE Ti394.3323.6731 Ti404.3326
																																																																	Let Ta395.3331.6732
																																																																		SetExt 716
																																																																		Let Ti396.3333.6733
																																																																			Li 120
																																																																			Let Ti410.3347.11068
																																																																				Li 3
																																																																				Let Td411.3348.11069
																																																																					FLi 0.000000
																																																																					Let v3.3342.11070
																																																																						CallDir min_caml_create_float_array d:Ti410.3347.11068 f:Td411.3348.11069 
																																																																						Let Ta412.3345.11071
																																																																							SetExt 0
																																																																							Let Ti414.3344.11073
																																																																								Lwz Ta412.3345.11071 0
																																																																								Let consts.3343.11074
																																																																									CallDir min_caml_create_array d:Ti414.3344.11073 v3.3342.11070 f:
																																																																									Let t.15797
																																																																										Mr $fp
																																																																										Let $fp
																																																																											Add $fp 8
																																																																											Let Tu15799
																																																																												Stw consts.3343.11074 t.15797 4
																																																																												Let Tu15798
																																																																													Stw v3.3342.11070 t.15797 0
																																																																													Let Tt398.3334.6735
																																																																														Mr t.15797
																																																																														Let Ta399.3332.6736
																																																																															CallDir min_caml_create_array d:Ti396.3333.6733 Tt398.3334.6735 f:
																																																																															Let o.15800
																																																																																Slw Ti404.3326 2
																																																																																Let Tu225.3324.6737
																																																																																	Stw Ta399.3332.6736 Ta395.3331.6732 o.15800
																																																																																	Let Ta400.3330.6738
																																																																																		SetExt 716
																																																																																		Let o.15801
																																																																																			Slw Ti404.3326 2
																																																																																			Let Ta401.3328.6739
																																																																																				Lwz Ta400.3330.6738 o.15801
																																																																																				Let Ti410.3347.6763.11051
																																																																																					Li 3
																																																																																					Let Td411.3348.6764.11052
																																																																																						FLi 0.000000
																																																																																						Let v3.3342.6765.11053
																																																																																							CallDir min_caml_create_float_array d:Ti410.3347.6763.11051 f:Td411.3348.6764.11052 
																																																																																							Let Ta412.3345.6766.11054
																																																																																								SetExt 0
																																																																																								Let Ti414.3344.6768.11056
																																																																																									Lwz Ta412.3345.6766.11054 0
																																																																																									Let consts.3343.6769.11057
																																																																																										CallDir min_caml_create_array d:Ti414.3344.6768.11056 v3.3342.6765.11053 f:
																																																																																										Let t.15803
																																																																																											Mr $fp
																																																																																											Let $fp
																																																																																												Add $fp 8
																																																																																												Let Tu15805
																																																																																													Stw consts.3343.6769.11057 t.15803 4
																																																																																													Let Tu15804
																																																																																														Stw v3.3342.6765.11053 t.15803 0
																																																																																														Let Tt407.3340.11058
																																																																																															Mr t.15803
																																																																																															Let Tu223.3337.11059
																																																																																																Stw Tt407.3340.11058 Ta401.3328.6739 472
																																																																																																Let Ti410.3347.14081
																																																																																																	Li 3
																																																																																																	Let Td411.3348.14082
																																																																																																		FLi 0.000000
																																																																																																		Let v3.3342.14083
																																																																																																			CallDir min_caml_create_float_array d:Ti410.3347.14081 f:Td411.3348.14082 
																																																																																																			Let Ta412.3345.14084
																																																																																																				SetExt 0
																																																																																																				Let Ti414.3344.14086
																																																																																																					Lwz Ta412.3345.14084 0
																																																																																																					Let consts.3343.14087
																																																																																																						CallDir min_caml_create_array d:Ti414.3344.14086 v3.3342.14083 f:
																																																																																																						Let t.15808
																																																																																																							Mr $fp
																																																																																																							Let $fp
																																																																																																								Add $fp 8
																																																																																																								Let Tu15810
																																																																																																									Stw consts.3343.14087 t.15808 4
																																																																																																									Let Tu15809
																																																																																																										Stw v3.3342.14083 t.15808 0
																																																																																																										Let Tt407.3340.6759.11064
																																																																																																											Mr t.15808
																																																																																																											Let Tu223.3337.6760.11065
																																																																																																												Stw Tt407.3340.6759.11064 Ta401.3328.6739 468
																																																																																																												Let Ti409.3338.6762.11067
																																																																																																													Li 116
																																																																																																													Let Tu224.3325.6741
																																																																																																														CallDir create_dirvec_elements.3115 d:Ta401.3328.6739 Ti409.3338.6762.11067 f:
																																																																																																														Let Ti404.3326.6743
																																																																																																															Sub Ti404.3326 1
																																																																																																															Ans
																																																																																																																CallDir create_dirvecs.3118 d:Ti404.3326.6743 f:
																																																																	Ans
																																																																		Nop
				Ans
					Nop
init_dirvec_constants.3120 (args) : vecset.3121 index.3122 (fargs) : 
	Let Ti390.3318
		Li 0
		Ans
			IfLE Ti390.3318 index.3122
				Let o.15812
					Slw index.3122 2
					Let Tt391.3322
						Lwz vecset.3121 o.15812
						Let Ta1543.4764.6726
							SetExt 0
							Let Ti1545.4762.6728
								Lwz Ta1543.4764.6726 0
								Let Ti1547.4761.6730
									Sub Ti1545.4762.6728 1
									Let Tu226.3319
										CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322 Ti1547.4761.6730 f:
										Let Ti393.3320
											Sub index.3122 1
											Let Ti390.3318.6721
												Li 0
												Ans
													IfLE Ti390.3318.6721 Ti393.3320
														Let o.15814
															Slw Ti393.3320 2
															Let Tt391.3322.6722
																Lwz vecset.3121 o.15814
																Let Ta1543.4764.11031
																	SetExt 0
																	Let Ti1545.4762.11033
																		Lwz Ta1543.4764.11031 0
																		Let Ti1547.4761.11035
																			Sub Ti1545.4762.11033 1
																			Let Ti1548.4766.9353.11036
																				Li 0
																				Let Tu226.3319.6723
																					IfLE Ti1548.4766.9353.11036 Ti1547.4761.11035
																						Let Ta1549.4779.9354.11037
																							SetExt 48
																							Let o.15816
																								Slw Ti1547.4761.11035 2
																								Let m.4767.9355.11038
																									Lwz Ta1549.4779.9354.11037 o.15816
																									Let m_const.5808.14080
																										Lwz Tt391.3322.6722 4
																										Let m_vec.5809.14077
																											Lwz Tt391.3322.6722 0
																											Let m_shape.6109.14067
																												Lwz m.4767.9355.11038 4
																												Let Ti1550.4774.9359.11042
																													Li 1
																													Let Tu100.4771.9360.11043
																														IfEq m_shape.6109.14067 Ti1550.4774.9359.11042
																															Let Ta1551.4778.9366.11049
																																CallDir setup_rect_table.2893 d:m_vec.5809.14077 m.4767.9355.11038 f:
																																Let o.15819
																																	Slw Ti1547.4761.11035 2
																																	Ans
																																		Stw Ta1551.4778.9366.11049 m_const.5808.14080 o.15819
																															Let Ti1552.4775.9363.11046
																																Li 2
																																Ans
																																	IfEq m_shape.6109.14067 Ti1552.4775.9363.11046
																																		Let Ta1553.4777.9365.11048
																																			CallDir setup_surface_table.2896 d:m_vec.5809.14077 m.4767.9355.11038 f:
																																			Let o.15818
																																				Slw Ti1547.4761.11035 2
																																				Ans
																																					Stw Ta1553.4777.9365.11048 m_const.5808.14080 o.15818
																																		Let Ta1554.4776.9364.11047
																																			CallDir setup_second_table.2899 d:m_vec.5809.14077 m.4767.9355.11038 f:
																																			Let o.15817
																																				Slw Ti1547.4761.11035 2
																																				Ans
																																					Stw Ta1554.4776.9364.11047 m_const.5808.14080 o.15817
																														Let Ti1556.4772.9362.11045
																															Sub Ti1547.4761.11035 1
																															Ans
																																CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6722 Ti1556.4772.9362.11045 f:
																						Ans
																							Nop
																					Let Ti393.3320.6725
																						Sub Ti393.3320 1
																						Let Ti390.3318.11016
																							Li 0
																							Ans
																								IfLE Ti390.3318.11016 Ti393.3320.6725
																									Let o.15820
																										Slw Ti393.3320.6725 2
																										Let Tt391.3322.11017
																											Lwz vecset.3121 o.15820
																											Let Ta1543.4764.6726.11018
																												SetExt 0
																												Let Ti1545.4762.6728.11020
																													Lwz Ta1543.4764.6726.11018 0
																													Let Ti1547.4761.6730.11022
																														Sub Ti1545.4762.6728.11020 1
																														Let Tu226.3319.11023
																															CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.11017 Ti1547.4761.6730.11022 f:
																															Let Ti393.3320.11025
																																Sub Ti393.3320.6725 1
																																Let Ti390.3318.6721.11026
																																	Li 0
																																	Ans
																																		IfLE Ti390.3318.6721.11026 Ti393.3320.11025
																																			Let o.15822
																																				Slw Ti393.3320.11025 2
																																				Let Tt391.3322.6722.11027
																																					Lwz vecset.3121 o.15822
																																					Let Ta1543.4764.14032
																																						SetExt 0
																																						Let Ti1545.4762.14034
																																							Lwz Ta1543.4764.14032 0
																																							Let Ti1547.4761.14036
																																								Sub Ti1545.4762.14034 1
																																								Let Ti1548.4766.9353.14037
																																									Li 0
																																									Let Tu226.3319.6723.11028
																																										IfLE Ti1548.4766.9353.14037 Ti1547.4761.14036
																																											Let Ta1549.4779.9354.14038
																																												SetExt 48
																																												Let o.15824
																																													Slw Ti1547.4761.14036 2
																																													Let m.4767.9355.14039
																																														Lwz Ta1549.4779.9354.14038 o.15824
																																														Let m_const.5808.13255.14041
																																															Lwz Tt391.3322.6722.11027 4
																																															Let m_vec.5809.13252.14043
																																																Lwz Tt391.3322.6722.11027 0
																																																Let m_shape.6109.13242.14047
																																																	Lwz m.4767.9355.14039 4
																																																	Let Ti1550.4774.9359.14058
																																																		Li 1
																																																		Let Tu100.4771.9360.14059
																																																			IfEq m_shape.6109.13242.14047 Ti1550.4774.9359.14058
																																																				Let Ta1551.4778.9366.14065
																																																					CallDir setup_rect_table.2893 d:m_vec.5809.13252.14043 m.4767.9355.14039 f:
																																																					Let o.15827
																																																						Slw Ti1547.4761.14036 2
																																																						Ans
																																																							Stw Ta1551.4778.9366.14065 m_const.5808.13255.14041 o.15827
																																																				Let Ti1552.4775.9363.14062
																																																					Li 2
																																																					Ans
																																																						IfEq m_shape.6109.13242.14047 Ti1552.4775.9363.14062
																																																							Let Ta1553.4777.9365.14064
																																																								CallDir setup_surface_table.2896 d:m_vec.5809.13252.14043 m.4767.9355.14039 f:
																																																								Let o.15826
																																																									Slw Ti1547.4761.14036 2
																																																									Ans
																																																										Stw Ta1553.4777.9365.14064 m_const.5808.13255.14041 o.15826
																																																							Let Ta1554.4776.9364.14063
																																																								CallDir setup_second_table.2899 d:m_vec.5809.13252.14043 m.4767.9355.14039 f:
																																																								Let o.15825
																																																									Slw Ti1547.4761.14036 2
																																																									Ans
																																																										Stw Ta1554.4776.9364.14063 m_const.5808.13255.14041 o.15825
																																																			Let Ti1556.4772.9362.14061
																																																				Sub Ti1547.4761.14036 1
																																																				Ans
																																																					CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6722.11027 Ti1556.4772.9362.14061 f:
																																											Ans
																																												Nop
																																										Let Ti393.3320.6725.11030
																																											Sub Ti393.3320.11025 1
																																											Ans
																																												CallDir init_dirvec_constants.3120 d:vecset.3121 Ti393.3320.6725.11030 f:
																																			Ans
																																				Nop
																									Ans
																										Nop
														Ans
															Nop
				Ans
					Nop
init_vecset_constants.3123 (args) : index.3124 (fargs) : 
	Let Ti384.3311
		Li 0
		Ans
			IfLE Ti384.3311 index.3124
				Let Ta385.3317
					SetExt 716
					Let o.15828
						Slw index.3124 2
						Let Ta386.3315
							Lwz Ta385.3317 o.15828
							Let Tt391.3322.6717
								Lwz Ta386.3315 476
								Let Ta1543.4764.10997
									SetExt 0
									Let Ti1545.4762.10999
										Lwz Ta1543.4764.10997 0
										Let Ti1547.4761.11001
											Sub Ti1545.4762.10999 1
											Let Ti1548.4766.9353.11002
												Li 0
												Let Tu226.3319.6718
													IfLE Ti1548.4766.9353.11002 Ti1547.4761.11001
														Let Ta1549.4779.9354.11003
															SetExt 48
															Let o.15831
																Slw Ti1547.4761.11001 2
																Let m.4767.9355.11004
																	Lwz Ta1549.4779.9354.11003 o.15831
																	Let m_const.5808.14031
																		Lwz Tt391.3322.6717 4
																		Let m_vec.5809.14028
																			Lwz Tt391.3322.6717 0
																			Let m_shape.6109.14018
																				Lwz m.4767.9355.11004 4
																				Let Ti1550.4774.9359.11008
																					Li 1
																					Let Tu100.4771.9360.11009
																						IfEq m_shape.6109.14018 Ti1550.4774.9359.11008
																							Let Ta1551.4778.9366.11015
																								CallDir setup_rect_table.2893 d:m_vec.5809.14028 m.4767.9355.11004 f:
																								Let o.15834
																									Slw Ti1547.4761.11001 2
																									Ans
																										Stw Ta1551.4778.9366.11015 m_const.5808.14031 o.15834
																							Let Ti1552.4775.9363.11012
																								Li 2
																								Ans
																									IfEq m_shape.6109.14018 Ti1552.4775.9363.11012
																										Let Ta1553.4777.9365.11014
																											CallDir setup_surface_table.2896 d:m_vec.5809.14028 m.4767.9355.11004 f:
																											Let o.15833
																												Slw Ti1547.4761.11001 2
																												Ans
																													Stw Ta1553.4777.9365.11014 m_const.5808.14031 o.15833
																										Let Ta1554.4776.9364.11013
																											CallDir setup_second_table.2899 d:m_vec.5809.14028 m.4767.9355.11004 f:
																											Let o.15832
																												Slw Ti1547.4761.11001 2
																												Ans
																													Stw Ta1554.4776.9364.11013 m_const.5808.14031 o.15832
																						Let Ti1556.4772.9362.11011
																							Sub Ti1547.4761.11001 1
																							Ans
																								CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6717 Ti1556.4772.9362.11011 f:
														Ans
															Nop
													Let Tt391.3322.10983
														Lwz Ta386.3315 472
														Let Ta1543.4764.6726.10984
															SetExt 0
															Let Ti1545.4762.6728.10986
																Lwz Ta1543.4764.6726.10984 0
																Let Ti1547.4761.6730.10988
																	Sub Ti1545.4762.6728.10986 1
																	Let Tu226.3319.10989
																		CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.10983 Ti1547.4761.6730.10988 f:
																		Let Tt391.3322.6722.10993
																			Lwz Ta386.3315 468
																			Let Ta1543.4764.13983
																				SetExt 0
																				Let Ti1545.4762.13985
																					Lwz Ta1543.4764.13983 0
																					Let Ti1547.4761.13987
																						Sub Ti1545.4762.13985 1
																						Let Ti1548.4766.9353.13988
																							Li 0
																							Let Tu226.3319.6723.10994
																								IfLE Ti1548.4766.9353.13988 Ti1547.4761.13987
																									Let Ta1549.4779.9354.13989
																										SetExt 48
																										Let o.15839
																											Slw Ti1547.4761.13987 2
																											Let m.4767.9355.13990
																												Lwz Ta1549.4779.9354.13989 o.15839
																												Let m_const.5808.13255.13992
																													Lwz Tt391.3322.6722.10993 4
																													Let m_vec.5809.13252.13994
																														Lwz Tt391.3322.6722.10993 0
																														Let m_shape.6109.13242.13998
																															Lwz m.4767.9355.13990 4
																															Let Ti1550.4774.9359.14009
																																Li 1
																																Let Tu100.4771.9360.14010
																																	IfEq m_shape.6109.13242.13998 Ti1550.4774.9359.14009
																																		Let Ta1551.4778.9366.14016
																																			CallDir setup_rect_table.2893 d:m_vec.5809.13252.13994 m.4767.9355.13990 f:
																																			Let o.15842
																																				Slw Ti1547.4761.13987 2
																																				Ans
																																					Stw Ta1551.4778.9366.14016 m_const.5808.13255.13992 o.15842
																																		Let Ti1552.4775.9363.14013
																																			Li 2
																																			Ans
																																				IfEq m_shape.6109.13242.13998 Ti1552.4775.9363.14013
																																					Let Ta1553.4777.9365.14015
																																						CallDir setup_surface_table.2896 d:m_vec.5809.13252.13994 m.4767.9355.13990 f:
																																						Let o.15841
																																							Slw Ti1547.4761.13987 2
																																							Ans
																																								Stw Ta1553.4777.9365.14015 m_const.5808.13255.13992 o.15841
																																					Let Ta1554.4776.9364.14014
																																						CallDir setup_second_table.2899 d:m_vec.5809.13252.13994 m.4767.9355.13990 f:
																																						Let o.15840
																																							Slw Ti1547.4761.13987 2
																																							Ans
																																								Stw Ta1554.4776.9364.14014 m_const.5808.13255.13992 o.15840
																																	Let Ti1556.4772.9362.14012
																																		Sub Ti1547.4761.13987 1
																																		Ans
																																			CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6722.10993 Ti1556.4772.9362.14012 f:
																									Ans
																										Nop
																								Let Ti393.3320.6725.10996
																									Li 116
																									Let Tu227.3312
																										CallDir init_dirvec_constants.3120 d:Ta386.3315 Ti393.3320.6725.10996 f:
																										Let Ti389.3313
																											Sub index.3124 1
																											Let Ti384.3311.6709
																												Li 0
																												Ans
																													IfLE Ti384.3311.6709 Ti389.3313
																														Let Ta385.3317.6710
																															SetExt 716
																															Let o.15843
																																Slw Ti389.3313 2
																																Let Ta386.3315.6711
																																	Lwz Ta385.3317.6710 o.15843
																																	Let Tt391.3322.10968
																																		Lwz Ta386.3315.6711 476
																																		Let Ta1543.4764.6726.10969
																																			SetExt 0
																																			Let Ti1545.4762.6728.10971
																																				Lwz Ta1543.4764.6726.10969 0
																																				Let Ti1547.4761.6730.10973
																																					Sub Ti1545.4762.6728.10971 1
																																					Let Tu226.3319.10974
																																						CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.10968 Ti1547.4761.6730.10973 f:
																																						Let Tt391.3322.6722.10978
																																							Lwz Ta386.3315.6711 472
																																							Let Ta1543.4764.13949
																																								SetExt 0
																																								Let Ti1545.4762.13951
																																									Lwz Ta1543.4764.13949 0
																																									Let Ti1547.4761.13953
																																										Sub Ti1545.4762.13951 1
																																										Let Ti1548.4766.9353.13954
																																											Li 0
																																											Let Tu226.3319.6723.10979
																																												IfLE Ti1548.4766.9353.13954 Ti1547.4761.13953
																																													Let Ta1549.4779.9354.13955
																																														SetExt 48
																																														Let o.15848
																																															Slw Ti1547.4761.13953 2
																																															Let m.4767.9355.13956
																																																Lwz Ta1549.4779.9354.13955 o.15848
																																																Let m_const.5808.13255.13958
																																																	Lwz Tt391.3322.6722.10978 4
																																																	Let m_vec.5809.13252.13960
																																																		Lwz Tt391.3322.6722.10978 0
																																																		Let m_shape.6109.13242.13964
																																																			Lwz m.4767.9355.13956 4
																																																			Let Ti1550.4774.9359.13975
																																																				Li 1
																																																				Let Tu100.4771.9360.13976
																																																					IfEq m_shape.6109.13242.13964 Ti1550.4774.9359.13975
																																																						Let Ta1551.4778.9366.13982
																																																							CallDir setup_rect_table.2893 d:m_vec.5809.13252.13960 m.4767.9355.13956 f:
																																																							Let o.15851
																																																								Slw Ti1547.4761.13953 2
																																																								Ans
																																																									Stw Ta1551.4778.9366.13982 m_const.5808.13255.13958 o.15851
																																																						Let Ti1552.4775.9363.13979
																																																							Li 2
																																																							Ans
																																																								IfEq m_shape.6109.13242.13964 Ti1552.4775.9363.13979
																																																									Let Ta1553.4777.9365.13981
																																																										CallDir setup_surface_table.2896 d:m_vec.5809.13252.13960 m.4767.9355.13956 f:
																																																										Let o.15850
																																																											Slw Ti1547.4761.13953 2
																																																											Ans
																																																												Stw Ta1553.4777.9365.13981 m_const.5808.13255.13958 o.15850
																																																									Let Ta1554.4776.9364.13980
																																																										CallDir setup_second_table.2899 d:m_vec.5809.13252.13960 m.4767.9355.13956 f:
																																																										Let o.15849
																																																											Slw Ti1547.4761.13953 2
																																																											Ans
																																																												Stw Ta1554.4776.9364.13980 m_const.5808.13255.13958 o.15849
																																																					Let Ti1556.4772.9362.13978
																																																						Sub Ti1547.4761.13953 1
																																																						Ans
																																																							CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6722.10978 Ti1556.4772.9362.13978 f:
																																													Ans
																																														Nop
																																												Let Ti393.3320.6725.10981
																																													Li 117
																																													Let Tu227.3312.6713
																																														CallDir init_dirvec_constants.3120 d:Ta386.3315.6711 Ti393.3320.6725.10981 f:
																																														Let Ti389.3313.6715
																																															Sub Ti389.3313 1
																																															Let Ti384.3311.10950
																																																Li 0
																																																Ans
																																																	IfLE Ti384.3311.10950 Ti389.3313.6715
																																																		Let Ta385.3317.10951
																																																			SetExt 716
																																																			Let o.15852
																																																				Slw Ti389.3313.6715 2
																																																				Let Ta386.3315.10952
																																																					Lwz Ta385.3317.10951 o.15852
																																																					Let Tt391.3322.6717.10954
																																																						Lwz Ta386.3315.10952 476
																																																						Let Ta1543.4764.13915
																																																							SetExt 0
																																																							Let Ti1545.4762.13917
																																																								Lwz Ta1543.4764.13915 0
																																																								Let Ti1547.4761.13919
																																																									Sub Ti1545.4762.13917 1
																																																									Let Ti1548.4766.9353.13920
																																																										Li 0
																																																										Let Tu226.3319.6718.10955
																																																											IfLE Ti1548.4766.9353.13920 Ti1547.4761.13919
																																																												Let Ta1549.4779.9354.13921
																																																													SetExt 48
																																																													Let o.15855
																																																														Slw Ti1547.4761.13919 2
																																																														Let m.4767.9355.13922
																																																															Lwz Ta1549.4779.9354.13921 o.15855
																																																															Let m_const.5808.13255.13924
																																																																Lwz Tt391.3322.6717.10954 4
																																																																Let m_vec.5809.13252.13926
																																																																	Lwz Tt391.3322.6717.10954 0
																																																																	Let m_shape.6109.13242.13930
																																																																		Lwz m.4767.9355.13922 4
																																																																		Let Ti1550.4774.9359.13941
																																																																			Li 1
																																																																			Let Tu100.4771.9360.13942
																																																																				IfEq m_shape.6109.13242.13930 Ti1550.4774.9359.13941
																																																																					Let Ta1551.4778.9366.13948
																																																																						CallDir setup_rect_table.2893 d:m_vec.5809.13252.13926 m.4767.9355.13922 f:
																																																																						Let o.15858
																																																																							Slw Ti1547.4761.13919 2
																																																																							Ans
																																																																								Stw Ta1551.4778.9366.13948 m_const.5808.13255.13924 o.15858
																																																																					Let Ti1552.4775.9363.13945
																																																																						Li 2
																																																																						Ans
																																																																							IfEq m_shape.6109.13242.13930 Ti1552.4775.9363.13945
																																																																								Let Ta1553.4777.9365.13947
																																																																									CallDir setup_surface_table.2896 d:m_vec.5809.13252.13926 m.4767.9355.13922 f:
																																																																									Let o.15857
																																																																										Slw Ti1547.4761.13919 2
																																																																										Ans
																																																																											Stw Ta1553.4777.9365.13947 m_const.5808.13255.13924 o.15857
																																																																								Let Ta1554.4776.9364.13946
																																																																									CallDir setup_second_table.2899 d:m_vec.5809.13252.13926 m.4767.9355.13922 f:
																																																																									Let o.15856
																																																																										Slw Ti1547.4761.13919 2
																																																																										Ans
																																																																											Stw Ta1554.4776.9364.13946 m_const.5808.13255.13924 o.15856
																																																																				Let Ti1556.4772.9362.13944
																																																																					Sub Ti1547.4761.13919 1
																																																																					Ans
																																																																						CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6717.10954 Ti1556.4772.9362.13944 f:
																																																												Ans
																																																													Nop
																																																											Let Ti393.3320.6720.10956
																																																												Li 118
																																																												Let Tu227.3312.10957
																																																													CallDir init_dirvec_constants.3120 d:Ta386.3315.10952 Ti393.3320.6720.10956 f:
																																																													Let Ti389.3313.10959
																																																														Sub Ti389.3313.6715 1
																																																														Let Ti384.3311.6709.10960
																																																															Li 0
																																																															Ans
																																																																IfLE Ti384.3311.6709.10960 Ti389.3313.10959
																																																																	Let Ta385.3317.6710.10961
																																																																		SetExt 716
																																																																		Let o.15859
																																																																			Slw Ti389.3313.10959 2
																																																																			Let Ta386.3315.6711.10962
																																																																				Lwz Ta385.3317.6710.10961 o.15859
																																																																				Let Ti387.3316.6712.10963
																																																																					Li 119
																																																																					Let Tu227.3312.6713.10964
																																																																						CallDir init_dirvec_constants.3120 d:Ta386.3315.6711.10962 Ti387.3316.6712.10963 f:
																																																																						Let Ti389.3313.6715.10966
																																																																							Sub Ti389.3313.10959 1
																																																																							Ans
																																																																								CallDir init_vecset_constants.3123 d:Ti389.3313.6715.10966 f:
																																																																	Ans
																																																																		Nop
																																																		Ans
																																																			Nop
																														Ans
																															Nop
				Ans
					Nop
setup_rect_reflection.3134 (args) : obj_id.3135 obj.3136 (fargs) : 
	Let sid.3252
		ShiftL2 obj_id.3135
		Let Ta339.3295
			SetExt 1736
			Let nr.3253
				Lwz Ta339.3295 0
				Let m_surfparams.5987.6651
					Lwz obj.3136 28
					Let Td342.3294
						Lfd m_surfparams.5987.6651 0
						Let Td.e.10507
							FLi 1.000000
							Let br.3254
								FSub Td.e.10507 Td342.3294
								Let Ta343.3291
									SetExt 312
									Let Td345.3290
										Lfd Ta343.3291 0
										Let n0.3255
											FNeg Td345.3290
											Let Ta346.3288
												SetExt 312
												Let Td348.3287
													Lfd Ta346.3288 4
													Let n1.3256
														FNeg Td348.3287
														Let Ta349.3285
															SetExt 312
															Let Td351.3284
																Lfd Ta349.3285 8
																Let n2.3257
																	FNeg Td351.3284
																	Let Ti353.3279
																		Add sid.3252 1
																		Let Ta354.3281
																			SetExt 312
																			Let Td356.3280
																				Lfd Ta354.3281 0
																				Let Ti410.3347.10943
																					Li 3
																					Let Td411.3348.10944
																						FLi 0.000000
																						Let v3.3342.10945
																							CallDir min_caml_create_float_array d:Ti410.3347.10943 f:Td411.3348.10944 
																							Let Ta412.3345.10946
																								SetExt 0
																								Let Ti414.3344.10948
																									Lwz Ta412.3345.10946 0
																									Let consts.3343.10949
																										CallDir min_caml_create_array d:Ti414.3344.10948 v3.3342.10945 f:
																										Let t.15867
																											Mr $fp
																											Let $fp
																												Add $fp 8
																												Let Tu15869
																													Stw consts.3343.10949 t.15867 4
																													Let Tu15868
																														Stw v3.3342.10945 t.15867 0
																														Let dvec.3297.6638
																															Mr t.15867
																															Let Tu2.6361.10937
																																Stfd Td356.3280 v3.3342.10945 0
																																Let Tu1.6362.10939
																																	Stfd n1.3256 v3.3342.10945 4
																																	Let Tu232.3298.6640
																																		Stfd n2.3257 v3.3342.10945 8
																																		Let Ta1543.4764.10917
																																			SetExt 0
																																			Let Ti1545.4762.10919
																																				Lwz Ta1543.4764.10917 0
																																				Let Ti1547.4761.10921
																																					Sub Ti1545.4762.10919 1
																																					Let Ti1548.4766.9353.10922
																																						Li 0
																																						Let Tu231.3299.6641
																																							IfLE Ti1548.4766.9353.10922 Ti1547.4761.10921
																																								Let Ta1549.4779.9354.10923
																																									SetExt 48
																																									Let o.15874
																																										Slw Ti1547.4761.10921 2
																																										Let m.4767.9355.10924
																																											Lwz Ta1549.4779.9354.10923 o.15874
																																											Let m_shape.6109.13901
																																												Lwz m.4767.9355.10924 4
																																												Let Ti1550.4774.9359.10928
																																													Li 1
																																													Let Tu100.4771.9360.10929
																																														IfEq m_shape.6109.13901 Ti1550.4774.9359.10928
																																															Let Ta1551.4778.9366.10935
																																																CallDir setup_rect_table.2893 d:v3.3342.10945 m.4767.9355.10924 f:
																																																Let o.15877
																																																	Slw Ti1547.4761.10921 2
																																																	Ans
																																																		Stw Ta1551.4778.9366.10935 consts.3343.10949 o.15877
																																															Let Ti1552.4775.9363.10932
																																																Li 2
																																																Ans
																																																	IfEq m_shape.6109.13901 Ti1552.4775.9363.10932
																																																		Let Ta1553.4777.9365.10934
																																																			CallDir setup_surface_table.2896 d:v3.3342.10945 m.4767.9355.10924 f:
																																																			Let o.15876
																																																				Slw Ti1547.4761.10921 2
																																																				Ans
																																																					Stw Ta1553.4777.9365.10934 consts.3343.10949 o.15876
																																																		Let Ta1554.4776.9364.10933
																																																			CallDir setup_second_table.2899 d:v3.3342.10945 m.4767.9355.10924 f:
																																																			Let o.15875
																																																				Slw Ti1547.4761.10921 2
																																																				Ans
																																																					Stw Ta1554.4776.9364.10933 consts.3343.10949 o.15875
																																														Let Ti1556.4772.9362.10931
																																															Sub Ti1547.4761.10921 1
																																															Ans
																																																CallDir iter_setup_dirvec_constants.2902 d:dvec.3297.6638 Ti1556.4772.9362.10931 f:
																																								Ans
																																									Nop
																																							Let Ta377.3300.6642
																																								SetExt 1016
																																								Let t.15878
																																									Mr $fp
																																									Let $fp
																																										Add $fp 16
																																										Let Tu15881
																																											Stfd br.3254 t.15878 8
																																											Let Tu15880
																																												Stw dvec.3297.6638 t.15878 4
																																												Let Tu15879
																																													Stw Ti353.3279 t.15878 0
																																													Let Tt378.3301.6643
																																														Mr t.15878
																																														Let o.15882
																																															Slw nr.3253 2
																																															Let Tu235.3258
																																																Stw Tt378.3301.6643 Ta377.3300.6642 o.15882
																																																Let Ti358.3272
																																																	Add nr.3253 1
																																																	Let Ti360.3273
																																																		Add sid.3252 2
																																																		Let Ta361.3275
																																																			SetExt 312
																																																			Let Td363.3274
																																																				Lfd Ta361.3275 4
																																																				Let Ti410.3347.10910
																																																					Li 3
																																																					Let Td411.3348.10911
																																																						FLi 0.000000
																																																						Let v3.3342.10912
																																																							CallDir min_caml_create_float_array d:Ti410.3347.10910 f:Td411.3348.10911 
																																																							Let Ta412.3345.10913
																																																								SetExt 0
																																																								Let Ti414.3344.10915
																																																									Lwz Ta412.3345.10913 0
																																																									Let consts.3343.10916
																																																										CallDir min_caml_create_array d:Ti414.3344.10915 v3.3342.10912 f:
																																																										Let t.15885
																																																											Mr $fp
																																																											Let $fp
																																																												Add $fp 8
																																																												Let Tu15887
																																																													Stw consts.3343.10916 t.15885 4
																																																													Let Tu15886
																																																														Stw v3.3342.10912 t.15885 0
																																																														Let dvec.3297.6631
																																																															Mr t.15885
																																																															Let Tu2.6361.10904
																																																																Stfd n0.3255 v3.3342.10912 0
																																																																Let Tu1.6362.10906
																																																																	Stfd Td363.3274 v3.3342.10912 4
																																																																	Let Tu232.3298.6633
																																																																		Stfd n2.3257 v3.3342.10912 8
																																																																		Let Ta1543.4764.10884
																																																																			SetExt 0
																																																																			Let Ti1545.4762.10886
																																																																				Lwz Ta1543.4764.10884 0
																																																																				Let Ti1547.4761.10888
																																																																					Sub Ti1545.4762.10886 1
																																																																					Let Ti1548.4766.9353.10889
																																																																						Li 0
																																																																						Let Tu231.3299.6634
																																																																							IfLE Ti1548.4766.9353.10889 Ti1547.4761.10888
																																																																								Let Ta1549.4779.9354.10890
																																																																									SetExt 48
																																																																									Let o.15892
																																																																										Slw Ti1547.4761.10888 2
																																																																										Let m.4767.9355.10891
																																																																											Lwz Ta1549.4779.9354.10890 o.15892
																																																																											Let m_shape.6109.13886
																																																																												Lwz m.4767.9355.10891 4
																																																																												Let Ti1550.4774.9359.10895
																																																																													Li 1
																																																																													Let Tu100.4771.9360.10896
																																																																														IfEq m_shape.6109.13886 Ti1550.4774.9359.10895
																																																																															Let Ta1551.4778.9366.10902
																																																																																CallDir setup_rect_table.2893 d:v3.3342.10912 m.4767.9355.10891 f:
																																																																																Let o.15895
																																																																																	Slw Ti1547.4761.10888 2
																																																																																	Ans
																																																																																		Stw Ta1551.4778.9366.10902 consts.3343.10916 o.15895
																																																																															Let Ti1552.4775.9363.10899
																																																																																Li 2
																																																																																Ans
																																																																																	IfEq m_shape.6109.13886 Ti1552.4775.9363.10899
																																																																																		Let Ta1553.4777.9365.10901
																																																																																			CallDir setup_surface_table.2896 d:v3.3342.10912 m.4767.9355.10891 f:
																																																																																			Let o.15894
																																																																																				Slw Ti1547.4761.10888 2
																																																																																				Ans
																																																																																					Stw Ta1553.4777.9365.10901 consts.3343.10916 o.15894
																																																																																		Let Ta1554.4776.9364.10900
																																																																																			CallDir setup_second_table.2899 d:v3.3342.10912 m.4767.9355.10891 f:
																																																																																			Let o.15893
																																																																																				Slw Ti1547.4761.10888 2
																																																																																				Ans
																																																																																					Stw Ta1554.4776.9364.10900 consts.3343.10916 o.15893
																																																																														Let Ti1556.4772.9362.10898
																																																																															Sub Ti1547.4761.10888 1
																																																																															Ans
																																																																																CallDir iter_setup_dirvec_constants.2902 d:dvec.3297.6631 Ti1556.4772.9362.10898 f:
																																																																								Ans
																																																																									Nop
																																																																							Let Ta377.3300.6635
																																																																								SetExt 1016
																																																																								Let t.15896
																																																																									Mr $fp
																																																																									Let $fp
																																																																										Add $fp 16
																																																																										Let Tu15899
																																																																											Stfd br.3254 t.15896 8
																																																																											Let Tu15898
																																																																												Stw dvec.3297.6631 t.15896 4
																																																																												Let Tu15897
																																																																													Stw Ti360.3273 t.15896 0
																																																																													Let Tt378.3301.6636
																																																																														Mr t.15896
																																																																														Let o.15900
																																																																															Slw Ti358.3272 2
																																																																															Let Tu234.3259
																																																																																Stw Tt378.3301.6636 Ta377.3300.6635 o.15900
																																																																																Let Ti365.3265
																																																																																	Add nr.3253 2
																																																																																	Let Ti367.3266
																																																																																		Add sid.3252 3
																																																																																		Let Ta368.3268
																																																																																			SetExt 312
																																																																																			Let Td370.3267
																																																																																				Lfd Ta368.3268 8
																																																																																				Let Ti410.3347.10877
																																																																																					Li 3
																																																																																					Let Td411.3348.10878
																																																																																						FLi 0.000000
																																																																																						Let v3.3342.10879
																																																																																							CallDir min_caml_create_float_array d:Ti410.3347.10877 f:Td411.3348.10878 
																																																																																							Let Ta412.3345.10880
																																																																																								SetExt 0
																																																																																								Let Ti414.3344.10882
																																																																																									Lwz Ta412.3345.10880 0
																																																																																									Let consts.3343.10883
																																																																																										CallDir min_caml_create_array d:Ti414.3344.10882 v3.3342.10879 f:
																																																																																										Let t.15903
																																																																																											Mr $fp
																																																																																											Let $fp
																																																																																												Add $fp 8
																																																																																												Let Tu15905
																																																																																													Stw consts.3343.10883 t.15903 4
																																																																																													Let Tu15904
																																																																																														Stw v3.3342.10879 t.15903 0
																																																																																														Let dvec.3297.6624
																																																																																															Mr t.15903
																																																																																															Let Tu2.6361.10871
																																																																																																Stfd n0.3255 v3.3342.10879 0
																																																																																																Let Tu1.6362.10873
																																																																																																	Stfd n1.3256 v3.3342.10879 4
																																																																																																	Let Tu232.3298.6626
																																																																																																		Stfd Td370.3267 v3.3342.10879 8
																																																																																																		Let Ta1543.4764.10851
																																																																																																			SetExt 0
																																																																																																			Let Ti1545.4762.10853
																																																																																																				Lwz Ta1543.4764.10851 0
																																																																																																				Let Ti1547.4761.10855
																																																																																																					Sub Ti1545.4762.10853 1
																																																																																																					Let Ti1548.4766.9353.10856
																																																																																																						Li 0
																																																																																																						Let Tu231.3299.6627
																																																																																																							IfLE Ti1548.4766.9353.10856 Ti1547.4761.10855
																																																																																																								Let Ta1549.4779.9354.10857
																																																																																																									SetExt 48
																																																																																																									Let o.15910
																																																																																																										Slw Ti1547.4761.10855 2
																																																																																																										Let m.4767.9355.10858
																																																																																																											Lwz Ta1549.4779.9354.10857 o.15910
																																																																																																											Let m_shape.6109.13871
																																																																																																												Lwz m.4767.9355.10858 4
																																																																																																												Let Ti1550.4774.9359.10862
																																																																																																													Li 1
																																																																																																													Let Tu100.4771.9360.10863
																																																																																																														IfEq m_shape.6109.13871 Ti1550.4774.9359.10862
																																																																																																															Let Ta1551.4778.9366.10869
																																																																																																																CallDir setup_rect_table.2893 d:v3.3342.10879 m.4767.9355.10858 f:
																																																																																																																Let o.15913
																																																																																																																	Slw Ti1547.4761.10855 2
																																																																																																																	Ans
																																																																																																																		Stw Ta1551.4778.9366.10869 consts.3343.10883 o.15913
																																																																																																															Let Ti1552.4775.9363.10866
																																																																																																																Li 2
																																																																																																																Ans
																																																																																																																	IfEq m_shape.6109.13871 Ti1552.4775.9363.10866
																																																																																																																		Let Ta1553.4777.9365.10868
																																																																																																																			CallDir setup_surface_table.2896 d:v3.3342.10879 m.4767.9355.10858 f:
																																																																																																																			Let o.15912
																																																																																																																				Slw Ti1547.4761.10855 2
																																																																																																																				Ans
																																																																																																																					Stw Ta1553.4777.9365.10868 consts.3343.10883 o.15912
																																																																																																																		Let Ta1554.4776.9364.10867
																																																																																																																			CallDir setup_second_table.2899 d:v3.3342.10879 m.4767.9355.10858 f:
																																																																																																																			Let o.15911
																																																																																																																				Slw Ti1547.4761.10855 2
																																																																																																																				Ans
																																																																																																																					Stw Ta1554.4776.9364.10867 consts.3343.10883 o.15911
																																																																																																														Let Ti1556.4772.9362.10865
																																																																																																															Sub Ti1547.4761.10855 1
																																																																																																															Ans
																																																																																																																CallDir iter_setup_dirvec_constants.2902 d:dvec.3297.6624 Ti1556.4772.9362.10865 f:
																																																																																																								Ans
																																																																																																									Nop
																																																																																																							Let Ta377.3300.6628
																																																																																																								SetExt 1016
																																																																																																								Let t.15914
																																																																																																									Mr $fp
																																																																																																									Let $fp
																																																																																																										Add $fp 16
																																																																																																										Let Tu15917
																																																																																																											Stfd br.3254 t.15914 8
																																																																																																											Let Tu15916
																																																																																																												Stw dvec.3297.6624 t.15914 4
																																																																																																												Let Tu15915
																																																																																																													Stw Ti367.3266 t.15914 0
																																																																																																													Let Tt378.3301.6629
																																																																																																														Mr t.15914
																																																																																																														Let o.15918
																																																																																																															Slw Ti365.3265 2
																																																																																																															Let Tu233.3260
																																																																																																																Stw Tt378.3301.6629 Ta377.3300.6628 o.15918
																																																																																																																Let Ta371.3261
																																																																																																																	SetExt 1736
																																																																																																																	Let Ti374.3263
																																																																																																																		Add nr.3253 3
																																																																																																																		Ans
																																																																																																																			Stw Ti374.3263 Ta371.3261 0
setup_surface_reflection.3137 (args) : obj_id.3138 obj.3139 (fargs) : 
	Let Ti303.3250
		ShiftL2 obj_id.3138
		Let sid.3211
			Add Ti303.3250 1
			Let Ta305.3248
				SetExt 1736
				Let nr.3212
					Lwz Ta305.3248 0
					Let m_surfparams.5987.6618
						Lwz obj.3139 28
						Let Td308.3247
							Lfd m_surfparams.5987.6618 0
							Let Td.e.10502
								FLi 1.000000
								Let br.3213
									FSub Td.e.10502 Td308.3247
									Let Ta309.3244
										SetExt 312
										Let m_abc.6032.6604
											Lwz obj.3139 16
											Let Td2517.6258.6585
												Lfd Ta309.3244 0
												Let Td2519.6259.6587
													Lfd m_abc.6032.6604 0
													Let Td2520.6252.6588
														FMul Td2517.6258.6585 Td2519.6259.6587
														Let Td2522.6254.6590
															Lfd Ta309.3244 4
															Let Td2524.6255.6592
																Lfd m_abc.6032.6604 4
																Let Td2525.6253.6593
																	FMul Td2522.6254.6590 Td2524.6255.6592
																	Let Td2526.6246.6594
																		FAdd Td2520.6252.6588 Td2525.6253.6593
																		Let Td2528.6248.6596
																			Lfd Ta309.3244 8
																			Let Td2530.6249.6598
																				Lfd m_abc.6032.6604 8
																				Let Td2531.6247.6599
																					FMul Td2528.6248.6596 Td2530.6249.6598
																					Let p.3214
																						FAdd Td2526.6246.6594 Td2531.6247.6599
																						Let m_abc.6067.6576
																							Lwz obj.3139 16
																							Let Td312.3243
																								Lfd m_abc.6067.6576 0
																								Let Td.e.10503
																									FLi 2.000000
																									Let Td313.3241
																										FMul Td.e.10503 Td312.3243
																										Let Td314.3237
																											FMul Td313.3241 p.3214
																											Let Ta315.3239
																												SetExt 312
																												Let Td317.3238
																													Lfd Ta315.3239 0
																													Let Td318.3220
																														FSub Td314.3237 Td317.3238
																														Let m_abc.6055.6564
																															Lwz obj.3139 16
																															Let Td320.3236
																																Lfd m_abc.6055.6564 4
																																Let Td.e.10504
																																	FLi 2.000000
																																	Let Td321.3234
																																		FMul Td.e.10504 Td320.3236
																																		Let Td322.3230
																																			FMul Td321.3234 p.3214
																																			Let Ta323.3232
																																				SetExt 312
																																				Let Td325.3231
																																					Lfd Ta323.3232 4
																																					Let Td326.3221
																																						FSub Td322.3230 Td325.3231
																																						Let m_abc.6043.6552
																																							Lwz obj.3139 16
																																							Let Td328.3229
																																								Lfd m_abc.6043.6552 8
																																								Let Td.e.10505
																																									FLi 2.000000
																																									Let Td329.3227
																																										FMul Td.e.10505 Td328.3229
																																										Let Td330.3223
																																											FMul Td329.3227 p.3214
																																											Let Ta331.3225
																																												SetExt 312
																																												Let Td333.3224
																																													Lfd Ta331.3225 8
																																													Let Td334.3222
																																														FSub Td330.3223 Td333.3224
																																														Let Ti410.3347.10844
																																															Li 3
																																															Let Td411.3348.10845
																																																FLi 0.000000
																																																Let v3.3342.10846
																																																	CallDir min_caml_create_float_array d:Ti410.3347.10844 f:Td411.3348.10845 
																																																	Let Ta412.3345.10847
																																																		SetExt 0
																																																		Let Ti414.3344.10849
																																																			Lwz Ta412.3345.10847 0
																																																			Let consts.3343.10850
																																																				CallDir min_caml_create_array d:Ti414.3344.10849 v3.3342.10846 f:
																																																				Let t.15935
																																																					Mr $fp
																																																					Let $fp
																																																						Add $fp 8
																																																						Let Tu15937
																																																							Stw consts.3343.10850 t.15935 4
																																																							Let Tu15936
																																																								Stw v3.3342.10846 t.15935 0
																																																								Let dvec.3297.6542
																																																									Mr t.15935
																																																									Let Tu2.6361.10838
																																																										Stfd Td318.3220 v3.3342.10846 0
																																																										Let Tu1.6362.10840
																																																											Stfd Td326.3221 v3.3342.10846 4
																																																											Let Tu232.3298.6544
																																																												Stfd Td334.3222 v3.3342.10846 8
																																																												Let Ta1543.4764.10818
																																																													SetExt 0
																																																													Let Ti1545.4762.10820
																																																														Lwz Ta1543.4764.10818 0
																																																														Let Ti1547.4761.10822
																																																															Sub Ti1545.4762.10820 1
																																																															Let Ti1548.4766.9353.10823
																																																																Li 0
																																																																Let Tu231.3299.6545
																																																																	IfLE Ti1548.4766.9353.10823 Ti1547.4761.10822
																																																																		Let Ta1549.4779.9354.10824
																																																																			SetExt 48
																																																																			Let o.15942
																																																																				Slw Ti1547.4761.10822 2
																																																																				Let m.4767.9355.10825
																																																																					Lwz Ta1549.4779.9354.10824 o.15942
																																																																					Let m_shape.6109.13856
																																																																						Lwz m.4767.9355.10825 4
																																																																						Let Ti1550.4774.9359.10829
																																																																							Li 1
																																																																							Let Tu100.4771.9360.10830
																																																																								IfEq m_shape.6109.13856 Ti1550.4774.9359.10829
																																																																									Let Ta1551.4778.9366.10836
																																																																										CallDir setup_rect_table.2893 d:v3.3342.10846 m.4767.9355.10825 f:
																																																																										Let o.15945
																																																																											Slw Ti1547.4761.10822 2
																																																																											Ans
																																																																												Stw Ta1551.4778.9366.10836 consts.3343.10850 o.15945
																																																																									Let Ti1552.4775.9363.10833
																																																																										Li 2
																																																																										Ans
																																																																											IfEq m_shape.6109.13856 Ti1552.4775.9363.10833
																																																																												Let Ta1553.4777.9365.10835
																																																																													CallDir setup_surface_table.2896 d:v3.3342.10846 m.4767.9355.10825 f:
																																																																													Let o.15944
																																																																														Slw Ti1547.4761.10822 2
																																																																														Ans
																																																																															Stw Ta1553.4777.9365.10835 consts.3343.10850 o.15944
																																																																												Let Ta1554.4776.9364.10834
																																																																													CallDir setup_second_table.2899 d:v3.3342.10846 m.4767.9355.10825 f:
																																																																													Let o.15943
																																																																														Slw Ti1547.4761.10822 2
																																																																														Ans
																																																																															Stw Ta1554.4776.9364.10834 consts.3343.10850 o.15943
																																																																								Let Ti1556.4772.9362.10832
																																																																									Sub Ti1547.4761.10822 1
																																																																									Ans
																																																																										CallDir iter_setup_dirvec_constants.2902 d:dvec.3297.6542 Ti1556.4772.9362.10832 f:
																																																																		Ans
																																																																			Nop
																																																																	Let Ta377.3300.6546
																																																																		SetExt 1016
																																																																		Let t.15946
																																																																			Mr $fp
																																																																			Let $fp
																																																																				Add $fp 16
																																																																				Let Tu15949
																																																																					Stfd br.3213 t.15946 8
																																																																					Let Tu15948
																																																																						Stw dvec.3297.6542 t.15946 4
																																																																						Let Tu15947
																																																																							Stw sid.3211 t.15946 0
																																																																							Let Tt378.3301.6547
																																																																								Mr t.15946
																																																																								Let o.15950
																																																																									Slw nr.3212 2
																																																																									Let Tu236.3215
																																																																										Stw Tt378.3301.6547 Ta377.3300.6546 o.15950
																																																																										Let Ta335.3216
																																																																											SetExt 1736
																																																																											Let Ti338.3218
																																																																												Add nr.3212 1
																																																																												Ans
																																																																													Stw Ti338.3218 Ta335.3216 0
rt.3142 (args) : size_x.3143 size_y.3144 (fargs) : 
	Let Ta258.3197
		SetExt 616
		Let Tu248.3149
			Stw size_x.3143 Ta258.3197 0
			Let Ta260.3195
				SetExt 616
				Let Tu247.3150
					Stw size_y.3144 Ta260.3195 4
					Let Ta262.3192
						SetExt 624
						Let Ti264.3194
							ShiftR1 size_x.3143
							Let Tu246.3151
								Stw Ti264.3194 Ta262.3192 0
								Let Ta265.3189
									SetExt 624
									Let Ti267.3191
										ShiftR1 size_y.3144
										Let Tu245.3152
											Stw Ti267.3191 Ta265.3189 4
											Let Ta268.3183
												SetExt 632
												Let Td271.3187
													CallDir min_caml_float_of_int d:size_x.3143 f:
													Let Td272.3188
														FReciprocal Td271.3187
														Let Td.e.10493
															FLi 128.000000
															Let Td273.3185
																FMul Td.e.10493 Td272.3188
																Let Tu244.3153
																	Stfd Td273.3185 Ta268.3183 0
																	Let Ta502.3466.6495
																		SetExt 616
																		Let Ti504.3463.6497
																			Lwz Ta502.3466.6495 0
																			Let Tu505.3465.6498
																				Nop
																				Let Tt506.3464.6499
																					CallDir create_pixel.3084 d:f:
																					Let line.3457.6500
																						CallDir min_caml_create_array d:Ti504.3463.6497 Tt506.3464.6499 f:
																						Let Ta507.3461.6501
																							SetExt 616
																							Let Ti509.3459.6503
																								Lwz Ta507.3461.6501 0
																								Let Ti511.3458.6505
																									Sub Ti509.3459.6503 2
																									Let prev.3154
																										CallDir init_line_elements.3086 d:line.3457.6500 Ti511.3458.6505 f:
																										Let Ta502.3466.6484
																											SetExt 616
																											Let Ti504.3463.6486
																												Lwz Ta502.3466.6484 0
																												Let Tu505.3465.6487
																													Nop
																													Let Tt506.3464.6488
																														CallDir create_pixel.3084 d:f:
																														Let line.3457.6489
																															CallDir min_caml_create_array d:Ti504.3463.6486 Tt506.3464.6488 f:
																															Let Ta507.3461.6490
																																SetExt 616
																																Let Ti509.3459.6492
																																	Lwz Ta507.3461.6490 0
																																	Let Ti511.3458.6494
																																		Sub Ti509.3459.6492 2
																																		Let cur.3155
																																			CallDir init_line_elements.3086 d:line.3457.6489 Ti511.3458.6494 f:
																																			Let Ta502.3466.6473
																																				SetExt 616
																																				Let Ti504.3463.6475
																																					Lwz Ta502.3466.6473 0
																																					Let Tu505.3465.6476
																																						Nop
																																						Let Tt506.3464.6477
																																							CallDir create_pixel.3084 d:f:
																																							Let line.3457.6478
																																								CallDir min_caml_create_array d:Ti504.3463.6475 Tt506.3464.6477 f:
																																								Let Ta507.3461.6479
																																									SetExt 616
																																									Let Ti509.3459.6481
																																										Lwz Ta507.3461.6479 0
																																										Let Ti511.3458.6483
																																											Sub Ti509.3459.6481 2
																																											Let next.3156
																																												CallDir init_line_elements.3086 d:line.3457.6478 Ti511.3458.6483 f:
																																												Let Tu2073.5388.6461
																																													Nop
																																													Let Tu72.5377.6462
																																														CallDir read_screen_settings.2788 d:f:
																																														Let Tu2074.5387.6463
																																															Nop
																																															Let Tu71.5378.6464
																																																CallDir read_light.2790 d:f:
																																																Let Ti2107.5423.10812
																																																	Li 0
																																																	Let Tb2109.5425.10448.10813
																																																		CallDir read_nth_object.2795 d:Ti2107.5423.10812 f:
																																																		Let Ti2110.5426.10449.10814
																																																			Li 0
																																																			Let Tu70.5379.6466
																																																				IfEq Tb2109.5425.10448.10813 Ti2110.5426.10449.10814
																																																					Let Ta2111.5429.10452.10816
																																																						SetExt 0
																																																						Ans
																																																							Stw Ti2107.5423.10812 Ta2111.5429.10452.10816 0
																																																					Let Ti2114.5427.10451.10815
																																																						Li 1
																																																						Ans
																																																							CallDir read_object.2797 d:Ti2114.5427.10451.10815 f:
																																																				Let Tu2098.5422.10399.10787
																																																					Nop
																																																					Let item.5411.10400.10788
																																																						CallDir min_caml_read_int d:f:
																																																						Let Ti2100.5412.10402.10789
																																																							Li -1
																																																							Let net.5389.10790
																																																								IfEq item.5411.10400.10788 Ti2100.5412.10402.10789
																																																									Let Ti2102.5417.10408.10810
																																																										Li 1
																																																										Let Ti2104.5418.10410.10811
																																																											Li -1
																																																											Ans
																																																												CallDir min_caml_create_array d:Ti2102.5417.10408.10810 Ti2104.5418.10410.10811 f:
																																																									Let Ti2106.5415.10404.10807
																																																										Li 1
																																																										Let v.5413.10405.10808
																																																											CallDir read_net_item.2801 d:Ti2106.5415.10404.10807 f:
																																																											Let Tu65.5414.10406.10809
																																																												Stw item.5411.10400.10788 v.5413.10405.10808 0
																																																												Ans
																																																													Mr v.5413.10405.10808
																																																								Let Ti2083.5390.10792
																																																									Lwz net.5389.10790 0
																																																									Let Ti2085.5391.10793
																																																										Li -1
																																																										Let Tu69.5380.6468
																																																											IfEq Ti2083.5390.10792 Ti2085.5391.10793
																																																												Ans
																																																													Nop
																																																												Let Ta2086.5395.10794
																																																													SetExt 332
																																																													Let Tu67.5392.10795
																																																														Stw net.5389.10790 Ta2086.5395.10794 0
																																																														Let Ti2081.5398.10389.10798
																																																															Li 0
																																																															Let net.5389.10390.10799
																																																																CallDir read_net_item.2801 d:Ti2081.5398.10389.10798 f:
																																																																Let Ti2083.5390.10392.10801
																																																																	Lwz net.5389.10390.10799 0
																																																																	Let Ti2085.5391.10394.10802
																																																																		Li -1
																																																																		Ans
																																																																			IfEq Ti2083.5390.10392.10801 Ti2085.5391.10394.10802
																																																																				Ans
																																																																					Nop
																																																																				Let Ta2086.5395.10395.10803
																																																																					SetExt 332
																																																																					Let Tu67.5392.10396.10804
																																																																						Stw net.5389.10390.10799 Ta2086.5395.10395.10803 4
																																																																						Let Ti2088.5393.10398.10806
																																																																							Li 2
																																																																							Ans
																																																																								CallDir read_and_network.2805 d:Ti2088.5393.10398.10806 f:
																																																											Let Ta2077.5381.6469
																																																												SetExt 536
																																																												Let Ti2079.5384.6471
																																																													Li 0
																																																													Let Ta2080.5383.6472
																																																														CallDir read_or_network.2803 d:Ti2079.5384.6471 f:
																																																														Let Tu243.3157
																																																															Stw Ta2080.5383.6472 Ta2077.5381.6469 0
																																																															Let Ti688.3717.6438
																																																																Li 80
																																																																Let Tu181.3695.6439
																																																																	CallDir min_caml_print_byte d:Ti688.3717.6438 f:
																																																																	Let Ti691.3714.6442
																																																																		Li 51
																																																																		Let Tu180.3696.6443
																																																																			CallDir min_caml_print_byte d:Ti691.3714.6442 f:
																																																																			Let Ti692.3713.6444
																																																																				Li 10
																																																																				Let Tu179.3697.6445
																																																																					CallDir min_caml_print_byte d:Ti692.3713.6444 f:
																																																																					Let Ta693.3711.6446
																																																																						SetExt 616
																																																																						Let Ti695.3710.6448
																																																																							Lwz Ta693.3711.6446 0
																																																																							Let Tu178.3698.6449
																																																																								CallDir min_caml_print_int d:Ti695.3710.6448 f:
																																																																								Let Ti696.3709.6450
																																																																									Li 32
																																																																									Let Tu177.3699.6451
																																																																										CallDir min_caml_print_byte d:Ti696.3709.6450 f:
																																																																										Let Ta697.3707.6452
																																																																											SetExt 616
																																																																											Let Ti699.3706.6454
																																																																												Lwz Ta697.3707.6452 4
																																																																												Let Tu176.3700.6455
																																																																													CallDir min_caml_print_int d:Ti699.3706.6454 f:
																																																																													Let Ti700.3705.6456
																																																																														Li 32
																																																																														Let Tu175.3701.6457
																																																																															CallDir min_caml_print_byte d:Ti700.3705.6456 f:
																																																																															Let Ti701.3704.6458
																																																																																Li 255
																																																																																Let Tu174.3702.6459
																																																																																	CallDir min_caml_print_int d:Ti701.3704.6458 f:
																																																																																	Let Ti702.3703.6460
																																																																																		Li 10
																																																																																		Let Tu242.3158
																																																																																			CallDir min_caml_print_byte d:Ti702.3703.6460 f:
																																																																																			Let Ti379.3310.6431
																																																																																				Li 4
																																																																																				Let Tu230.3304.6432
																																																																																					CallDir create_dirvecs.3118 d:Ti379.3310.6431 f:
																																																																																					Let Ti380.3307.6433
																																																																																						Li 9
																																																																																						Let Ti381.3308.6434
																																																																																							Li 0
																																																																																							Let Ti382.3309.6435
																																																																																								Li 0
																																																																																								Let Tu229.3305.6436
																																																																																									CallDir calc_dirvec_rows.3109 d:Ti380.3307.6433 Ti381.3308.6434 Ti382.3309.6435 f:
																																																																																									Let Ta385.3317.10770
																																																																																										SetExt 716
																																																																																										Let Ta386.3315.10771
																																																																																											Lwz Ta385.3317.10770 16
																																																																																											Let Tt391.3322.6717.10773
																																																																																												Lwz Ta386.3315.10771 476
																																																																																												Let Ta1543.4764.13821
																																																																																													SetExt 0
																																																																																													Let Ti1545.4762.13823
																																																																																														Lwz Ta1543.4764.13821 0
																																																																																														Let Ti1547.4761.13825
																																																																																															Sub Ti1545.4762.13823 1
																																																																																															Let Ti1548.4766.9353.13826
																																																																																																Li 0
																																																																																																Let Tu226.3319.6718.10774
																																																																																																	IfLE Ti1548.4766.9353.13826 Ti1547.4761.13825
																																																																																																		Let Ta1549.4779.9354.13827
																																																																																																			SetExt 48
																																																																																																			Let o.15975
																																																																																																				Slw Ti1547.4761.13825 2
																																																																																																				Let m.4767.9355.13828
																																																																																																					Lwz Ta1549.4779.9354.13827 o.15975
																																																																																																					Let m_const.5808.13255.13830
																																																																																																						Lwz Tt391.3322.6717.10773 4
																																																																																																						Let m_vec.5809.13252.13832
																																																																																																							Lwz Tt391.3322.6717.10773 0
																																																																																																							Let m_shape.6109.13242.13836
																																																																																																								Lwz m.4767.9355.13828 4
																																																																																																								Let Ti1550.4774.9359.13847
																																																																																																									Li 1
																																																																																																									Let Tu100.4771.9360.13848
																																																																																																										IfEq m_shape.6109.13242.13836 Ti1550.4774.9359.13847
																																																																																																											Let Ta1551.4778.9366.13854
																																																																																																												CallDir setup_rect_table.2893 d:m_vec.5809.13252.13832 m.4767.9355.13828 f:
																																																																																																												Let o.15978
																																																																																																													Slw Ti1547.4761.13825 2
																																																																																																													Ans
																																																																																																														Stw Ta1551.4778.9366.13854 m_const.5808.13255.13830 o.15978
																																																																																																											Let Ti1552.4775.9363.13851
																																																																																																												Li 2
																																																																																																												Ans
																																																																																																													IfEq m_shape.6109.13242.13836 Ti1552.4775.9363.13851
																																																																																																														Let Ta1553.4777.9365.13853
																																																																																																															CallDir setup_surface_table.2896 d:m_vec.5809.13252.13832 m.4767.9355.13828 f:
																																																																																																															Let o.15977
																																																																																																																Slw Ti1547.4761.13825 2
																																																																																																																Ans
																																																																																																																	Stw Ta1553.4777.9365.13853 m_const.5808.13255.13830 o.15977
																																																																																																														Let Ta1554.4776.9364.13852
																																																																																																															CallDir setup_second_table.2899 d:m_vec.5809.13252.13832 m.4767.9355.13828 f:
																																																																																																															Let o.15976
																																																																																																																Slw Ti1547.4761.13825 2
																																																																																																																Ans
																																																																																																																	Stw Ta1554.4776.9364.13852 m_const.5808.13255.13830 o.15976
																																																																																																										Let Ti1556.4772.9362.13850
																																																																																																											Sub Ti1547.4761.13825 1
																																																																																																											Ans
																																																																																																												CallDir iter_setup_dirvec_constants.2902 d:Tt391.3322.6717.10773 Ti1556.4772.9362.13850 f:
																																																																																																		Ans
																																																																																																			Nop
																																																																																																	Let Ti393.3320.6720.10775
																																																																																																		Li 118
																																																																																																		Let Tu227.3312.10776
																																																																																																			CallDir init_dirvec_constants.3120 d:Ta386.3315.10771 Ti393.3320.6720.10775 f:
																																																																																																			Let Ta385.3317.6710.10780
																																																																																																				SetExt 716
																																																																																																				Let Ta386.3315.6711.10781
																																																																																																					Lwz Ta385.3317.6710.10780 12
																																																																																																					Let Ti387.3316.6712.10782
																																																																																																						Li 119
																																																																																																						Let Tu227.3312.6713.10783
																																																																																																							CallDir init_dirvec_constants.3120 d:Ta386.3315.6711.10781 Ti387.3316.6712.10782 f:
																																																																																																							Let Ti389.3313.6715.10785
																																																																																																								Li 2
																																																																																																								Let Tu241.3159
																																																																																																									CallDir init_vecset_constants.3123 d:Ti389.3313.6715.10785 f:
																																																																																																									Let Tt280.3176
																																																																																																										SetExt 988
																																																																																																										Let m_vec.5809.6429
																																																																																																											Lwz Tt280.3176 0
																																																																																																											Let Ta282.3175
																																																																																																												SetExt 312
																																																																																																												Let Td2609.6353.6420
																																																																																																													Lfd Ta282.3175 0
																																																																																																													Let Tu6.6344.6421
																																																																																																														Stfd Td2609.6353.6420 m_vec.5809.6429 0
																																																																																																														Let Td2612.6350.6424
																																																																																																															Lfd Ta282.3175 4
																																																																																																															Let Tu5.6345.6425
																																																																																																																Stfd Td2612.6350.6424 m_vec.5809.6429 4
																																																																																																																Let Td2615.6347.6428
																																																																																																																	Lfd Ta282.3175 8
																																																																																																																	Let Tu240.3160
																																																																																																																		Stfd Td2615.6347.6428 m_vec.5809.6429 8
																																																																																																																		Let Tt283.3173
																																																																																																																			SetExt 988
																																																																																																																			Let Ta1543.4764.6413
																																																																																																																				SetExt 0
																																																																																																																				Let Ti1545.4762.6415
																																																																																																																					Lwz Ta1543.4764.6413 0
																																																																																																																					Let Ti1547.4761.6417
																																																																																																																						Sub Ti1545.4762.6415 1
																																																																																																																						Let Tu239.3161
																																																																																																																							CallDir iter_setup_dirvec_constants.2902 d:Tt283.3173 Ti1547.4761.6417 f:
																																																																																																																							Let Ta284.3171
																																																																																																																								SetExt 0
																																																																																																																								Let Ti286.3169
																																																																																																																									Lwz Ta284.3171 0
																																																																																																																									Let Ti288.3168
																																																																																																																										Sub Ti286.3169 1
																																																																																																																										Let Ti293.3199.6401
																																																																																																																											Li 0
																																																																																																																											Let Tu238.3162
																																																																																																																												IfLE Ti293.3199.6401 Ti288.3168
																																																																																																																													Let Ta294.3210.6402
																																																																																																																														SetExt 48
																																																																																																																														Let o.15988
																																																																																																																															Slw Ti288.3168 2
																																																																																																																															Let obj.3200.6403
																																																																																																																																Lwz Ta294.3210.6402 o.15988
																																																																																																																																Let m_surface.6099.10760
																																																																																																																																	Lwz obj.3200.6403 8
																																																																																																																																	Let Ti296.3202.6405
																																																																																																																																		Li 2
																																																																																																																																		Ans
																																																																																																																																			IfEq m_surface.6099.10760 Ti296.3202.6405
																																																																																																																																				Let m_surfparams.5987.10753
																																																																																																																																					Lwz obj.3200.6403 28
																																																																																																																																					Let Td297.3208.6406
																																																																																																																																						Lfd m_surfparams.5987.10753 0
																																																																																																																																						Let Td.e.13810
																																																																																																																																							FLi 1.000000
																																																																																																																																							Let z.6378.10744
																																																																																																																																								FSub Td297.3208.6406 Td.e.13810
																																																																																																																																								Let Td2637.6382.10492.10745
																																																																																																																																									FLi 0.000000
																																																																																																																																									Let Tb299.3203.6408
																																																																																																																																										IfFLE Td2637.6382.10492.10745 z.6378.10744
																																																																																																																																											Ans
																																																																																																																																												Li 0
																																																																																																																																											Ans
																																																																																																																																												Li 1
																																																																																																																																										Let Ti300.3204.6409
																																																																																																																																											Li 0
																																																																																																																																											Ans
																																																																																																																																												IfEq Tb299.3203.6408 Ti300.3204.6409
																																																																																																																																													Ans
																																																																																																																																														Nop
																																																																																																																																													Let m_shape.6109.10734
																																																																																																																																														Lwz obj.3200.6403 4
																																																																																																																																														Let Ti301.3206.6411
																																																																																																																																															Li 1
																																																																																																																																															Ans
																																																																																																																																																IfEq m_shape.6109.10734 Ti301.3206.6411
																																																																																																																																																	Ans
																																																																																																																																																		CallDir setup_rect_reflection.3134 d:Ti288.3168 obj.3200.6403 f:
																																																																																																																																																	Let Ti302.3207.6412
																																																																																																																																																		Li 2
																																																																																																																																																		Ans
																																																																																																																																																			IfEq m_shape.6109.10734 Ti302.3207.6412
																																																																																																																																																				Ans
																																																																																																																																																					CallDir setup_surface_reflection.3137 d:Ti288.3168 obj.3200.6403 f:
																																																																																																																																																				Ans
																																																																																																																																																					Nop
																																																																																																																																				Ans
																																																																																																																																					Nop
																																																																																																																													Ans
																																																																																																																														Nop
																																																																																																																												Let Ti289.3166
																																																																																																																													Li 0
																																																																																																																													Let Ti290.3167
																																																																																																																														Li 0
																																																																																																																														Let Tu237.3163
																																																																																																																															CallDir pretrace_line.3066 d:cur.3155 Ti289.3166 Ti290.3167 f:
																																																																																																																															Let Ti291.3164
																																																																																																																																Li 0
																																																																																																																																Let Ti292.3165
																																																																																																																																	Li 2
																																																																																																																																	Let Ta548.3534.6384
																																																																																																																																		SetExt 616
																																																																																																																																		Let Ti550.3519.6386
																																																																																																																																			Lwz Ta548.3534.6384 4
																																																																																																																																			Ans
																																																																																																																																				IfLE Ti550.3519.6386 Ti291.3164
																																																																																																																																					Ans
																																																																																																																																						Nop
																																																																																																																																					Let Ta551.3532.6387
																																																																																																																																						SetExt 616
																																																																																																																																						Let Ti553.3530.6389
																																																																																																																																							Lwz Ta551.3532.6387 4
																																																																																																																																							Let Ti555.3527.6391
																																																																																																																																								Sub Ti553.3530.6389 1
																																																																																																																																								Let Tu205.3520.6392
																																																																																																																																									IfLE Ti555.3527.6391 Ti291.3164
																																																																																																																																										Ans
																																																																																																																																											Nop
																																																																																																																																										Let Ti557.3528.6400
																																																																																																																																											Li 1
																																																																																																																																											Ans
																																																																																																																																												CallDir pretrace_line.3066 d:next.3156 Ti557.3528.6400 Ti292.3165 f:
																																																																																																																																									Let Ti558.3526.6393
																																																																																																																																										Li 0
																																																																																																																																										Let Tu204.3521.6394
																																																																																																																																											CallDir scan_pixel.3070 d:Ti558.3526.6393 Ti291.3164 prev.3154 cur.3155 next.3156 f:
																																																																																																																																											Let Ti560.3522.6396
																																																																																																																																												Li 1
																																																																																																																																												Let Ti562.3523.6398
																																																																																																																																													Li 4
																																																																																																																																													Ans
																																																																																																																																														CallDir scan_line.3076 d:Ti560.3522.6396 cur.3155 next.3156 prev.3154 Ti562.3523.6398 f:

main
Let Ti255.3147
	Li 128
	Let Ti256.3148
		Li 128
		Let Tu249.3145
			CallDir rt.3142 d:Ti255.3147 Ti256.3148 f:
			Let Ti257.3146
				Li 0
				Ans
					CallDir min_caml_print_float d:Ti257.3146 f:
