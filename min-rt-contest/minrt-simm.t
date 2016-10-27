data
l.6936 : 128.000000
l.6903 : 0.900000
l.6902 : 0.200000
l.6808 : 150.000000
l.6806 : -150.000000
l.6790 : 0.100000
l.6787 : -2.000000
l.6785 : 256.000000
l.6763 : 20.000000
l.6762 : 0.050000
l.6758 : 0.250000
l.6754 : 10.000000
l.6750 : 0.300000
l.6749 : 255.000000
l.6748 : 0.500000
l.6747 : 0.150000
l.6745 : 3.141593
l.6744 : 30.000000
l.6743 : 15.000000
l.6742 : 0.000100
l.6699 : 100000000.000000
l.6695 : 1000000000.000000
l.6675 : -0.100000
l.6662 : 0.010000
l.6661 : -0.200000
l.6470 : 2.000000
l.6436 : -200.000000
l.6434 : 200.000000
l.6430 : 0.017453
l.6347 : -1.000000
l.6346 : 1.000000
l.6345 : 0.000000

fundefs
xor.2627 (args) : x.2628 (fargs) : 
	Let Ti2625.6343
		Li 0
		Ans
			IfEq x.2628 Ti2625.6343
				Ans
					Mr y.2629
				Let Ti2626.6344
					Li 0
					Ans
						IfEq y.2629 Ti2626.6344
							Ans
								Li 1
							Ans
								Li 0
sgn.2630 (args) : (fargs) : x.2631 
	Let Tb2621.6339
		CallCls min_caml_fiszero d:f:x.2631 
		Let Ti2622.6340
			Li 0
			Ans
				IfEq Tb2621.6339 Ti2622.6340
					Let Tb2623.6341
						CallCls min_caml_fispos d:f:x.2631 
						Let Ti2624.6342
							Li 0
							Ans
								IfEq Tb2623.6341 Ti2624.6342
									Ans
										FLi l.6347
									Ans
										FLi l.6346
					Ans
						FLi l.6345
fneg_cond.2632 (args) : cond.2633 (fargs) : x.2634 
	Let Ti2620.6338
		Li 0
		Ans
			IfEq cond.2633 Ti2620.6338
				Ans
					CallCls min_caml_fneg d:f:x.2634 
				Ans
					FMr x.2634
add_mod5.2635 (args) : x.2636 (fargs) : 
	Let sum.6335
		Add x.2636 y.2637
		Let Ti2618.6336
			Li 5
			Ans
				IfLE Ti2618.6336 sum.6335
					Ans
						Sub sum.6335 5
					Ans
						Mr sum.6335
vecset.2638 (args) : v.2639 (fargs) : x.2640 
	Let Tu2.6330
		Stfd x.2640 v.2639 0
		Let Tu1.6331
			Stfd y.2641 v.2639 8
			Ans
				Stfd z.2642 v.2639 16
vecfill.2643 (args) : v.2644 (fargs) : elem.2645 
	Let Tu4.6325
		Stfd elem.2645 v.2644 0
		Let Tu3.6326
			Stfd elem.2645 v.2644 8
			Ans
				Stfd elem.2645 v.2644 16
vecbzero.2646 (args) : v.2647 (fargs) : 
	Let Td2611.6324
		FLi l.6345
		Ans
			CallCls vecfill.2643 d:v.2647 f:Td2611.6324 
veccpy.2648 (args) : dest.2649 (fargs) : 
	Let Td2604.6322
		Lfd src.2650 0
		Let Tu6.6313
			Stfd Td2604.6322 dest.2649 0
			Let Td2607.6319
				Lfd src.2650 8
				Let Tu5.6314
					Stfd Td2607.6319 dest.2649 8
					Let Td2610.6316
						Lfd src.2650 16
						Ans
							Stfd Td2610.6316 dest.2649 16
vecunit_sgn.2656 (args) : v.2657 (fargs) : 
	Let Td2528.6263
		Lfd v.2657 0
		Let Td2529.6259
			CallCls min_caml_fsqr d:f:Td2528.6263 
			Let Td2531.6261
				Lfd v.2657 8
				Let Td2532.6260
					CallCls min_caml_fsqr d:f:Td2531.6261 
					Let Td2533.6255
						FAdd Td2529.6259 Td2532.6260
						Let Td2535.6257
							Lfd v.2657 16
							Let Td2536.6256
								CallCls min_caml_fsqr d:f:Td2535.6257 
								Let Td2537.6254
									FAdd Td2533.6255 Td2536.6256
									Let l.6231
										CallCls min_caml_sqrt d:f:Td2537.6254 
										Let Tb2538.6247
											CallCls min_caml_fiszero d:f:l.6231 
											Let Ti2539.6248
												Li 0
												Let il.6232
													IfEq Tb2538.6247 Ti2539.6248
														Let Ti2540.6249
															Li 0
															Ans
																IfEq inv.2658 Ti2540.6249
																	Let Td2541.6252
																		FLi l.6346
																		Let Td2542.6253
																			FReciprocal l.6231
																			Ans
																				FMul Td2541.6252 Td2542.6253
																	Let Td2543.6250
																		FLi l.6347
																		Let Td2544.6251
																			FReciprocal l.6231
																			Ans
																				FMul Td2543.6250 Td2544.6251
														Ans
															FLi l.6346
													Let Td2547.6245
														Lfd v.2657 0
														Let Td2548.6244
															FMul Td2547.6245 il.6232
															Let Tu10.6233
																Stfd Td2548.6244 v.2657 0
																Let Td2551.6241
																	Lfd v.2657 8
																	Let Td2552.6240
																		FMul Td2551.6241 il.6232
																		Let Tu9.6234
																			Stfd Td2552.6240 v.2657 8
																			Let Td2555.6237
																				Lfd v.2657 16
																				Let Td2556.6236
																					FMul Td2555.6237 il.6232
																					Ans
																						Stfd Td2556.6236 v.2657 16
veciprod.2659 (args) : v.2660 (fargs) : 
	Let Td2512.6227
		Lfd v.2660 0
		Let Td2514.6228
			Lfd w.2661 0
			Let Td2515.6221
				FMul Td2512.6227 Td2514.6228
				Let Td2517.6223
					Lfd v.2660 8
					Let Td2519.6224
						Lfd w.2661 8
						Let Td2520.6222
							FMul Td2517.6223 Td2519.6224
							Let Td2521.6215
								FAdd Td2515.6221 Td2520.6222
								Let Td2523.6217
									Lfd v.2660 16
									Let Td2525.6218
										Lfd w.2661 16
										Let Td2526.6216
											FMul Td2523.6217 Td2525.6218
											Ans
												FAdd Td2521.6215 Td2526.6216
veciprod2.2662 (args) : v.2663 (fargs) : w0.2664 
	Let Td2502.6213
		Lfd v.2663 0
		Let Td2503.6209
			FMul Td2502.6213 w0.2664
			Let Td2505.6211
				Lfd v.2663 8
				Let Td2506.6210
					FMul Td2505.6211 w1.2665
					Let Td2507.6205
						FAdd Td2503.6209 Td2506.6210
						Let Td2509.6207
							Lfd v.2663 16
							Let Td2510.6206
								FMul Td2509.6207 w2.2666
								Ans
									FAdd Td2507.6205 Td2510.6206
vecaccum.2667 (args) : dest.2668 (fargs) : scale.2669 
	Let Td2482.6200
		Lfd dest.2668 0
		Let Td2484.6202
			Lfd v.2670 0
			Let Td2485.6201
				FMul scale.2669 Td2484.6202
				Let Td2486.6199
					FAdd Td2482.6200 Td2485.6201
					Let Tu12.6182
						Stfd Td2486.6199 dest.2668 0
						Let Td2489.6193
							Lfd dest.2668 8
							Let Td2491.6195
								Lfd v.2670 8
								Let Td2492.6194
									FMul scale.2669 Td2491.6195
									Let Td2493.6192
										FAdd Td2489.6193 Td2492.6194
										Let Tu11.6183
											Stfd Td2493.6192 dest.2668 8
											Let Td2496.6186
												Lfd dest.2668 16
												Let Td2498.6188
													Lfd v.2670 16
													Let Td2499.6187
														FMul scale.2669 Td2498.6188
														Let Td2500.6185
															FAdd Td2496.6186 Td2499.6187
															Ans
																Stfd Td2500.6185 dest.2668 16
vecadd.2671 (args) : dest.2672 (fargs) : 
	Let Td2464.6178
		Lfd dest.2672 0
		Let Td2466.6179
			Lfd v.2673 0
			Let Td2467.6177
				FAdd Td2464.6178 Td2466.6179
				Let Tu14.6162
					Stfd Td2467.6177 dest.2672 0
					Let Td2470.6172
						Lfd dest.2672 8
						Let Td2472.6173
							Lfd v.2673 8
							Let Td2473.6171
								FAdd Td2470.6172 Td2472.6173
								Let Tu13.6163
									Stfd Td2473.6171 dest.2672 8
									Let Td2476.6166
										Lfd dest.2672 16
										Let Td2478.6167
											Lfd v.2673 16
											Let Td2479.6165
												FAdd Td2476.6166 Td2478.6167
												Ans
													Stfd Td2479.6165 dest.2672 16
vecscale.2677 (args) : dest.2678 (fargs) : scale.2679 
	Let Td2434.6140
		Lfd dest.2678 0
		Let Td2435.6139
			FMul Td2434.6140 scale.2679
			Let Tu18.6128
				Stfd Td2435.6139 dest.2678 0
				Let Td2438.6136
					Lfd dest.2678 8
					Let Td2439.6135
						FMul Td2438.6136 scale.2679
						Let Tu17.6129
							Stfd Td2439.6135 dest.2678 8
							Let Td2442.6132
								Lfd dest.2678 16
								Let Td2443.6131
									FMul Td2442.6132 scale.2679
									Ans
										Stfd Td2443.6131 dest.2678 16
vecaccumv.2680 (args) : dest.2681 (fargs) : 
	Let Td2407.6121
		Lfd dest.2681 0
		Let Td2409.6123
			Lfd v.2682 0
			Let Td2411.6124
				Lfd w.2683 0
				Let Td2412.6122
					FMul Td2409.6123 Td2411.6124
					Let Td2413.6120
						FAdd Td2407.6121 Td2412.6122
						Let Tu20.6099
							Stfd Td2413.6120 dest.2681 0
							Let Td2416.6112
								Lfd dest.2681 8
								Let Td2418.6114
									Lfd v.2682 8
									Let Td2420.6115
										Lfd w.2683 8
										Let Td2421.6113
											FMul Td2418.6114 Td2420.6115
											Let Td2422.6111
												FAdd Td2416.6112 Td2421.6113
												Let Tu19.6100
													Stfd Td2422.6111 dest.2681 8
													Let Td2425.6103
														Lfd dest.2681 16
														Let Td2427.6105
															Lfd v.2682 16
															Let Td2429.6106
																Lfd w.2683 16
																Let Td2430.6104
																	FMul Td2427.6105 Td2429.6106
																	Let Td2431.6102
																		FAdd Td2425.6103 Td2430.6104
																		Ans
																			Stfd Td2431.6102 dest.2681 16
o_texturetype.2684 (args) : m.2685 (fargs) : 
	Let m_tex.6088
		Lwz m.2685 0
		Ans
			Mr m_tex.6088
o_form.2686 (args) : m.2687 (fargs) : 
	Let m_shape.6078
		Lwz m.2687 4
		Ans
			Mr m_shape.6078
o_reflectiontype.2688 (args) : m.2689 (fargs) : 
	Let m_surface.6068
		Lwz m.2689 8
		Ans
			Mr m_surface.6068
o_isinvert.2690 (args) : m.2691 (fargs) : 
	Let m_invert.6061
		Lwz m.2691 24
		Ans
			Mr m_invert.6061
o_isrot.2692 (args) : m.2693 (fargs) : 
	Let m_isrot.6047
		Lwz m.2693 12
		Ans
			Mr m_isrot.6047
o_param_a.2694 (args) : m.2695 (fargs) : 
	Let m_abc.6036
		Lwz m.2695 16
		Ans
			Lfd m_abc.6036 0
o_param_b.2696 (args) : m.2697 (fargs) : 
	Let m_abc.6024
		Lwz m.2697 16
		Ans
			Lfd m_abc.6024 8
o_param_c.2698 (args) : m.2699 (fargs) : 
	Let m_abc.6012
		Lwz m.2699 16
		Ans
			Lfd m_abc.6012 16
o_param_abc.2700 (args) : m.2701 (fargs) : 
	Let m_abc.6001
		Lwz m.2701 16
		Ans
			Mr m_abc.6001
o_param_x.2702 (args) : m.2703 (fargs) : 
	Let m_xyz.5990
		Lwz m.2703 20
		Ans
			Lfd m_xyz.5990 0
o_param_y.2704 (args) : m.2705 (fargs) : 
	Let m_xyz.5978
		Lwz m.2705 20
		Ans
			Lfd m_xyz.5978 8
o_param_z.2706 (args) : m.2707 (fargs) : 
	Let m_xyz.5966
		Lwz m.2707 20
		Ans
			Lfd m_xyz.5966 16
o_diffuse.2708 (args) : m.2709 (fargs) : 
	Let m_surfparams.5956
		Lwz m.2709 28
		Ans
			Lfd m_surfparams.5956 0
o_hilight.2710 (args) : m.2711 (fargs) : 
	Let m_surfparams.5944
		Lwz m.2711 28
		Ans
			Lfd m_surfparams.5944 8
o_color_red.2712 (args) : m.2713 (fargs) : 
	Let m_color.5933
		Lwz m.2713 32
		Ans
			Lfd m_color.5933 0
o_color_green.2714 (args) : m.2715 (fargs) : 
	Let m_color.5921
		Lwz m.2715 32
		Ans
			Lfd m_color.5921 8
o_color_blue.2716 (args) : m.2717 (fargs) : 
	Let m_color.5909
		Lwz m.2717 32
		Ans
			Lfd m_color.5909 16
o_param_r1.2718 (args) : m.2719 (fargs) : 
	Let m_rot123.5898
		Lwz m.2719 36
		Ans
			Lfd m_rot123.5898 0
o_param_r2.2720 (args) : m.2721 (fargs) : 
	Let m_rot123.5886
		Lwz m.2721 36
		Ans
			Lfd m_rot123.5886 8
o_param_r3.2722 (args) : m.2723 (fargs) : 
	Let m_rot123.5874
		Lwz m.2723 36
		Ans
			Lfd m_rot123.5874 16
o_param_ctbl.2724 (args) : m.2725 (fargs) : 
	Let m_ctbl.5864
		Lwz m.2725 40
		Ans
			Mr m_ctbl.5864
p_rgb.2726 (args) : pixel.2727 (fargs) : 
	Let m_rgb.5846
		Lwz pixel.2727 0
		Ans
			Mr m_rgb.5846
p_intersection_points.2728 (args) : pixel.2729 (fargs) : 
	Let m_isect_ps.5839
		Lwz pixel.2729 4
		Ans
			Mr m_isect_ps.5839
p_surface_ids.2730 (args) : pixel.2731 (fargs) : 
	Let m_sids.5832
		Lwz pixel.2731 8
		Ans
			Mr m_sids.5832
p_calc_diffuse.2732 (args) : pixel.2733 (fargs) : 
	Let m_cdif.5825
		Lwz pixel.2733 12
		Ans
			Mr m_cdif.5825
p_energy.2734 (args) : pixel.2735 (fargs) : 
	Let m_engy.5818
		Lwz pixel.2735 16
		Ans
			Mr m_engy.5818
p_received_ray_20percent.2736 (args) : pixel.2737 (fargs) : 
	Let m_r20p.5811
		Lwz pixel.2737 20
		Ans
			Mr m_r20p.5811
p_group_id.2738 (args) : pixel.2739 (fargs) : 
	Let m_gid.5803
		Lwz pixel.2739 24
		Ans
			Lwz m_gid.5803 0
p_set_group_id.2740 (args) : pixel.2741 (fargs) : 
	Let m_gid.5794
		Lwz pixel.2741 24
		Ans
			Stw id.2742 m_gid.5794 0
p_nvectors.2743 (args) : pixel.2744 (fargs) : 
	Let m_nvectors.5787
		Lwz pixel.2744 28
		Ans
			Mr m_nvectors.5787
d_vec.2745 (args) : d.2746 (fargs) : 
	Let m_vec.5778
		Lwz d.2746 0
		Ans
			Mr m_vec.5778
d_const.2747 (args) : d.2748 (fargs) : 
	Let m_const.5777
		Lwz d.2748 4
		Ans
			Mr m_const.5777
r_surface_id.2749 (args) : r.2750 (fargs) : 
	Let m_sid.5773
		Lwz r.2750 0
		Ans
			Mr m_sid.5773
r_dvec.2751 (args) : r.2752 (fargs) : 
	Let m_dvec.5771
		Lwz r.2752 4
		Ans
			Mr m_dvec.5771
r_bright.2753 (args) : r.2754 (fargs) : 
	Let m_br.5769
		Lfd r.2754 8
		Ans
			FMr m_br.5769
rad.2755 (args) : (fargs) : x.2756 
	Let Td2388.5766
		FLi l.6430
		Ans
			FMul x.2756 Td2388.5766
read_screen_settings.2757 (args) : (fargs) : 
	Let Ta2312.5762
		SetL min_caml_screen
		Let Tu2314.5765
			Nop
			Let Td2315.5764
				CallCls min_caml_read_float d:f:
				Let Tu35.5670
					Stfd Td2315.5764 Ta2312.5762 0
					Let Ta2316.5758
						SetL min_caml_screen
						Let Tu2318.5761
							Nop
							Let Td2319.5760
								CallCls min_caml_read_float d:f:
								Let Tu34.5671
									Stfd Td2319.5760 Ta2316.5758 8
									Let Ta2320.5754
										SetL min_caml_screen
										Let Tu2322.5757
											Nop
											Let Td2323.5756
												CallCls min_caml_read_float d:f:
												Let Tu33.5672
													Stfd Td2323.5756 Ta2320.5754 16
													Let Tu2324.5753
														Nop
														Let Td2325.5752
															CallCls min_caml_read_float d:f:
															Let v1.5673
																CallCls rad.2755 d:f:Td2325.5752 
																Let cos_v1.5674
																	CallCls min_caml_cos d:f:v1.5673 
																	Let sin_v1.5675
																		CallCls min_caml_sin d:f:v1.5673 
																		Let Tu2326.5751
																			Nop
																			Let Td2327.5750
																				CallCls min_caml_read_float d:f:
																				Let v2.5676
																					CallCls rad.2755 d:f:Td2327.5750 
																					Let cos_v2.5677
																						CallCls min_caml_cos d:f:v2.5676 
																						Let sin_v2.5678
																							CallCls min_caml_sin d:f:v2.5676 
																							Let Ta2328.5745
																								SetL min_caml_screenz_dir
																								Let Td2330.5748
																									FMul cos_v1.5674 sin_v2.5678
																									Let Td2331.5749
																										FLi l.6434
																										Let Td2332.5747
																											FMul Td2330.5748 Td2331.5749
																											Let Tu32.5679
																												Stfd Td2332.5747 Ta2328.5745 0
																												Let Ta2333.5741
																													SetL min_caml_screenz_dir
																													Let Td2335.5744
																														FLi l.6436
																														Let Td2336.5743
																															FMul sin_v1.5675 Td2335.5744
																															Let Tu31.5680
																																Stfd Td2336.5743 Ta2333.5741 8
																																Let Ta2337.5736
																																	SetL min_caml_screenz_dir
																																	Let Td2339.5739
																																		FMul cos_v1.5674 cos_v2.5677
																																		Let Td2340.5740
																																			FLi l.6434
																																			Let Td2341.5738
																																				FMul Td2339.5739 Td2340.5740
																																				Let Tu30.5681
																																					Stfd Td2341.5738 Ta2337.5736 16
																																					Let Ta2342.5734
																																						SetL min_caml_screenx_dir
																																						Let Tu29.5682
																																							Stfd cos_v2.5677 Ta2342.5734 0
																																							Let Ta2344.5731
																																								SetL min_caml_screenx_dir
																																								Let Td2346.5733
																																									FLi l.6345
																																									Let Tu28.5683
																																										Stfd Td2346.5733 Ta2344.5731 8
																																										Let Ta2347.5728
																																											SetL min_caml_screenx_dir
																																											Let Td2349.5730
																																												CallCls min_caml_fneg d:f:sin_v2.5678 
																																												Let Tu27.5684
																																													Stfd Td2349.5730 Ta2347.5728 16
																																													Let Ta2350.5724
																																														SetL min_caml_screeny_dir
																																														Let Td2352.5727
																																															CallCls min_caml_fneg d:f:sin_v1.5675 
																																															Let Td2353.5726
																																																FMul Td2352.5727 sin_v2.5678
																																																Let Tu26.5685
																																																	Stfd Td2353.5726 Ta2350.5724 0
																																																	Let Ta2354.5721
																																																		SetL min_caml_screeny_dir
																																																		Let Td2356.5723
																																																			CallCls min_caml_fneg d:f:cos_v1.5674 
																																																			Let Tu25.5686
																																																				Stfd Td2356.5723 Ta2354.5721 8
																																																				Let Ta2357.5717
																																																					SetL min_caml_screeny_dir
																																																					Let Td2359.5720
																																																						CallCls min_caml_fneg d:f:sin_v1.5675 
																																																						Let Td2360.5719
																																																							FMul Td2359.5720 cos_v2.5677
																																																							Let Tu24.5687
																																																								Stfd Td2360.5719 Ta2357.5717 16
																																																								Let Ta2361.5708
																																																									SetL min_caml_viewpoint
																																																									Let Ta2363.5715
																																																										SetL min_caml_screen
																																																										Let Td2365.5711
																																																											Lfd Ta2363.5715 0
																																																											Let Ta2366.5713
																																																												SetL min_caml_screenz_dir
																																																												Let Td2368.5712
																																																													Lfd Ta2366.5713 0
																																																													Let Td2369.5710
																																																														FSub Td2365.5711 Td2368.5712
																																																														Let Tu23.5688
																																																															Stfd Td2369.5710 Ta2361.5708 0
																																																															Let Ta2370.5699
																																																																SetL min_caml_viewpoint
																																																																Let Ta2372.5706
																																																																	SetL min_caml_screen
																																																																	Let Td2374.5702
																																																																		Lfd Ta2372.5706 8
																																																																		Let Ta2375.5704
																																																																			SetL min_caml_screenz_dir
																																																																			Let Td2377.5703
																																																																				Lfd Ta2375.5704 8
																																																																				Let Td2378.5701
																																																																					FSub Td2374.5702 Td2377.5703
																																																																					Let Tu22.5689
																																																																						Stfd Td2378.5701 Ta2370.5699 8
																																																																						Let Ta2379.5690
																																																																							SetL min_caml_viewpoint
																																																																							Let Ta2381.5697
																																																																								SetL min_caml_screen
																																																																								Let Td2383.5693
																																																																									Lfd Ta2381.5697 16
																																																																									Let Ta2384.5695
																																																																										SetL min_caml_screenz_dir
																																																																										Let Td2386.5694
																																																																											Lfd Ta2384.5695 16
																																																																											Let Td2387.5692
																																																																												FSub Td2383.5693 Td2386.5694
																																																																												Ans
																																																																													Stfd Td2387.5692 Ta2379.5690 16
read_light.2759 (args) : (fargs) : 
	Let Tu2294.5669
		Nop
		Let nl.5642
			CallCls min_caml_read_int d:f:
			Let Tu2295.5668
				Nop
				Let Td2296.5667
					CallCls min_caml_read_float d:f:
					Let l1.5643
						CallCls rad.2755 d:f:Td2296.5667 
						Let sl1.5644
							CallCls min_caml_sin d:f:l1.5643 
							Let Ta2297.5664
								SetL min_caml_light
								Let Td2299.5666
									CallCls min_caml_fneg d:f:sl1.5644 
									Let Tu39.5645
										Stfd Td2299.5666 Ta2297.5664 8
										Let Tu2300.5663
											Nop
											Let Td2301.5662
												CallCls min_caml_read_float d:f:
												Let l2.5646
													CallCls rad.2755 d:f:Td2301.5662 
													Let cl1.5647
														CallCls min_caml_cos d:f:l1.5643 
														Let sl2.5648
															CallCls min_caml_sin d:f:l2.5646 
															Let Ta2302.5659
																SetL min_caml_light
																Let Td2304.5661
																	FMul cl1.5647 sl2.5648
																	Let Tu38.5649
																		Stfd Td2304.5661 Ta2302.5659 0
																		Let cl2.5650
																			CallCls min_caml_cos d:f:l2.5646 
																			Let Ta2305.5656
																				SetL min_caml_light
																				Let Td2307.5658
																					FMul cl1.5647 cl2.5650
																					Let Tu37.5651
																						Stfd Td2307.5658 Ta2305.5656 16
																						Let Ta2308.5652
																							SetL min_caml_beam
																							Let Tu2310.5655
																								Nop
																								Let Td2311.5654
																									CallCls min_caml_read_float d:f:
																									Ans
																										Stfd Td2311.5654 Ta2308.5652 0
rotate_quadratic_matrix.2761 (args) : abc.2762 (fargs) : 
	Let Td2208.5640
		Lfd rot.2763 0
		Let cos_x.5532
			CallCls min_caml_cos d:f:Td2208.5640 
			Let Td2210.5638
				Lfd rot.2763 0
				Let sin_x.5533
					CallCls min_caml_sin d:f:Td2210.5638 
					Let Td2212.5636
						Lfd rot.2763 8
						Let cos_y.5534
							CallCls min_caml_cos d:f:Td2212.5636 
							Let Td2214.5634
								Lfd rot.2763 8
								Let sin_y.5535
									CallCls min_caml_sin d:f:Td2214.5634 
									Let Td2216.5632
										Lfd rot.2763 16
										Let cos_z.5536
											CallCls min_caml_cos d:f:Td2216.5632 
											Let Td2218.5630
												Lfd rot.2763 16
												Let sin_z.5537
													CallCls min_caml_sin d:f:Td2218.5630 
													Let m00.5538
														FMul cos_y.5534 cos_z.5536
														Let Td2219.5629
															FMul sin_x.5533 sin_y.5535
															Let Td2220.5627
																FMul Td2219.5629 cos_z.5536
																Let Td2221.5628
																	FMul cos_x.5532 sin_z.5537
																	Let m01.5539
																		FSub Td2220.5627 Td2221.5628
																		Let Td2222.5626
																			FMul cos_x.5532 sin_y.5535
																			Let Td2223.5624
																				FMul Td2222.5626 cos_z.5536
																				Let Td2224.5625
																					FMul sin_x.5533 sin_z.5537
																					Let m02.5540
																						FAdd Td2223.5624 Td2224.5625
																						Let m10.5541
																							FMul cos_y.5534 sin_z.5537
																							Let Td2225.5623
																								FMul sin_x.5533 sin_y.5535
																								Let Td2226.5621
																									FMul Td2225.5623 sin_z.5537
																									Let Td2227.5622
																										FMul cos_x.5532 cos_z.5536
																										Let m11.5542
																											FAdd Td2226.5621 Td2227.5622
																											Let Td2228.5620
																												FMul cos_x.5532 sin_y.5535
																												Let Td2229.5618
																													FMul Td2228.5620 sin_z.5537
																													Let Td2230.5619
																														FMul sin_x.5533 cos_z.5536
																														Let m12.5543
																															FSub Td2229.5618 Td2230.5619
																															Let m20.5544
																																CallCls min_caml_fneg d:f:sin_y.5535 
																																Let m21.5545
																																	FMul sin_x.5533 cos_y.5534
																																	Let m22.5546
																																		FMul cos_x.5532 cos_y.5534
																																		Let ao.5547
																																			Lfd abc.2762 0
																																			Let bo.5548
																																				Lfd abc.2762 8
																																				Let co.5549
																																					Lfd abc.2762 16
																																					Let Td2235.5614
																																						CallCls min_caml_fsqr d:f:m00.5538 
																																						Let Td2236.5611
																																							FMul ao.5547 Td2235.5614
																																							Let Td2237.5613
																																								CallCls min_caml_fsqr d:f:m10.5541 
																																								Let Td2238.5612
																																									FMul bo.5548 Td2237.5613
																																									Let Td2239.5608
																																										FAdd Td2236.5611 Td2238.5612
																																										Let Td2240.5610
																																											CallCls min_caml_fsqr d:f:m20.5544 
																																											Let Td2241.5609
																																												FMul co.5549 Td2240.5610
																																												Let Td2242.5607
																																													FAdd Td2239.5608 Td2241.5609
																																													Let Tu44.5550
																																														Stfd Td2242.5607 abc.2762 0
																																														Let Td2244.5605
																																															CallCls min_caml_fsqr d:f:m01.5539 
																																															Let Td2245.5602
																																																FMul ao.5547 Td2244.5605
																																																Let Td2246.5604
																																																	CallCls min_caml_fsqr d:f:m11.5542 
																																																	Let Td2247.5603
																																																		FMul bo.5548 Td2246.5604
																																																		Let Td2248.5599
																																																			FAdd Td2245.5602 Td2247.5603
																																																			Let Td2249.5601
																																																				CallCls min_caml_fsqr d:f:m21.5545 
																																																				Let Td2250.5600
																																																					FMul co.5549 Td2249.5601
																																																					Let Td2251.5598
																																																						FAdd Td2248.5599 Td2250.5600
																																																						Let Tu43.5551
																																																							Stfd Td2251.5598 abc.2762 8
																																																							Let Td2253.5596
																																																								CallCls min_caml_fsqr d:f:m02.5540 
																																																								Let Td2254.5593
																																																									FMul ao.5547 Td2253.5596
																																																									Let Td2255.5595
																																																										CallCls min_caml_fsqr d:f:m12.5543 
																																																										Let Td2256.5594
																																																											FMul bo.5548 Td2255.5595
																																																											Let Td2257.5590
																																																												FAdd Td2254.5593 Td2256.5594
																																																												Let Td2258.5592
																																																													CallCls min_caml_fsqr d:f:m22.5546 
																																																													Let Td2259.5591
																																																														FMul co.5549 Td2258.5592
																																																														Let Td2260.5589
																																																															FAdd Td2257.5590 Td2259.5591
																																																															Let Tu42.5552
																																																																Stfd Td2260.5589 abc.2762 16
																																																																Let Td2262.5579
																																																																	FLi l.6470
																																																																	Let Td2263.5587
																																																																		FMul ao.5547 m01.5539
																																																																		Let Td2264.5584
																																																																			FMul Td2263.5587 m02.5540
																																																																			Let Td2265.5586
																																																																				FMul bo.5548 m11.5542
																																																																				Let Td2266.5585
																																																																					FMul Td2265.5586 m12.5543
																																																																					Let Td2267.5581
																																																																						FAdd Td2264.5584 Td2266.5585
																																																																						Let Td2268.5583
																																																																							FMul co.5549 m21.5545
																																																																							Let Td2269.5582
																																																																								FMul Td2268.5583 m22.5546
																																																																								Let Td2270.5580
																																																																									FAdd Td2267.5581 Td2269.5582
																																																																									Let Td2271.5578
																																																																										FMul Td2262.5579 Td2270.5580
																																																																										Let Tu41.5553
																																																																											Stfd Td2271.5578 rot.2763 0
																																																																											Let Td2273.5568
																																																																												FLi l.6470
																																																																												Let Td2274.5576
																																																																													FMul ao.5547 m00.5538
																																																																													Let Td2275.5573
																																																																														FMul Td2274.5576 m02.5540
																																																																														Let Td2276.5575
																																																																															FMul bo.5548 m10.5541
																																																																															Let Td2277.5574
																																																																																FMul Td2276.5575 m12.5543
																																																																																Let Td2278.5570
																																																																																	FAdd Td2275.5573 Td2277.5574
																																																																																	Let Td2279.5572
																																																																																		FMul co.5549 m20.5544
																																																																																		Let Td2280.5571
																																																																																			FMul Td2279.5572 m22.5546
																																																																																			Let Td2281.5569
																																																																																				FAdd Td2278.5570 Td2280.5571
																																																																																				Let Td2282.5567
																																																																																					FMul Td2273.5568 Td2281.5569
																																																																																					Let Tu40.5554
																																																																																						Stfd Td2282.5567 rot.2763 8
																																																																																						Let Td2284.5557
																																																																																							FLi l.6470
																																																																																							Let Td2285.5565
																																																																																								FMul ao.5547 m00.5538
																																																																																								Let Td2286.5562
																																																																																									FMul Td2285.5565 m01.5539
																																																																																									Let Td2287.5564
																																																																																										FMul bo.5548 m10.5541
																																																																																										Let Td2288.5563
																																																																																											FMul Td2287.5564 m11.5542
																																																																																											Let Td2289.5559
																																																																																												FAdd Td2286.5562 Td2288.5563
																																																																																												Let Td2290.5561
																																																																																													FMul co.5549 m20.5544
																																																																																													Let Td2291.5560
																																																																																														FMul Td2290.5561 m21.5545
																																																																																														Let Td2292.5558
																																																																																															FAdd Td2289.5559 Td2291.5560
																																																																																															Let Td2293.5556
																																																																																																FMul Td2284.5557 Td2292.5558
																																																																																																Ans
																																																																																																	Stfd Td2293.5556 rot.2763 16
read_nth_object.2764 (args) : n.2765 (fargs) : 
	Let Tu2110.5531
		Nop
		Let texture.5400
			CallCls min_caml_read_int d:f:
			Let Ti2112.5401
				Li -1
				Ans
					IfEq texture.5400 Ti2112.5401
						Ans
							Li 0
						Let Tu2113.5529
							Nop
							Let form.5402
								CallCls min_caml_read_int d:f:
								Let Tu2114.5528
									Nop
									Let refltype.5403
										CallCls min_caml_read_int d:f:
										Let Tu2115.5527
											Nop
											Let isrot_p.5404
												CallCls min_caml_read_int d:f:
												Let Ti2116.5525
													Li 3
													Let Td2117.5526
														FLi l.6345
														Let abc.5405
															CallCls min_caml_create_float_array d:Ti2116.5525 f:Td2117.5526 
															Let Tu2119.5524
																Nop
																Let Td2120.5523
																	CallCls min_caml_read_float d:f:
																	Let Tu63.5406
																		Stfd Td2120.5523 abc.5405 0
																		Let Tu2122.5521
																			Nop
																			Let Td2123.5520
																				CallCls min_caml_read_float d:f:
																				Let Tu62.5407
																					Stfd Td2123.5520 abc.5405 8
																					Let Tu2125.5518
																						Nop
																						Let Td2126.5517
																							CallCls min_caml_read_float d:f:
																							Let Tu61.5408
																								Stfd Td2126.5517 abc.5405 16
																								Let Ti2127.5514
																									Li 3
																									Let Td2128.5515
																										FLi l.6345
																										Let xyz.5409
																											CallCls min_caml_create_float_array d:Ti2127.5514 f:Td2128.5515 
																											Let Tu2130.5513
																												Nop
																												Let Td2131.5512
																													CallCls min_caml_read_float d:f:
																													Let Tu60.5410
																														Stfd Td2131.5512 xyz.5409 0
																														Let Tu2133.5510
																															Nop
																															Let Td2134.5509
																																CallCls min_caml_read_float d:f:
																																Let Tu59.5411
																																	Stfd Td2134.5509 xyz.5409 8
																																	Let Tu2136.5507
																																		Nop
																																		Let Td2137.5506
																																			CallCls min_caml_read_float d:f:
																																			Let Tu58.5412
																																				Stfd Td2137.5506 xyz.5409 16
																																				Let Tu2138.5504
																																					Nop
																																					Let Td2139.5503
																																						CallCls min_caml_read_float d:f:
																																						Let m_invert.5413
																																							CallCls min_caml_fisneg d:f:Td2139.5503 
																																							Let Ti2140.5501
																																								Li 2
																																								Let Td2141.5502
																																									FLi l.6345
																																									Let reflparam.5414
																																										CallCls min_caml_create_float_array d:Ti2140.5501 f:Td2141.5502 
																																										Let Tu2143.5500
																																											Nop
																																											Let Td2144.5499
																																												CallCls min_caml_read_float d:f:
																																												Let Tu57.5415
																																													Stfd Td2144.5499 reflparam.5414 0
																																													Let Tu2146.5497
																																														Nop
																																														Let Td2147.5496
																																															CallCls min_caml_read_float d:f:
																																															Let Tu56.5416
																																																Stfd Td2147.5496 reflparam.5414 8
																																																Let Ti2148.5493
																																																	Li 3
																																																	Let Td2149.5494
																																																		FLi l.6345
																																																		Let color.5417
																																																			CallCls min_caml_create_float_array d:Ti2148.5493 f:Td2149.5494 
																																																			Let Tu2151.5492
																																																				Nop
																																																				Let Td2152.5491
																																																					CallCls min_caml_read_float d:f:
																																																					Let Tu55.5418
																																																						Stfd Td2152.5491 color.5417 0
																																																						Let Tu2154.5489
																																																							Nop
																																																							Let Td2155.5488
																																																								CallCls min_caml_read_float d:f:
																																																								Let Tu54.5419
																																																									Stfd Td2155.5488 color.5417 8
																																																									Let Tu2157.5486
																																																										Nop
																																																										Let Td2158.5485
																																																											CallCls min_caml_read_float d:f:
																																																											Let Tu53.5420
																																																												Stfd Td2158.5485 color.5417 16
																																																												Let Ti2159.5482
																																																													Li 3
																																																													Let Td2160.5483
																																																														FLi l.6345
																																																														Let rotation.5421
																																																															CallCls min_caml_create_float_array d:Ti2159.5482 f:Td2160.5483 
																																																															Let Ti2161.5467
																																																																Li 0
																																																																Let Tu52.5422
																																																																	IfEq isrot_p.5404 Ti2161.5467
																																																																		Ans
																																																																			Nop
																																																																		Let Tu2163.5481
																																																																			Nop
																																																																			Let Td2164.5480
																																																																				CallCls min_caml_read_float d:f:
																																																																				Let Td2165.5479
																																																																					CallCls rad.2755 d:f:Td2164.5480 
																																																																					Let Tu46.5468
																																																																						Stfd Td2165.5479 rotation.5421 0
																																																																						Let Tu2167.5477
																																																																							Nop
																																																																							Let Td2168.5476
																																																																								CallCls min_caml_read_float d:f:
																																																																								Let Td2169.5475
																																																																									CallCls rad.2755 d:f:Td2168.5476 
																																																																									Let Tu45.5469
																																																																										Stfd Td2169.5475 rotation.5421 8
																																																																										Let Tu2171.5473
																																																																											Nop
																																																																											Let Td2172.5472
																																																																												CallCls min_caml_read_float d:f:
																																																																												Let Td2173.5471
																																																																													CallCls rad.2755 d:f:Td2172.5472 
																																																																													Ans
																																																																														Stfd Td2173.5471 rotation.5421 16
																																																																	Let Ti2174.5466
																																																																		Li 2
																																																																		Let m_invert2.5423
																																																																			IfEq form.5402 Ti2174.5466
																																																																				Ans
																																																																					Li 1
																																																																				Ans
																																																																					Mr m_invert.5413
																																																																			Let Ti2175.5464
																																																																				Li 4
																																																																				Let Td2176.5465
																																																																					FLi l.6345
																																																																					Let ctbl.5424
																																																																						CallCls min_caml_create_float_array d:Ti2175.5464 f:Td2176.5465 
																																																																						Let t.6488
																																																																							Mr $a0
																																																																							Let $a0
																																																																								Add $a0 48
																																																																								Let Tu6499
																																																																									Stw ctbl.5424 t.6488 40
																																																																									Let Tu6498
																																																																										Stw rotation.5421 t.6488 36
																																																																										Let Tu6497
																																																																											Stw color.5417 t.6488 32
																																																																											Let Tu6496
																																																																												Stw reflparam.5414 t.6488 28
																																																																												Let Tu6495
																																																																													Stw m_invert2.5423 t.6488 24
																																																																													Let Tu6494
																																																																														Stw xyz.5409 t.6488 20
																																																																														Let Tu6493
																																																																															Stw abc.5405 t.6488 16
																																																																															Let Tu6492
																																																																																Stw isrot_p.5404 t.6488 12
																																																																																Let Tu6491
																																																																																	Stw refltype.5403 t.6488 8
																																																																																	Let Tu6490
																																																																																		Stw form.5402 t.6488 4
																																																																																		Let Tu6489
																																																																																			Stw texture.5400 t.6488 0
																																																																																			Let obj.5425
																																																																																				Mr t.6488
																																																																																				Let Ta2177.5463
																																																																																					SetL min_caml_objects
																																																																																					Let o.6500
																																																																																						Slw n.2765 2
																																																																																						Let Tu51.5426
																																																																																							Stw obj.5425 Ta2177.5463 o.6500
																																																																																							Let Ti2178.5430
																																																																																								Li 3
																																																																																								Let Tu50.5427
																																																																																									IfEq form.5402 Ti2178.5430
																																																																																										Let a.5434
																																																																																											Lfd abc.5405 0
																																																																																											Let Tb2181.5457
																																																																																												CallCls min_caml_fiszero d:f:a.5434 
																																																																																												Let Ti2182.5458
																																																																																													Li 0
																																																																																													Let Td2186.5456
																																																																																														IfEq Tb2181.5457 Ti2182.5458
																																																																																															Let Td2183.5459
																																																																																																CallCls sgn.2630 d:f:a.5434 
																																																																																																Let Td2184.5460
																																																																																																	CallCls min_caml_fsqr d:f:a.5434 
																																																																																																	Let Td2185.5461
																																																																																																		FReciprocal Td2184.5460
																																																																																																		Ans
																																																																																																			FMul Td2183.5459 Td2185.5461
																																																																																															Ans
																																																																																																FLi l.6345
																																																																																														Let Tu48.5435
																																																																																															Stfd Td2186.5456 abc.5405 0
																																																																																															Let b.5436
																																																																																																Lfd abc.5405 8
																																																																																																Let Tb2189.5449
																																																																																																	CallCls min_caml_fiszero d:f:b.5436 
																																																																																																	Let Ti2190.5450
																																																																																																		Li 0
																																																																																																		Let Td2194.5448
																																																																																																			IfEq Tb2189.5449 Ti2190.5450
																																																																																																				Let Td2191.5451
																																																																																																					CallCls sgn.2630 d:f:b.5436 
																																																																																																					Let Td2192.5452
																																																																																																						CallCls min_caml_fsqr d:f:b.5436 
																																																																																																						Let Td2193.5453
																																																																																																							FReciprocal Td2192.5452
																																																																																																							Ans
																																																																																																								FMul Td2191.5451 Td2193.5453
																																																																																																				Ans
																																																																																																					FLi l.6345
																																																																																																			Let Tu47.5437
																																																																																																				Stfd Td2194.5448 abc.5405 8
																																																																																																				Let c.5438
																																																																																																					Lfd abc.5405 16
																																																																																																					Let Tb2197.5441
																																																																																																						CallCls min_caml_fiszero d:f:c.5438 
																																																																																																						Let Ti2198.5442
																																																																																																							Li 0
																																																																																																							Let Td2202.5440
																																																																																																								IfEq Tb2197.5441 Ti2198.5442
																																																																																																									Let Td2199.5443
																																																																																																										CallCls sgn.2630 d:f:c.5438 
																																																																																																										Let Td2200.5444
																																																																																																											CallCls min_caml_fsqr d:f:c.5438 
																																																																																																											Let Td2201.5445
																																																																																																												FReciprocal Td2200.5444
																																																																																																												Ans
																																																																																																													FMul Td2199.5443 Td2201.5445
																																																																																																									Ans
																																																																																																										FLi l.6345
																																																																																																								Ans
																																																																																																									Stfd Td2202.5440 abc.5405 16
																																																																																										Let Ti2203.5431
																																																																																											Li 2
																																																																																											Ans
																																																																																												IfEq form.5402 Ti2203.5431
																																																																																													Let Ti2204.5433
																																																																																														Li 0
																																																																																														Let Ti2205.5432
																																																																																															IfEq m_invert.5413 Ti2204.5433
																																																																																																Ans
																																																																																																	Li 1
																																																																																																Ans
																																																																																																	Li 0
																																																																																															Ans
																																																																																																CallCls vecunit_sgn.2656 d:abc.5405 Ti2205.5432 f:
																																																																																													Ans
																																																																																														Nop
																																																																																									Let Ti2206.5429
																																																																																										Li 0
																																																																																										Let Tu49.5428
																																																																																											IfEq isrot_p.5404 Ti2206.5429
																																																																																												Ans
																																																																																													Nop
																																																																																												Ans
																																																																																													CallCls rotate_quadratic_matrix.2761 d:abc.5405 rotation.5421 f:
																																																																																											Ans
																																																																																												Li 1
read_object.2766 (args) : n.2767 (fargs) : 
	Let Ti2103.5393
		Li 60
		Ans
			IfLE Ti2103.5393 n.2767
				Ans
					Nop
				Let Tb2104.5394
					CallCls read_nth_object.2764 d:n.2767 f:
					Let Ti2105.5395
						Li 0
						Ans
							IfEq Tb2104.5394 Ti2105.5395
								Let Ta2106.5398
									SetL min_caml_n_objects
									Ans
										Stw n.2767 Ta2106.5398 0
								Let Ti2109.5396
									Add n.2767 1
									Ans
										CallCls read_object.2766 d:Ti2109.5396 f:
read_all_object.2768 (args) : (fargs) : 
	Let Ti2102.5392
		Li 0
		Ans
			CallCls read_object.2766 d:Ti2102.5392 f:
read_net_item.2770 (args) : length.2771 (fargs) : 
	Let Tu2093.5391
		Nop
		Let item.5380
			CallCls min_caml_read_int d:f:
			Let Ti2095.5381
				Li -1
				Ans
					IfEq item.5380 Ti2095.5381
						Let Ti2097.5386
							Add length.2771 1
							Let Ti2099.5387
								Li -1
								Ans
									CallCls min_caml_create_array d:Ti2097.5386 Ti2099.5387 f:
						Let Ti2101.5384
							Add length.2771 1
							Let v.5382
								CallCls read_net_item.2770 d:Ti2101.5384 f:
								Let o.6508
									Slw length.2771 2
									Let Tu65.5383
										Stw item.5380 v.5382 o.6508
										Ans
											Mr v.5382
read_or_network.2772 (args) : length.2773 (fargs) : 
	Let Ti2084.5379
		Li 0
		Let net.5368
			CallCls read_net_item.2770 d:Ti2084.5379 f:
			Let Ti2086.5369
				Lwz net.5368 0
				Let Ti2088.5370
					Li -1
					Ans
						IfEq Ti2086.5369 Ti2088.5370
							Let Ti2090.5375
								Add length.2773 1
								Ans
									CallCls min_caml_create_array d:Ti2090.5375 net.5368 f:
							Let Ti2092.5373
								Add length.2773 1
								Let v.5371
									CallCls read_or_network.2772 d:Ti2092.5373 f:
									Let o.6510
										Slw length.2773 2
										Let Tu66.5372
											Stw net.5368 v.5371 o.6510
											Ans
												Mr v.5371
read_and_network.2774 (args) : n.2775 (fargs) : 
	Let Ti2076.5367
		Li 0
		Let net.5358
			CallCls read_net_item.2770 d:Ti2076.5367 f:
			Let Ti2078.5359
				Lwz net.5358 0
				Let Ti2080.5360
					Li -1
					Ans
						IfEq Ti2078.5359 Ti2080.5360
							Ans
								Nop
							Let Ta2081.5364
								SetL min_caml_and_net
								Let o.6512
									Slw n.2775 2
									Let Tu67.5361
										Stw net.5358 Ta2081.5364 o.6512
										Let Ti2083.5362
											Add n.2775 1
											Ans
												CallCls read_and_network.2774 d:Ti2083.5362 f:
read_parameter.2776 (args) : (fargs) : 
	Let Tu2068.5357
		Nop
		Let Tu72.5346
			CallCls read_screen_settings.2757 d:f:
			Let Tu2069.5356
				Nop
				Let Tu71.5347
					CallCls read_light.2759 d:f:
					Let Tu2070.5355
						Nop
						Let Tu70.5348
							CallCls read_all_object.2768 d:f:
							Let Ti2071.5354
								Li 0
								Let Tu69.5349
									CallCls read_and_network.2774 d:Ti2071.5354 f:
									Let Ta2072.5350
										SetL min_caml_or_net
										Let Ti2074.5353
											Li 0
											Let Ta2075.5352
												CallCls read_or_network.2772 d:Ti2074.5353 f:
												Ans
													Stw Ta2075.5352 Ta2072.5350 0
solver_rect_surface.2778 (args) : m.2779 (fargs) : b0.2781 
	Let o.6514
		Slw i0.2784 3
		Let Td2041.5345
			Lfd dirvec.2780 o.6514
			Let Tb2042.5315
				CallCls min_caml_fiszero d:f:Td2041.5345 
				Let Ti2043.5316
					Li 0
					Ans
						IfEq Tb2042.5315 Ti2043.5316
							Let abc.5317
								CallCls o_param_abc.2700 d:m.2779 f:
								Let Tb2044.5342
									CallCls o_isinvert.2690 d:m.2779 f:
									Let o.6515
										Slw i0.2784 3
										Let Td2045.5344
											Lfd dirvec.2780 o.6515
											Let Tb2046.5343
												CallCls min_caml_fisneg d:f:Td2045.5344 
												Let Tb2047.5340
													CallCls xor.2627 d:Tb2044.5342 Tb2046.5343 f:
													Let o.6516
														Slw i0.2784 3
														Let Td2048.5341
															Lfd abc.5317 o.6516
															Let d.5318
																CallCls fneg_cond.2632 d:Tb2047.5340 f:Td2048.5341 
																Let Td2049.5337
																	FSub d.5318 b0.2781
																	Let o.6517
																		Slw i0.2784 3
																		Let Td2050.5338
																			Lfd dirvec.2780 o.6517
																			Let Td2051.5339
																				FReciprocal Td2050.5338
																				Let d2.5319
																					FMul Td2049.5337 Td2051.5339
																					Let o.6518
																						Slw i1.2785 3
																						Let Td2052.5336
																							Lfd dirvec.2780 o.6518
																							Let Td2053.5335
																								FMul d2.5319 Td2052.5336
																								Let Td2054.5334
																									FAdd Td2053.5335 b1.2782
																									Let Td2055.5332
																										CallCls min_caml_fabs d:f:Td2054.5334 
																										Let o.6519
																											Slw i1.2785 3
																											Let Td2056.5333
																												Lfd abc.5317 o.6519
																												Let Tb2057.5320
																													CallCls min_caml_fless d:f:Td2055.5332 Td2056.5333 
																													Let Ti2058.5321
																														Li 0
																														Ans
																															IfEq Tb2057.5320 Ti2058.5321
																																Ans
																																	Li 0
																																Let o.6520
																																	Slw i2.2786 3
																																	Let Td2059.5331
																																		Lfd dirvec.2780 o.6520
																																		Let Td2060.5330
																																			FMul d2.5319 Td2059.5331
																																			Let Td2061.5329
																																				FAdd Td2060.5330 b2.2783
																																				Let Td2062.5327
																																					CallCls min_caml_fabs d:f:Td2061.5329 
																																					Let o.6521
																																						Slw i2.2786 3
																																						Let Td2063.5328
																																							Lfd abc.5317 o.6521
																																							Let Tb2064.5322
																																								CallCls min_caml_fless d:f:Td2062.5327 Td2063.5328 
																																								Let Ti2065.5323
																																									Li 0
																																									Ans
																																										IfEq Tb2064.5322 Ti2065.5323
																																											Ans
																																												Li 0
																																											Let Ta2066.5325
																																												SetL min_caml_solver_dist
																																												Let Tu73.5324
																																													Stfd d2.5319 Ta2066.5325 0
																																													Ans
																																														Li 1
							Ans
								Li 0
solver_rect.2787 (args) : m.2788 (fargs) : b0.2790 
	Let Ti2026.5312
		Li 0
		Let Ti2027.5313
			Li 1
			Let Ti2028.5314
				Li 2
				Let Tb2029.5300
					CallCls solver_rect_surface.2778 d:m.2788 dirvec.2789 Ti2026.5312 Ti2027.5313 Ti2028.5314 f:b0.2790 b1.2791 b2.2792 
					Let Ti2030.5301
						Li 0
						Ans
							IfEq Tb2029.5300 Ti2030.5301
								Let Ti2031.5309
									Li 1
									Let Ti2032.5310
										Li 2
										Let Ti2033.5311
											Li 0
											Let Tb2034.5302
												CallCls solver_rect_surface.2778 d:m.2788 dirvec.2789 Ti2031.5309 Ti2032.5310 Ti2033.5311 f:b1.2791 b2.2792 b0.2790 
												Let Ti2035.5303
													Li 0
													Ans
														IfEq Tb2034.5302 Ti2035.5303
															Let Ti2036.5306
																Li 2
																Let Ti2037.5307
																	Li 0
																	Let Ti2038.5308
																		Li 1
																		Let Tb2039.5304
																			CallCls solver_rect_surface.2778 d:m.2788 dirvec.2789 Ti2036.5306 Ti2037.5307 Ti2038.5308 f:b2.2792 b0.2790 b1.2791 
																			Let Ti2040.5305
																				Li 0
																				Ans
																					IfEq Tb2039.5304 Ti2040.5305
																						Ans
																							Li 0
																						Ans
																							Li 3
															Ans
																Li 2
								Ans
									Li 1
solver_surface.2793 (args) : m.2794 (fargs) : b0.2796 
	Let abc.5289
		CallCls o_param_abc.2700 d:m.2794 f:
		Let d.5290
			CallCls veciprod.2659 d:dirvec.2795 abc.5289 f:
			Let Tb2018.5291
				CallCls min_caml_fispos d:f:d.5290 
				Let Ti2019.5292
					Li 0
					Ans
						IfEq Tb2018.5291 Ti2019.5292
							Ans
								Li 0
							Let Ta2020.5294
								SetL min_caml_solver_dist
								Let Td2022.5299
									CallCls veciprod2.2662 d:abc.5289 f:b0.2796 b1.2797 b2.2798 
									Let Td2023.5297
										CallCls min_caml_fneg d:f:Td2022.5299 
										Let Td2024.5298
											FReciprocal d.5290
											Let Td2025.5296
												FMul Td2023.5297 Td2024.5298
												Let Tu74.5293
													Stfd Td2025.5296 Ta2020.5294 0
													Ans
														Li 1
quadratic.2799 (args) : m.2800 (fargs) : v0.2801 
	Let Td1995.5287
		CallCls min_caml_fsqr d:f:v0.2801 
		Let Td1996.5288
			CallCls o_param_a.2694 d:m.2800 f:
			Let Td1997.5283
				FMul Td1995.5287 Td1996.5288
				Let Td1998.5285
					CallCls min_caml_fsqr d:f:v1.2802 
					Let Td1999.5286
						CallCls o_param_b.2696 d:m.2800 f:
						Let Td2000.5284
							FMul Td1998.5285 Td1999.5286
							Let Td2001.5279
								FAdd Td1997.5283 Td2000.5284
								Let Td2002.5281
									CallCls min_caml_fsqr d:f:v2.2803 
									Let Td2003.5282
										CallCls o_param_c.2698 d:m.2800 f:
										Let Td2004.5280
											FMul Td2002.5281 Td2003.5282
											Let diag_part.5265
												FAdd Td2001.5279 Td2004.5280
												Let Ti2005.5266
													CallCls o_isrot.2692 d:m.2800 f:
													Let Ti2006.5267
														Li 0
														Ans
															IfEq Ti2005.5266 Ti2006.5267
																Ans
																	FMr diag_part.5265
																Let Td2007.5277
																	FMul v1.2802 v2.2803
																	Let Td2008.5278
																		CallCls o_param_r1.2718 d:m.2800 f:
																		Let Td2009.5276
																			FMul Td2007.5277 Td2008.5278
																			Let Td2010.5272
																				FAdd diag_part.5265 Td2009.5276
																				Let Td2011.5274
																					FMul v2.2803 v0.2801
																					Let Td2012.5275
																						CallCls o_param_r2.2720 d:m.2800 f:
																						Let Td2013.5273
																							FMul Td2011.5274 Td2012.5275
																							Let Td2014.5268
																								FAdd Td2010.5272 Td2013.5273
																								Let Td2015.5270
																									FMul v0.2801 v1.2802
																									Let Td2016.5271
																										CallCls o_param_r3.2722 d:m.2800 f:
																										Let Td2017.5269
																											FMul Td2015.5270 Td2016.5271
																											Ans
																												FAdd Td2014.5268 Td2017.5269
bilinear.2804 (args) : m.2805 (fargs) : v0.2806 
	Let Td1965.5263
		FMul v0.2806 w0.2809
		Let Td1966.5264
			CallCls o_param_a.2694 d:m.2805 f:
			Let Td1967.5259
				FMul Td1965.5263 Td1966.5264
				Let Td1968.5261
					FMul v1.2807 w1.2810
					Let Td1969.5262
						CallCls o_param_b.2696 d:m.2805 f:
						Let Td1970.5260
							FMul Td1968.5261 Td1969.5262
							Let Td1971.5255
								FAdd Td1967.5259 Td1970.5260
								Let Td1972.5257
									FMul v2.2808 w2.2811
									Let Td1973.5258
										CallCls o_param_c.2698 d:m.2805 f:
										Let Td1974.5256
											FMul Td1972.5257 Td1973.5258
											Let diag_part.5234
												FAdd Td1971.5255 Td1974.5256
												Let Ti1975.5235
													CallCls o_isrot.2692 d:m.2805 f:
													Let Ti1976.5236
														Li 0
														Ans
															IfEq Ti1975.5235 Ti1976.5236
																Ans
																	FMr diag_part.5234
																Let Td1977.5253
																	FMul v2.2808 w1.2810
																	Let Td1978.5254
																		FMul v1.2807 w2.2811
																		Let Td1979.5251
																			FAdd Td1977.5253 Td1978.5254
																			Let Td1980.5252
																				CallCls o_param_r1.2718 d:m.2805 f:
																				Let Td1981.5245
																					FMul Td1979.5251 Td1980.5252
																					Let Td1982.5249
																						FMul v0.2806 w2.2811
																						Let Td1983.5250
																							FMul v2.2808 w0.2809
																							Let Td1984.5247
																								FAdd Td1982.5249 Td1983.5250
																								Let Td1985.5248
																									CallCls o_param_r2.2720 d:m.2805 f:
																									Let Td1986.5246
																										FMul Td1984.5247 Td1985.5248
																										Let Td1987.5239
																											FAdd Td1981.5245 Td1986.5246
																											Let Td1988.5243
																												FMul v0.2806 w1.2810
																												Let Td1989.5244
																													FMul v1.2807 w0.2809
																													Let Td1990.5241
																														FAdd Td1988.5243 Td1989.5244
																														Let Td1991.5242
																															CallCls o_param_r3.2722 d:m.2805 f:
																															Let Td1992.5240
																																FMul Td1990.5241 Td1991.5242
																																Let Td1993.5238
																																	FAdd Td1987.5239 Td1992.5240
																																	Let Td1994.5237
																																		CallCls min_caml_fhalf d:f:Td1993.5238 
																																		Ans
																																			FAdd diag_part.5234 Td1994.5237
solver_second.2812 (args) : m.2813 (fargs) : b0.2815 
	Let Td1938.5228
		Lfd dirvec.2814 0
		Let Td1940.5229
			Lfd dirvec.2814 8
			Let Td1942.5230
				Lfd dirvec.2814 16
				Let aa.5198
					CallCls quadratic.2799 d:m.2813 f:Td1938.5228 Td1940.5229 Td1942.5230 
					Let Tb1943.5199
						CallCls min_caml_fiszero d:f:aa.5198 
						Let Ti1944.5200
							Li 0
							Ans
								IfEq Tb1943.5199 Ti1944.5200
									Let Td1946.5222
										Lfd dirvec.2814 0
										Let Td1948.5223
											Lfd dirvec.2814 8
											Let Td1950.5224
												Lfd dirvec.2814 16
												Let bb.5201
													CallCls bilinear.2804 d:m.2813 f:Td1946.5222 Td1948.5223 Td1950.5224 b0.2815 b1.2816 b2.2817 
													Let cc0.5202
														CallCls quadratic.2799 d:m.2813 f:b0.2815 b1.2816 b2.2817 
														Let Ti1951.5219
															CallCls o_form.2686 d:m.2813 f:
															Let Ti1952.5220
																Li 3
																Let cc.5203
																	IfEq Ti1951.5219 Ti1952.5220
																		Let Td1953.5221
																			FLi l.6346
																			Ans
																				FSub cc0.5202 Td1953.5221
																		Ans
																			FMr cc0.5202
																	Let Td1954.5217
																		CallCls min_caml_fsqr d:f:bb.5201 
																		Let Td1955.5218
																			FMul aa.5198 cc.5203
																			Let d.5204
																				FSub Td1954.5217 Td1955.5218
																				Let Tb1956.5205
																					CallCls min_caml_fispos d:f:d.5204 
																					Let Ti1957.5206
																						Li 0
																						Ans
																							IfEq Tb1956.5205 Ti1957.5206
																								Ans
																									Li 0
																								Let sd.5207
																									CallCls min_caml_sqrt d:f:d.5204 
																									Let Tb1958.5215
																										CallCls o_isinvert.2690 d:m.2813 f:
																										Let Ti1959.5216
																											Li 0
																											Let t1.5208
																												IfEq Tb1958.5215 Ti1959.5216
																													Ans
																														CallCls min_caml_fneg d:f:sd.5207 
																													Ans
																														FMr sd.5207
																												Let Ta1960.5210
																													SetL min_caml_solver_dist
																													Let Td1962.5213
																														FSub t1.5208 bb.5201
																														Let Td1963.5214
																															FReciprocal aa.5198
																															Let Td1964.5212
																																FMul Td1962.5213 Td1963.5214
																																Let Tu75.5209
																																	Stfd Td1964.5212 Ta1960.5210 0
																																	Ans
																																		Li 1
									Ans
										Li 0
solver.2818 (args) : index.2819 (fargs) : 
	Let Ta1925.5197
		SetL min_caml_objects
		Let o.6531
			Slw index.2819 2
			Let m.5181
				Lwz Ta1925.5197 o.6531
				Let Td1927.5194
					Lfd org.2821 0
					Let Td1928.5195
						CallCls o_param_x.2702 d:m.5181 f:
						Let b0.5182
							FSub Td1927.5194 Td1928.5195
							Let Td1930.5191
								Lfd org.2821 8
								Let Td1931.5192
									CallCls o_param_y.2704 d:m.5181 f:
									Let b1.5183
										FSub Td1930.5191 Td1931.5192
										Let Td1933.5188
											Lfd org.2821 16
											Let Td1934.5189
												CallCls o_param_z.2706 d:m.5181 f:
												Let b2.5184
													FSub Td1933.5188 Td1934.5189
													Let m_shape.5185
														CallCls o_form.2686 d:m.5181 f:
														Let Ti1935.5186
															Li 1
															Ans
																IfEq m_shape.5185 Ti1935.5186
																	Ans
																		CallCls solver_rect.2787 d:m.5181 dirvec.2820 f:b0.5182 b1.5183 b2.5184 
																	Let Ti1936.5187
																		Li 2
																		Ans
																			IfEq m_shape.5185 Ti1936.5187
																				Ans
																					CallCls solver_surface.2793 d:m.5181 dirvec.2820 f:b0.5182 b1.5183 b2.5184 
																				Ans
																					CallCls solver_second.2812 d:m.5181 dirvec.2820 f:b0.5182 b1.5183 b2.5184 
solver_rect_fast.2822 (args) : m.2823 (fargs) : b0.2826 
	Let Td1839.5179
		Lfd dconst.2825 0
		Let Td1840.5176
			FSub Td1839.5179 b0.2826
			Let Td1842.5177
				Lfd dconst.2825 8
				Let d0.5088
					FMul Td1840.5176 Td1842.5177
					Let Td1844.5174
						Lfd v.2824 8
						Let Td1845.5173
							FMul d0.5088 Td1844.5174
							Let Td1846.5172
								FAdd Td1845.5173 b1.2827
								Let Td1847.5170
									CallCls min_caml_fabs d:f:Td1846.5172 
									Let Td1848.5171
										CallCls o_param_b.2696 d:m.2823 f:
										Let Tb1849.5156
											CallCls min_caml_fless d:f:Td1847.5170 Td1848.5171 
											Let Ti1850.5157
												Li 0
												Let Ti1863.5089
													IfEq Tb1849.5156 Ti1850.5157
														Ans
															Li 0
														Let Td1852.5168
															Lfd v.2824 16
															Let Td1853.5167
																FMul d0.5088 Td1852.5168
																Let Td1854.5166
																	FAdd Td1853.5167 b2.2828
																	Let Td1855.5164
																		CallCls min_caml_fabs d:f:Td1854.5166 
																		Let Td1856.5165
																			CallCls o_param_c.2698 d:m.2823 f:
																			Let Tb1857.5158
																				CallCls min_caml_fless d:f:Td1855.5164 Td1856.5165 
																				Let Ti1858.5159
																					Li 0
																					Ans
																						IfEq Tb1857.5158 Ti1858.5159
																							Ans
																								Li 0
																							Let Td1860.5162
																								Lfd dconst.2825 8
																								Let Tb1861.5160
																									CallCls min_caml_fiszero d:f:Td1860.5162 
																									Let Ti1862.5161
																										Li 0
																										Ans
																											IfEq Tb1861.5160 Ti1862.5161
																												Ans
																													Li 1
																												Ans
																													Li 0
													Let Ti1864.5090
														Li 0
														Ans
															IfEq Ti1863.5089 Ti1864.5090
																Let Td1866.5154
																	Lfd dconst.2825 16
																	Let Td1867.5151
																		FSub Td1866.5154 b1.2827
																		Let Td1869.5152
																			Lfd dconst.2825 24
																			Let d1.5094
																				FMul Td1867.5151 Td1869.5152
																				Let Td1871.5149
																					Lfd v.2824 0
																					Let Td1872.5148
																						FMul d1.5094 Td1871.5149
																						Let Td1873.5147
																							FAdd Td1872.5148 b0.2826
																							Let Td1874.5145
																								CallCls min_caml_fabs d:f:Td1873.5147 
																								Let Td1875.5146
																									CallCls o_param_a.2694 d:m.2823 f:
																									Let Tb1876.5131
																										CallCls min_caml_fless d:f:Td1874.5145 Td1875.5146 
																										Let Ti1877.5132
																											Li 0
																											Let Ti1890.5095
																												IfEq Tb1876.5131 Ti1877.5132
																													Ans
																														Li 0
																													Let Td1879.5143
																														Lfd v.2824 16
																														Let Td1880.5142
																															FMul d1.5094 Td1879.5143
																															Let Td1881.5141
																																FAdd Td1880.5142 b2.2828
																																Let Td1882.5139
																																	CallCls min_caml_fabs d:f:Td1881.5141 
																																	Let Td1883.5140
																																		CallCls o_param_c.2698 d:m.2823 f:
																																		Let Tb1884.5133
																																			CallCls min_caml_fless d:f:Td1882.5139 Td1883.5140 
																																			Let Ti1885.5134
																																				Li 0
																																				Ans
																																					IfEq Tb1884.5133 Ti1885.5134
																																						Ans
																																							Li 0
																																						Let Td1887.5137
																																							Lfd dconst.2825 24
																																							Let Tb1888.5135
																																								CallCls min_caml_fiszero d:f:Td1887.5137 
																																								Let Ti1889.5136
																																									Li 0
																																									Ans
																																										IfEq Tb1888.5135 Ti1889.5136
																																											Ans
																																												Li 1
																																											Ans
																																												Li 0
																												Let Ti1891.5096
																													Li 0
																													Ans
																														IfEq Ti1890.5095 Ti1891.5096
																															Let Td1893.5129
																																Lfd dconst.2825 32
																																Let Td1894.5126
																																	FSub Td1893.5129 b2.2828
																																	Let Td1896.5127
																																		Lfd dconst.2825 40
																																		Let d2.5100
																																			FMul Td1894.5126 Td1896.5127
																																			Let Td1898.5124
																																				Lfd v.2824 0
																																				Let Td1899.5123
																																					FMul d2.5100 Td1898.5124
																																					Let Td1900.5122
																																						FAdd Td1899.5123 b0.2826
																																						Let Td1901.5120
																																							CallCls min_caml_fabs d:f:Td1900.5122 
																																							Let Td1902.5121
																																								CallCls o_param_a.2694 d:m.2823 f:
																																								Let Tb1903.5106
																																									CallCls min_caml_fless d:f:Td1901.5120 Td1902.5121 
																																									Let Ti1904.5107
																																										Li 0
																																										Let Ti1917.5101
																																											IfEq Tb1903.5106 Ti1904.5107
																																												Ans
																																													Li 0
																																												Let Td1906.5118
																																													Lfd v.2824 8
																																													Let Td1907.5117
																																														FMul d2.5100 Td1906.5118
																																														Let Td1908.5116
																																															FAdd Td1907.5117 b1.2827
																																															Let Td1909.5114
																																																CallCls min_caml_fabs d:f:Td1908.5116 
																																																Let Td1910.5115
																																																	CallCls o_param_b.2696 d:m.2823 f:
																																																	Let Tb1911.5108
																																																		CallCls min_caml_fless d:f:Td1909.5114 Td1910.5115 
																																																		Let Ti1912.5109
																																																			Li 0
																																																			Ans
																																																				IfEq Tb1911.5108 Ti1912.5109
																																																					Ans
																																																						Li 0
																																																					Let Td1914.5112
																																																						Lfd dconst.2825 40
																																																						Let Tb1915.5110
																																																							CallCls min_caml_fiszero d:f:Td1914.5112 
																																																							Let Ti1916.5111
																																																								Li 0
																																																								Ans
																																																									IfEq Tb1915.5110 Ti1916.5111
																																																										Ans
																																																											Li 1
																																																										Ans
																																																											Li 0
																																											Let Ti1918.5102
																																												Li 0
																																												Ans
																																													IfEq Ti1917.5101 Ti1918.5102
																																														Ans
																																															Li 0
																																														Let Ta1919.5104
																																															SetL min_caml_solver_dist
																																															Let Tu78.5103
																																																Stfd d2.5100 Ta1919.5104 0
																																																Ans
																																																	Li 3
																															Let Ta1921.5098
																																SetL min_caml_solver_dist
																																Let Tu77.5097
																																	Stfd d1.5094 Ta1921.5098 0
																																	Ans
																																		Li 2
																Let Ta1923.5092
																	SetL min_caml_solver_dist
																	Let Tu76.5091
																		Stfd d0.5088 Ta1923.5092 0
																		Ans
																			Li 1
solver_surface_fast.2829 (args) : m.2830 (fargs) : b0.2832 
	Let Td1822.5086
		Lfd dconst.2831 0
		Let Tb1823.5070
			CallCls min_caml_fisneg d:f:Td1822.5086 
			Let Ti1824.5071
				Li 0
				Ans
					IfEq Tb1823.5070 Ti1824.5071
						Ans
							Li 0
						Let Ta1825.5073
							SetL min_caml_solver_dist
							Let Td1828.5084
								Lfd dconst.2831 8
								Let Td1829.5080
									FMul Td1828.5084 b0.2832
									Let Td1831.5082
										Lfd dconst.2831 16
										Let Td1832.5081
											FMul Td1831.5082 b1.2833
											Let Td1833.5076
												FAdd Td1829.5080 Td1832.5081
												Let Td1835.5078
													Lfd dconst.2831 24
													Let Td1836.5077
														FMul Td1835.5078 b2.2834
														Let Td1837.5075
															FAdd Td1833.5076 Td1836.5077
															Let Tu79.5072
																Stfd Td1837.5075 Ta1825.5073 0
																Ans
																	Li 1
solver_second_fast.2835 (args) : m.2836 (fargs) : b0.2838 
	Let aa.5028
		Lfd dconst.2837 0
		Let Tb1786.5029
			CallCls min_caml_fiszero d:f:aa.5028 
			Let Ti1787.5030
				Li 0
				Ans
					IfEq Tb1786.5029 Ti1787.5030
						Let Td1789.5067
							Lfd dconst.2837 8
							Let Td1790.5063
								FMul Td1789.5067 b0.2838
								Let Td1792.5065
									Lfd dconst.2837 16
									Let Td1793.5064
										FMul Td1792.5065 b1.2839
										Let Td1794.5059
											FAdd Td1790.5063 Td1793.5064
											Let Td1796.5061
												Lfd dconst.2837 24
												Let Td1797.5060
													FMul Td1796.5061 b2.2840
													Let neg_bb.5031
														FAdd Td1794.5059 Td1797.5060
														Let cc0.5032
															CallCls quadratic.2799 d:m.2836 f:b0.2838 b1.2839 b2.2840 
															Let Ti1798.5056
																CallCls o_form.2686 d:m.2836 f:
																Let Ti1799.5057
																	Li 3
																	Let cc.5033
																		IfEq Ti1798.5056 Ti1799.5057
																			Let Td1800.5058
																				FLi l.6346
																				Ans
																					FSub cc0.5032 Td1800.5058
																			Ans
																				FMr cc0.5032
																		Let Td1801.5054
																			CallCls min_caml_fsqr d:f:neg_bb.5031 
																			Let Td1802.5055
																				FMul aa.5028 cc.5033
																				Let d.5034
																					FSub Td1801.5054 Td1802.5055
																					Let Tb1803.5035
																						CallCls min_caml_fispos d:f:d.5034 
																						Let Ti1804.5036
																							Li 0
																							Ans
																								IfEq Tb1803.5035 Ti1804.5036
																									Ans
																										Li 0
																									Let Tb1805.5038
																										CallCls o_isinvert.2690 d:m.2836 f:
																										Let Ti1806.5039
																											Li 0
																											Let Tu80.5037
																												IfEq Tb1805.5038 Ti1806.5039
																													Let Ta1807.5047
																														SetL min_caml_solver_dist
																														Let Td1809.5053
																															CallCls min_caml_sqrt d:f:d.5034 
																															Let Td1810.5050
																																FSub neg_bb.5031 Td1809.5053
																																Let Td1812.5051
																																	Lfd dconst.2837 32
																																	Let Td1813.5049
																																		FMul Td1810.5050 Td1812.5051
																																		Ans
																																			Stfd Td1813.5049 Ta1807.5047 0
																													Let Ta1814.5040
																														SetL min_caml_solver_dist
																														Let Td1816.5046
																															CallCls min_caml_sqrt d:f:d.5034 
																															Let Td1817.5043
																																FAdd neg_bb.5031 Td1816.5046
																																Let Td1819.5044
																																	Lfd dconst.2837 32
																																	Let Td1820.5042
																																		FMul Td1817.5043 Td1819.5044
																																		Ans
																																			Stfd Td1820.5042 Ta1814.5040 0
																												Ans
																													Li 1
						Ans
							Li 0
solver_fast.2841 (args) : index.2842 (fargs) : 
	Let Ta1772.5027
		SetL min_caml_objects
		Let o.6566
			Slw index.2842 2
			Let m.5008
				Lwz Ta1772.5027 o.6566
				Let Td1774.5024
					Lfd org.2844 0
					Let Td1775.5025
						CallCls o_param_x.2702 d:m.5008 f:
						Let b0.5009
							FSub Td1774.5024 Td1775.5025
							Let Td1777.5021
								Lfd org.2844 8
								Let Td1778.5022
									CallCls o_param_y.2704 d:m.5008 f:
									Let b1.5010
										FSub Td1777.5021 Td1778.5022
										Let Td1780.5018
											Lfd org.2844 16
											Let Td1781.5019
												CallCls o_param_z.2706 d:m.5008 f:
												Let b2.5011
													FSub Td1780.5018 Td1781.5019
													Let dconsts.5012
														CallCls d_const.2747 d:dirvec.2843 f:
														Let o.6570
															Slw index.2842 2
															Let dconst.5013
																Lwz dconsts.5012 o.6570
																Let m_shape.5014
																	CallCls o_form.2686 d:m.5008 f:
																	Let Ti1782.5015
																		Li 1
																		Ans
																			IfEq m_shape.5014 Ti1782.5015
																				Let Ta1783.5017
																					CallCls d_vec.2745 d:dirvec.2843 f:
																					Ans
																						CallCls solver_rect_fast.2822 d:m.5008 Ta1783.5017 dconst.5013 f:b0.5009 b1.5010 b2.5011 
																				Let Ti1784.5016
																					Li 2
																					Ans
																						IfEq m_shape.5014 Ti1784.5016
																							Ans
																								CallCls solver_surface_fast.2829 d:m.5008 dconst.5013 f:b0.5009 b1.5010 b2.5011 
																							Ans
																								CallCls solver_second_fast.2835 d:m.5008 dconst.5013 f:b0.5009 b1.5010 b2.5011 
solver_surface_fast2.2845 (args) : m.2846 (fargs) : b0.2849 
	Let Td1762.5006
		Lfd dconst.2847 0
		Let Tb1763.4996
			CallCls min_caml_fisneg d:f:Td1762.5006 
			Let Ti1764.4997
				Li 0
				Ans
					IfEq Tb1763.4996 Ti1764.4997
						Ans
							Li 0
						Let Ta1765.4999
							SetL min_caml_solver_dist
							Let Td1768.5002
								Lfd dconst.2847 0
								Let Td1770.5003
									Lfd sconst.2848 24
									Let Td1771.5001
										FMul Td1768.5002 Td1770.5003
										Let Tu81.4998
											Stfd Td1771.5001 Ta1765.4999 0
											Ans
												Li 1
solver_second_fast2.2852 (args) : m.2853 (fargs) : b0.2856 
	Let aa.4957
		Lfd dconst.2854 0
		Let Tb1728.4958
			CallCls min_caml_fiszero d:f:aa.4957 
			Let Ti1729.4959
				Li 0
				Ans
					IfEq Tb1728.4958 Ti1729.4959
						Let Td1731.4993
							Lfd dconst.2854 8
							Let Td1732.4989
								FMul Td1731.4993 b0.2856
								Let Td1734.4991
									Lfd dconst.2854 16
									Let Td1735.4990
										FMul Td1734.4991 b1.2857
										Let Td1736.4985
											FAdd Td1732.4989 Td1735.4990
											Let Td1738.4987
												Lfd dconst.2854 24
												Let Td1739.4986
													FMul Td1738.4987 b2.2858
													Let neg_bb.4960
														FAdd Td1736.4985 Td1739.4986
														Let cc.4961
															Lfd sconst.2855 24
															Let Td1741.4982
																CallCls min_caml_fsqr d:f:neg_bb.4960 
																Let Td1742.4983
																	FMul aa.4957 cc.4961
																	Let d.4962
																		FSub Td1741.4982 Td1742.4983
																		Let Tb1743.4963
																			CallCls min_caml_fispos d:f:d.4962 
																			Let Ti1744.4964
																				Li 0
																				Ans
																					IfEq Tb1743.4963 Ti1744.4964
																						Ans
																							Li 0
																						Let Tb1745.4966
																							CallCls o_isinvert.2690 d:m.2853 f:
																							Let Ti1746.4967
																								Li 0
																								Let Tu82.4965
																									IfEq Tb1745.4966 Ti1746.4967
																										Let Ta1747.4975
																											SetL min_caml_solver_dist
																											Let Td1749.4981
																												CallCls min_caml_sqrt d:f:d.4962 
																												Let Td1750.4978
																													FSub neg_bb.4960 Td1749.4981
																													Let Td1752.4979
																														Lfd dconst.2854 32
																														Let Td1753.4977
																															FMul Td1750.4978 Td1752.4979
																															Ans
																																Stfd Td1753.4977 Ta1747.4975 0
																										Let Ta1754.4968
																											SetL min_caml_solver_dist
																											Let Td1756.4974
																												CallCls min_caml_sqrt d:f:d.4962 
																												Let Td1757.4971
																													FAdd neg_bb.4960 Td1756.4974
																													Let Td1759.4972
																														Lfd dconst.2854 32
																														Let Td1760.4970
																															FMul Td1757.4971 Td1759.4972
																															Ans
																																Stfd Td1760.4970 Ta1754.4968 0
																									Ans
																										Li 1
						Ans
							Li 0
solver_fast2.2859 (args) : index.2860 (fargs) : 
	Let Ta1720.4956
		SetL min_caml_objects
		Let o.6584
			Slw index.2860 2
			Let m.4942
				Lwz Ta1720.4956 o.6584
				Let sconst.4943
					CallCls o_param_ctbl.2724 d:m.4942 f:
					Let b0.4944
						Lfd sconst.4943 0
						Let b1.4945
							Lfd sconst.4943 8
							Let b2.4946
								Lfd sconst.4943 16
								Let dconsts.4947
									CallCls d_const.2747 d:dirvec.2861 f:
									Let o.6588
										Slw index.2860 2
										Let dconst.4948
											Lwz dconsts.4947 o.6588
											Let m_shape.4949
												CallCls o_form.2686 d:m.4942 f:
												Let Ti1724.4950
													Li 1
													Ans
														IfEq m_shape.4949 Ti1724.4950
															Let Ta1725.4952
																CallCls d_vec.2745 d:dirvec.2861 f:
																Ans
																	CallCls solver_rect_fast.2822 d:m.4942 Ta1725.4952 dconst.4948 f:b0.4944 b1.4945 b2.4946 
															Let Ti1726.4951
																Li 2
																Ans
																	IfEq m_shape.4949 Ti1726.4951
																		Ans
																			CallCls solver_surface_fast2.2845 d:m.4942 dconst.4948 sconst.4943 f:b0.4944 b1.4945 b2.4946 
																		Ans
																			CallCls solver_second_fast2.2852 d:m.4942 dconst.4948 sconst.4943 f:b0.4944 b1.4945 b2.4946 
setup_rect_table.2862 (args) : vec.2863 (fargs) : 
	Let Ti1658.4940
		Li 6
		Let Td1659.4941
			FLi l.6345
			Let const.4873
				CallCls min_caml_create_float_array d:Ti1658.4940 f:Td1659.4941 
				Let Td1661.4938
					Lfd vec.2863 0
					Let Tb1662.4919
						CallCls min_caml_fiszero d:f:Td1661.4938 
						Let Ti1663.4920
							Li 0
							Let Tu88.4874
								IfEq Tb1662.4919 Ti1663.4920
									Let Tb1665.4934
										CallCls o_isinvert.2690 d:m.2864 f:
										Let Td1667.4936
											Lfd vec.2863 0
											Let Tb1668.4935
												CallCls min_caml_fisneg d:f:Td1667.4936 
												Let Tb1669.4932
													CallCls xor.2627 d:Tb1665.4934 Tb1668.4935 f:
													Let Td1670.4933
														CallCls o_param_a.2694 d:m.2864 f:
														Let Td1671.4931
															CallCls fneg_cond.2632 d:Tb1669.4932 f:Td1670.4933 
															Let Tu83.4923
																Stfd Td1671.4931 const.4873 0
																Let Td1673.4926
																	FLi l.6346
																	Let Td1675.4927
																		Lfd vec.2863 0
																		Let Td1676.4928
																			FReciprocal Td1675.4927
																			Let Td1677.4925
																				FMul Td1673.4926 Td1676.4928
																				Ans
																					Stfd Td1677.4925 const.4873 8
									Let Td1679.4922
										FLi l.6345
										Ans
											Stfd Td1679.4922 const.4873 8
								Let Td1681.4917
									Lfd vec.2863 8
									Let Tb1682.4898
										CallCls min_caml_fiszero d:f:Td1681.4917 
										Let Ti1683.4899
											Li 0
											Let Tu87.4875
												IfEq Tb1682.4898 Ti1683.4899
													Let Tb1685.4913
														CallCls o_isinvert.2690 d:m.2864 f:
														Let Td1687.4915
															Lfd vec.2863 8
															Let Tb1688.4914
																CallCls min_caml_fisneg d:f:Td1687.4915 
																Let Tb1689.4911
																	CallCls xor.2627 d:Tb1685.4913 Tb1688.4914 f:
																	Let Td1690.4912
																		CallCls o_param_b.2696 d:m.2864 f:
																		Let Td1691.4910
																			CallCls fneg_cond.2632 d:Tb1689.4911 f:Td1690.4912 
																			Let Tu84.4902
																				Stfd Td1691.4910 const.4873 16
																				Let Td1693.4905
																					FLi l.6346
																					Let Td1695.4906
																						Lfd vec.2863 8
																						Let Td1696.4907
																							FReciprocal Td1695.4906
																							Let Td1697.4904
																								FMul Td1693.4905 Td1696.4907
																								Ans
																									Stfd Td1697.4904 const.4873 24
													Let Td1699.4901
														FLi l.6345
														Ans
															Stfd Td1699.4901 const.4873 24
												Let Td1701.4896
													Lfd vec.2863 16
													Let Tb1702.4877
														CallCls min_caml_fiszero d:f:Td1701.4896 
														Let Ti1703.4878
															Li 0
															Let Tu86.4876
																IfEq Tb1702.4877 Ti1703.4878
																	Let Tb1705.4892
																		CallCls o_isinvert.2690 d:m.2864 f:
																		Let Td1707.4894
																			Lfd vec.2863 16
																			Let Tb1708.4893
																				CallCls min_caml_fisneg d:f:Td1707.4894 
																				Let Tb1709.4890
																					CallCls xor.2627 d:Tb1705.4892 Tb1708.4893 f:
																					Let Td1710.4891
																						CallCls o_param_c.2698 d:m.2864 f:
																						Let Td1711.4889
																							CallCls fneg_cond.2632 d:Tb1709.4890 f:Td1710.4891 
																							Let Tu85.4881
																								Stfd Td1711.4889 const.4873 32
																								Let Td1713.4884
																									FLi l.6346
																									Let Td1715.4885
																										Lfd vec.2863 16
																										Let Td1716.4886
																											FReciprocal Td1715.4885
																											Let Td1717.4883
																												FMul Td1713.4884 Td1716.4886
																												Ans
																													Stfd Td1717.4883 const.4873 40
																	Let Td1719.4880
																		FLi l.6345
																		Ans
																			Stfd Td1719.4880 const.4873 40
																Ans
																	Mr const.4873
setup_surface_table.2865 (args) : vec.2866 (fargs) : 
	Let Ti1620.4871
		Li 4
		Let Td1621.4872
			FLi l.6345
			Let const.4829
				CallCls min_caml_create_float_array d:Ti1620.4871 f:Td1621.4872 
				Let Td1623.4868
					Lfd vec.2866 0
					Let Td1624.4869
						CallCls o_param_a.2694 d:m.2867 f:
						Let Td1625.4863
							FMul Td1623.4868 Td1624.4869
							Let Td1627.4865
								Lfd vec.2866 8
								Let Td1628.4866
									CallCls o_param_b.2696 d:m.2867 f:
									Let Td1629.4864
										FMul Td1627.4865 Td1628.4866
										Let Td1630.4858
											FAdd Td1625.4863 Td1629.4864
											Let Td1632.4860
												Lfd vec.2866 16
												Let Td1633.4861
													CallCls o_param_c.2698 d:m.2867 f:
													Let Td1634.4859
														FMul Td1632.4860 Td1633.4861
														Let d.4830
															FAdd Td1630.4858 Td1634.4859
															Let Tb1635.4832
																CallCls min_caml_fispos d:f:d.4830 
																Let Ti1636.4833
																	Li 0
																	Let Tu92.4831
																		IfEq Tb1635.4832 Ti1636.4833
																			Let Td1638.4857
																				FLi l.6345
																				Ans
																					Stfd Td1638.4857 const.4829 0
																			Let Td1640.4854
																				FLi l.6347
																				Let Td1641.4855
																					FReciprocal d.4830
																					Let Td1642.4853
																						FMul Td1640.4854 Td1641.4855
																						Let Tu91.4834
																							Stfd Td1642.4853 const.4829 0
																							Let Td1644.4850
																								CallCls o_param_a.2694 d:m.2867 f:
																								Let Td1645.4851
																									FReciprocal d.4830
																									Let Td1646.4849
																										FMul Td1644.4850 Td1645.4851
																										Let Td1647.4848
																											CallCls min_caml_fneg d:f:Td1646.4849 
																											Let Tu90.4835
																												Stfd Td1647.4848 const.4829 8
																												Let Td1649.4845
																													CallCls o_param_b.2696 d:m.2867 f:
																													Let Td1650.4846
																														FReciprocal d.4830
																														Let Td1651.4844
																															FMul Td1649.4845 Td1650.4846
																															Let Td1652.4843
																																CallCls min_caml_fneg d:f:Td1651.4844 
																																Let Tu89.4836
																																	Stfd Td1652.4843 const.4829 16
																																	Let Td1654.4840
																																		CallCls o_param_c.2698 d:m.2867 f:
																																		Let Td1655.4841
																																			FReciprocal d.4830
																																			Let Td1656.4839
																																				FMul Td1654.4840 Td1655.4841
																																				Let Td1657.4838
																																					CallCls min_caml_fneg d:f:Td1656.4839 
																																					Ans
																																						Stfd Td1657.4838 const.4829 24
																		Ans
																			Mr const.4829
setup_second_table.2868 (args) : v.2869 (fargs) : 
	Let Ti1552.4827
		Li 5
		Let Td1553.4828
			FLi l.6345
			Let const.4749
				CallCls min_caml_create_float_array d:Ti1552.4827 f:Td1553.4828 
				Let Td1555.4821
					Lfd v.2869 0
					Let Td1557.4822
						Lfd v.2869 8
						Let Td1559.4823
							Lfd v.2869 16
							Let aa.4750
								CallCls quadratic.2799 d:m.2870 f:Td1555.4821 Td1557.4822 Td1559.4823 
								Let Td1561.4818
									Lfd v.2869 0
									Let Td1562.4819
										CallCls o_param_a.2694 d:m.2870 f:
										Let Td1563.4817
											FMul Td1561.4818 Td1562.4819
											Let c1.4751
												CallCls min_caml_fneg d:f:Td1563.4817 
												Let Td1565.4814
													Lfd v.2869 8
													Let Td1566.4815
														CallCls o_param_b.2696 d:m.2870 f:
														Let Td1567.4813
															FMul Td1565.4814 Td1566.4815
															Let c2.4752
																CallCls min_caml_fneg d:f:Td1567.4813 
																Let Td1569.4810
																	Lfd v.2869 16
																	Let Td1570.4811
																		CallCls o_param_c.2698 d:m.2870 f:
																		Let Td1571.4809
																			FMul Td1569.4810 Td1570.4811
																			Let c3.4753
																				CallCls min_caml_fneg d:f:Td1571.4809 
																				Let Tu99.4754
																					Stfd aa.4750 const.4749 0
																					Let Ti1573.4763
																						CallCls o_isrot.2692 d:m.2870 f:
																						Let Ti1574.4764
																							Li 0
																							Let Tu98.4755
																								IfEq Ti1573.4763 Ti1574.4764
																									Let Tu96.4803
																										Stfd c1.4751 const.4749 8
																										Let Tu95.4804
																											Stfd c2.4752 const.4749 16
																											Ans
																												Stfd c3.4753 const.4749 24
																									Let Td1580.4800
																										Lfd v.2869 16
																										Let Td1581.4801
																											CallCls o_param_r2.2720 d:m.2870 f:
																											Let Td1582.4795
																												FMul Td1580.4800 Td1581.4801
																												Let Td1584.4797
																													Lfd v.2869 8
																													Let Td1585.4798
																														CallCls o_param_r3.2722 d:m.2870 f:
																														Let Td1586.4796
																															FMul Td1584.4797 Td1585.4798
																															Let Td1587.4794
																																FAdd Td1582.4795 Td1586.4796
																																Let Td1588.4793
																																	CallCls min_caml_fhalf d:f:Td1587.4794 
																																	Let Td1589.4792
																																		FSub c1.4751 Td1588.4793
																																		Let Tu94.4765
																																			Stfd Td1589.4792 const.4749 8
																																			Let Td1592.4788
																																				Lfd v.2869 16
																																				Let Td1593.4789
																																					CallCls o_param_r1.2718 d:m.2870 f:
																																					Let Td1594.4783
																																						FMul Td1592.4788 Td1593.4789
																																						Let Td1596.4785
																																							Lfd v.2869 0
																																							Let Td1597.4786
																																								CallCls o_param_r3.2722 d:m.2870 f:
																																								Let Td1598.4784
																																									FMul Td1596.4785 Td1597.4786
																																									Let Td1599.4782
																																										FAdd Td1594.4783 Td1598.4784
																																										Let Td1600.4781
																																											CallCls min_caml_fhalf d:f:Td1599.4782 
																																											Let Td1601.4780
																																												FSub c2.4752 Td1600.4781
																																												Let Tu93.4766
																																													Stfd Td1601.4780 const.4749 16
																																													Let Td1604.4776
																																														Lfd v.2869 8
																																														Let Td1605.4777
																																															CallCls o_param_r1.2718 d:m.2870 f:
																																															Let Td1606.4771
																																																FMul Td1604.4776 Td1605.4777
																																																Let Td1608.4773
																																																	Lfd v.2869 0
																																																	Let Td1609.4774
																																																		CallCls o_param_r2.2720 d:m.2870 f:
																																																		Let Td1610.4772
																																																			FMul Td1608.4773 Td1609.4774
																																																			Let Td1611.4770
																																																				FAdd Td1606.4771 Td1610.4772
																																																				Let Td1612.4769
																																																					CallCls min_caml_fhalf d:f:Td1611.4770 
																																																					Let Td1613.4768
																																																						FSub c3.4753 Td1612.4769
																																																						Ans
																																																							Stfd Td1613.4768 const.4749 24
																								Let Tb1614.4757
																									CallCls min_caml_fiszero d:f:aa.4750 
																									Let Ti1615.4758
																										Li 0
																										Let Tu97.4756
																											IfEq Tb1614.4757 Ti1615.4758
																												Let Td1617.4761
																													FLi l.6346
																													Let Td1618.4762
																														FReciprocal aa.4750
																														Let Td1619.4760
																															FMul Td1617.4761 Td1618.4762
																															Ans
																																Stfd Td1619.4760 const.4749 32
																												Ans
																													Nop
																											Ans
																												Mr const.4749
iter_setup_dirvec_constants.2871 (args) : dirvec.2872 (fargs) : 
	Let Ti1543.4735
		Li 0
		Ans
			IfLE Ti1543.4735 index.2873
				Let Ta1544.4748
					SetL min_caml_objects
					Let o.6635
						Slw index.2873 2
						Let m.4736
							Lwz Ta1544.4748 o.6635
							Let dconst.4737
								CallCls d_const.2747 d:dirvec.2872 f:
								Let v.4738
									CallCls d_vec.2745 d:dirvec.2872 f:
									Let m_shape.4739
										CallCls o_form.2686 d:m.4736 f:
										Let Ti1545.4743
											Li 1
											Let Tu100.4740
												IfEq m_shape.4739 Ti1545.4743
													Let Ta1546.4747
														CallCls setup_rect_table.2862 d:v.4738 m.4736 f:
														Let o.6638
															Slw index.2873 2
															Ans
																Stw Ta1546.4747 dconst.4737 o.6638
													Let Ti1547.4744
														Li 2
														Ans
															IfEq m_shape.4739 Ti1547.4744
																Let Ta1548.4746
																	CallCls setup_surface_table.2865 d:v.4738 m.4736 f:
																	Let o.6637
																		Slw index.2873 2
																		Ans
																			Stw Ta1548.4746 dconst.4737 o.6637
																Let Ta1549.4745
																	CallCls setup_second_table.2868 d:v.4738 m.4736 f:
																	Let o.6636
																		Slw index.2873 2
																		Ans
																			Stw Ta1549.4745 dconst.4737 o.6636
												Let Ti1551.4741
													Sub index.2873 1
													Ans
														CallCls iter_setup_dirvec_constants.2871 d:dirvec.2872 Ti1551.4741 f:
				Ans
					Nop
setup_dirvec_constants.2874 (args) : dirvec.2875 (fargs) : 
	Let Ta1538.4733
		SetL min_caml_n_objects
		Let Ti1540.4731
			Lwz Ta1538.4733 0
			Let Ti1542.4730
				Sub Ti1540.4731 1
				Ans
					CallCls iter_setup_dirvec_constants.2871 d:dirvec.2875 Ti1542.4730 f:
setup_startp_constants.2876 (args) : p.2877 (fargs) : 
	Let Ti1498.4682
		Li 0
		Ans
			IfLE Ti1498.4682 index.2878
				Let Ta1499.4729
					SetL min_caml_objects
					Let o.6640
						Slw index.2878 2
						Let obj.4683
							Lwz Ta1499.4729 o.6640
							Let sconst.4684
								CallCls o_param_ctbl.2724 d:obj.4683 f:
								Let m_shape.4685
									CallCls o_form.2686 d:obj.4683 f:
									Let Td1502.4726
										Lfd p.2877 0
										Let Td1503.4727
											CallCls o_param_x.2702 d:obj.4683 f:
											Let Td1504.4725
												FSub Td1502.4726 Td1503.4727
												Let Tu104.4686
													Stfd Td1504.4725 sconst.4684 0
													Let Td1507.4721
														Lfd p.2877 8
														Let Td1508.4722
															CallCls o_param_y.2704 d:obj.4683 f:
															Let Td1509.4720
																FSub Td1507.4721 Td1508.4722
																Let Tu103.4687
																	Stfd Td1509.4720 sconst.4684 8
																	Let Td1512.4716
																		Lfd p.2877 16
																		Let Td1513.4717
																			CallCls o_param_z.2706 d:obj.4683 f:
																			Let Td1514.4715
																				FSub Td1512.4716 Td1513.4717
																				Let Tu102.4688
																					Stfd Td1514.4715 sconst.4684 16
																					Let Ti1515.4692
																						Li 2
																						Let Tu101.4689
																							IfEq m_shape.4685 Ti1515.4692
																								Let Ta1517.4707
																									CallCls o_param_abc.2700 d:obj.4683 f:
																									Let Td1519.4708
																										Lfd sconst.4684 0
																										Let Td1521.4709
																											Lfd sconst.4684 8
																											Let Td1523.4710
																												Lfd sconst.4684 16
																												Let Td1524.4706
																													CallCls veciprod2.2662 d:Ta1517.4707 f:Td1519.4708 Td1521.4709 Td1523.4710 
																													Ans
																														Stfd Td1524.4706 sconst.4684 24
																								Let Ti1525.4693
																									Li 2
																									Ans
																										IfLE m_shape.4685 Ti1525.4693
																											Ans
																												Nop
																											Let Td1527.4699
																												Lfd sconst.4684 0
																												Let Td1529.4700
																													Lfd sconst.4684 8
																													Let Td1531.4701
																														Lfd sconst.4684 16
																														Let cc0.4694
																															CallCls quadratic.2799 d:obj.4683 f:Td1527.4699 Td1529.4700 Td1531.4701 
																															Let Ti1533.4697
																																Li 3
																																Let Td1535.4696
																																	IfEq m_shape.4685 Ti1533.4697
																																		Let Td1534.4698
																																			FLi l.6346
																																			Ans
																																				FSub cc0.4694 Td1534.4698
																																		Ans
																																			FMr cc0.4694
																																	Ans
																																		Stfd Td1535.4696 sconst.4684 24
																							Let Ti1537.4690
																								Sub index.2878 1
																								Ans
																									CallCls setup_startp_constants.2876 d:p.2877 Ti1537.4690 f:
				Ans
					Nop
setup_startp.2879 (args) : p.2880 (fargs) : 
	Let Ta1492.4681
		SetL min_caml_startp_fast
		Let Tu105.4675
			CallCls veccpy.2648 d:Ta1492.4681 p.2880 f:
			Let Ta1493.4679
				SetL min_caml_n_objects
				Let Ti1495.4677
					Lwz Ta1493.4679 0
					Let Ti1497.4676
						Sub Ti1495.4677 1
						Ans
							CallCls setup_startp_constants.2876 d:p.2880 Ti1497.4676 f:
is_rect_outside.2881 (args) : m.2882 (fargs) : p0.2883 
	Let Td1478.4673
		CallCls min_caml_fabs d:f:p0.2883 
		Let Td1479.4674
			CallCls o_param_a.2694 d:m.2882 f:
			Let Tb1480.4665
				CallCls min_caml_fless d:f:Td1478.4673 Td1479.4674 
				Let Ti1481.4666
					Li 0
					Let Ti1488.4661
						IfEq Tb1480.4665 Ti1481.4666
							Ans
								Li 0
							Let Td1482.4671
								CallCls min_caml_fabs d:f:p1.2884 
								Let Td1483.4672
									CallCls o_param_b.2696 d:m.2882 f:
									Let Tb1484.4667
										CallCls min_caml_fless d:f:Td1482.4671 Td1483.4672 
										Let Ti1485.4668
											Li 0
											Ans
												IfEq Tb1484.4667 Ti1485.4668
													Ans
														Li 0
													Let Td1486.4669
														CallCls min_caml_fabs d:f:p2.2885 
														Let Td1487.4670
															CallCls o_param_c.2698 d:m.2882 f:
															Ans
																CallCls min_caml_fless d:f:Td1486.4669 Td1487.4670 
						Let Ti1489.4662
							Li 0
							Ans
								IfEq Ti1488.4661 Ti1489.4662
									Let Tb1490.4663
										CallCls o_isinvert.2690 d:m.2882 f:
										Let Ti1491.4664
											Li 0
											Ans
												IfEq Tb1490.4663 Ti1491.4664
													Ans
														Li 1
													Ans
														Li 0
									Ans
										CallCls o_isinvert.2690 d:m.2882 f:
is_plane_outside.2886 (args) : m.2887 (fargs) : p0.2888 
	Let Ta1473.4660
		CallCls o_param_abc.2700 d:m.2887 f:
		Let w.4655
			CallCls veciprod2.2662 d:Ta1473.4660 f:p0.2888 p1.2889 p2.2890 
			Let Tb1474.4658
				CallCls o_isinvert.2690 d:m.2887 f:
				Let Tb1475.4659
					CallCls min_caml_fisneg d:f:w.4655 
					Let Tb1476.4656
						CallCls xor.2627 d:Tb1474.4658 Tb1475.4659 f:
						Let Ti1477.4657
							Li 0
							Ans
								IfEq Tb1476.4656 Ti1477.4657
									Ans
										Li 1
									Ans
										Li 0
is_second_outside.2891 (args) : m.2892 (fargs) : p0.2893 
	Let w.4646
		CallCls quadratic.2799 d:m.2892 f:p0.2893 p1.2894 p2.2895 
		Let Ti1466.4652
			CallCls o_form.2686 d:m.2892 f:
			Let Ti1467.4653
				Li 3
				Let w2.4647
					IfEq Ti1466.4652 Ti1467.4653
						Let Td1468.4654
							FLi l.6346
							Ans
								FSub w.4646 Td1468.4654
						Ans
							FMr w.4646
					Let Tb1469.4650
						CallCls o_isinvert.2690 d:m.2892 f:
						Let Tb1470.4651
							CallCls min_caml_fisneg d:f:w2.4647 
							Let Tb1471.4648
								CallCls xor.2627 d:Tb1469.4650 Tb1470.4651 f:
								Let Ti1472.4649
									Li 0
									Ans
										IfEq Tb1471.4648 Ti1472.4649
											Ans
												Li 1
											Ans
												Li 0
is_outside.2896 (args) : m.2897 (fargs) : q0.2898 
	Let Td1461.4645
		CallCls o_param_x.2702 d:m.2897 f:
		Let p0.4637
			FSub q0.2898 Td1461.4645
			Let Td1462.4644
				CallCls o_param_y.2704 d:m.2897 f:
				Let p1.4638
					FSub q1.2899 Td1462.4644
					Let Td1463.4643
						CallCls o_param_z.2706 d:m.2897 f:
						Let p2.4639
							FSub q2.2900 Td1463.4643
							Let m_shape.4640
								CallCls o_form.2686 d:m.2897 f:
								Let Ti1464.4641
									Li 1
									Ans
										IfEq m_shape.4640 Ti1464.4641
											Ans
												CallCls is_rect_outside.2881 d:m.2897 f:p0.4637 p1.4638 p2.4639 
											Let Ti1465.4642
												Li 2
												Ans
													IfEq m_shape.4640 Ti1465.4642
														Ans
															CallCls is_plane_outside.2886 d:m.2897 f:p0.4637 p1.4638 p2.4639 
														Ans
															CallCls is_second_outside.2891 d:m.2897 f:p0.4637 p1.4638 p2.4639 
check_all_inside.2901 (args) : ofs.2902 (fargs) : q0.2904 
	Let o.6656
		Slw ofs.2902 2
		Let head.4628
			Lwz iand.2903 o.6656
			Let Ti1454.4629
				Li -1
				Ans
					IfEq head.4628 Ti1454.4629
						Ans
							Li 1
						Let Ta1455.4635
							SetL min_caml_objects
							Let o.6657
								Slw head.4628 2
								Let Tt1456.4634
									Lwz Ta1455.4635 o.6657
									Let Tb1457.4630
										CallCls is_outside.2896 d:Tt1456.4634 f:q0.2904 q1.2905 q2.2906 
										Let Ti1458.4631
											Li 0
											Ans
												IfEq Tb1457.4630 Ti1458.4631
													Let Ti1460.4632
														Add ofs.2902 1
														Ans
															CallCls check_all_inside.2901 d:Ti1460.4632 iand.2903 f:q0.2904 q1.2905 q2.2906 
													Ans
														Li 0
shadow_check_and_group.2907 (args) : iand_ofs.2908 (fargs) : 
	Let o.6658
		Slw iand_ofs.2908 2
		Let Ti1409.4577
			Lwz and_group.2909 o.6658
			Let Ti1411.4578
				Li -1
				Ans
					IfEq Ti1409.4577 Ti1411.4578
						Ans
							Li 0
						Let o.6659
							Slw iand_ofs.2908 2
							Let obj.4579
								Lwz and_group.2909 o.6659
								Let Tt1412.4625
									SetL min_caml_light_dirvec
									Let Ta1413.4626
										SetL min_caml_intersection_point
										Let t0.4580
											CallCls solver_fast.2841 d:obj.4579 Tt1412.4625 Ta1413.4626 f:
											Let Ta1414.4623
												SetL min_caml_solver_dist
												Let t0p.4581
													Lfd Ta1414.4623 0
													Let Ti1416.4621
														Li 0
														Let Ti1418.4582
															IfEq t0.4580 Ti1416.4621
																Ans
																	Li 0
																Let Td1417.4622
																	FLi l.6661
																	Ans
																		CallCls min_caml_fless d:f:t0p.4581 Td1417.4622 
															Let Ti1419.4583
																Li 0
																Ans
																	IfEq Ti1418.4582 Ti1419.4583
																		Let Ta1420.4620
																			SetL min_caml_objects
																			Let o.6669
																				Slw obj.4579 2
																				Let Tt1421.4619
																					Lwz Ta1420.4620 o.6669
																					Let Tb1422.4615
																						CallCls o_isinvert.2690 d:Tt1421.4619 f:
																						Let Ti1423.4616
																							Li 0
																							Ans
																								IfEq Tb1422.4615 Ti1423.4616
																									Ans
																										Li 0
																									Let Ti1425.4617
																										Add iand_ofs.2908 1
																										Ans
																											CallCls shadow_check_and_group.2907 d:Ti1425.4617 and_group.2909 f:
																		Let Td1426.4614
																			FLi l.6662
																			Let t.4584
																				FAdd t0p.4581 Td1426.4614
																				Let Ta1427.4612
																					SetL min_caml_light
																					Let Td1429.4611
																						Lfd Ta1427.4612 0
																						Let Td1430.4607
																							FMul Td1429.4611 t.4584
																							Let Ta1431.4609
																								SetL min_caml_intersection_point
																								Let Td1433.4608
																									Lfd Ta1431.4609 0
																									Let q0.4585
																										FAdd Td1430.4607 Td1433.4608
																										Let Ta1434.4605
																											SetL min_caml_light
																											Let Td1436.4604
																												Lfd Ta1434.4605 8
																												Let Td1437.4600
																													FMul Td1436.4604 t.4584
																													Let Ta1438.4602
																														SetL min_caml_intersection_point
																														Let Td1440.4601
																															Lfd Ta1438.4602 8
																															Let q1.4586
																																FAdd Td1437.4600 Td1440.4601
																																Let Ta1441.4598
																																	SetL min_caml_light
																																	Let Td1443.4597
																																		Lfd Ta1441.4598 16
																																		Let Td1444.4593
																																			FMul Td1443.4597 t.4584
																																			Let Ta1445.4595
																																				SetL min_caml_intersection_point
																																				Let Td1447.4594
																																					Lfd Ta1445.4595 16
																																					Let q2.4587
																																						FAdd Td1444.4593 Td1447.4594
																																						Let Ti1448.4592
																																							Li 0
																																							Let Tb1449.4588
																																								CallCls check_all_inside.2901 d:Ti1448.4592 and_group.2909 f:q0.4585 q1.4586 q2.4587 
																																								Let Ti1450.4589
																																									Li 0
																																									Ans
																																										IfEq Tb1449.4588 Ti1450.4589
																																											Let Ti1452.4590
																																												Add iand_ofs.2908 1
																																												Ans
																																													CallCls shadow_check_and_group.2907 d:Ti1452.4590 and_group.2909 f:
																																											Ans
																																												Li 1
shadow_check_one_or_group.2910 (args) : ofs.2911 (fargs) : 
	Let o.6670
		Slw ofs.2911 2
		Let head.4567
			Lwz or_group.2912 o.6670
			Let Ti1403.4568
				Li -1
				Ans
					IfEq head.4567 Ti1403.4568
						Ans
							Li 0
						Let Ta1404.4575
							SetL min_caml_and_net
							Let o.6671
								Slw head.4567 2
								Let and_group.4569
									Lwz Ta1404.4575 o.6671
									Let Ti1405.4574
										Li 0
										Let shadow_p.4570
											CallCls shadow_check_and_group.2907 d:Ti1405.4574 and_group.4569 f:
											Let Ti1406.4571
												Li 0
												Ans
													IfEq shadow_p.4570 Ti1406.4571
														Let Ti1408.4572
															Add ofs.2911 1
															Ans
																CallCls shadow_check_one_or_group.2910 d:Ti1408.4572 or_group.2912 f:
														Ans
															Li 1
shadow_check_one_or_matrix.2913 (args) : ofs.2914 (fargs) : 
	Let o.6672
		Slw ofs.2914 2
		Let head.4539
			Lwz or_matrix.2915 o.6672
			Let range_primitive.4540
				Lwz head.4539 0
				Let Ti1379.4541
					Li -1
					Ans
						IfEq range_primitive.4540 Ti1379.4541
							Ans
								Li 0
							Let Ti1380.4551
								Li 99
								Let Ti1393.4542
									IfEq range_primitive.4540 Ti1380.4551
										Ans
											Li 1
										Let Tt1381.4563
											SetL min_caml_light_dirvec
											Let Ta1382.4564
												SetL min_caml_intersection_point
												Let t.4552
													CallCls solver_fast.2841 d:range_primitive.4540 Tt1381.4563 Ta1382.4564 f:
													Let Ti1383.4553
														Li 0
														Ans
															IfEq t.4552 Ti1383.4553
																Ans
																	Li 0
																Let Ta1384.4561
																	SetL min_caml_solver_dist
																	Let Td1386.4559
																		Lfd Ta1384.4561 0
																		Let Td1387.4560
																			FLi l.6675
																			Let Tb1388.4554
																				CallCls min_caml_fless d:f:Td1386.4559 Td1387.4560 
																				Let Ti1389.4555
																					Li 0
																					Ans
																						IfEq Tb1388.4554 Ti1389.4555
																							Ans
																								Li 0
																							Let Ti1390.4558
																								Li 1
																								Let Tb1391.4556
																									CallCls shadow_check_one_or_group.2910 d:Ti1390.4558 head.4539 f:
																									Let Ti1392.4557
																										Li 0
																										Ans
																											IfEq Tb1391.4556 Ti1392.4557
																												Ans
																													Li 0
																												Ans
																													Li 1
									Let Ti1394.4543
										Li 0
										Ans
											IfEq Ti1393.4542 Ti1394.4543
												Let Ti1396.4549
													Add ofs.2914 1
													Ans
														CallCls shadow_check_one_or_matrix.2913 d:Ti1396.4549 or_matrix.2915 f:
												Let Ti1397.4548
													Li 1
													Let Tb1398.4544
														CallCls shadow_check_one_or_group.2910 d:Ti1397.4548 head.4539 f:
														Let Ti1399.4545
															Li 0
															Ans
																IfEq Tb1398.4544 Ti1399.4545
																	Let Ti1401.4546
																		Add ofs.2914 1
																		Ans
																			CallCls shadow_check_one_or_matrix.2913 d:Ti1401.4546 or_matrix.2915 f:
																	Ans
																		Li 1
solve_each_element.2916 (args) : iand_ofs.2917 (fargs) : 
	Let o.6676
		Slw iand_ofs.2917 2
		Let iobj.4477
			Lwz and_group.2918 o.6676
			Let Ti1327.4478
				Li -1
				Ans
					IfEq iobj.4477 Ti1327.4478
						Ans
							Nop
						Let Ta1328.4537
							SetL min_caml_startp
							Let t0.4479
								CallCls solver.2818 d:iobj.4477 dirvec.2919 Ta1328.4537 f:
								Let Ti1329.4480
									Li 0
									Ans
										IfEq t0.4479 Ti1329.4480
											Let Ta1330.4536
												SetL min_caml_objects
												Let o.6688
													Slw iobj.4477 2
													Let Tt1331.4535
														Lwz Ta1330.4536 o.6688
														Let Tb1332.4531
															CallCls o_isinvert.2690 d:Tt1331.4535 f:
															Let Ti1333.4532
																Li 0
																Ans
																	IfEq Tb1332.4531 Ti1333.4532
																		Ans
																			Nop
																		Let Ti1335.4533
																			Add iand_ofs.2917 1
																			Ans
																				CallCls solve_each_element.2916 d:Ti1335.4533 and_group.2918 dirvec.2919 f:
											Let Ta1336.4529
												SetL min_caml_solver_dist
												Let t0p.4481
													Lfd Ta1336.4529 0
													Let Td1338.4528
														FLi l.6345
														Let Tb1339.4485
															CallCls min_caml_fless d:f:Td1338.4528 t0p.4481 
															Let Ti1340.4486
																Li 0
																Let Tu109.4482
																	IfEq Tb1339.4485 Ti1340.4486
																		Ans
																			Nop
																		Let Ta1341.4526
																			SetL min_caml_tmin
																			Let Td1343.4525
																				Lfd Ta1341.4526 0
																				Let Tb1344.4487
																					CallCls min_caml_fless d:f:t0p.4481 Td1343.4525 
																					Let Ti1345.4488
																						Li 0
																						Ans
																							IfEq Tb1344.4487 Ti1345.4488
																								Ans
																									Nop
																								Let Td1346.4524
																									FLi l.6662
																									Let t.4489
																										FAdd t0p.4481 Td1346.4524
																										Let Td1348.4522
																											Lfd dirvec.2919 0
																											Let Td1349.4518
																												FMul Td1348.4522 t.4489
																												Let Ta1350.4520
																													SetL min_caml_startp
																													Let Td1352.4519
																														Lfd Ta1350.4520 0
																														Let q0.4490
																															FAdd Td1349.4518 Td1352.4519
																															Let Td1354.4516
																																Lfd dirvec.2919 8
																																Let Td1355.4512
																																	FMul Td1354.4516 t.4489
																																	Let Ta1356.4514
																																		SetL min_caml_startp
																																		Let Td1358.4513
																																			Lfd Ta1356.4514 8
																																			Let q1.4491
																																				FAdd Td1355.4512 Td1358.4513
																																				Let Td1360.4510
																																					Lfd dirvec.2919 16
																																					Let Td1361.4506
																																						FMul Td1360.4510 t.4489
																																						Let Ta1362.4508
																																							SetL min_caml_startp
																																							Let Td1364.4507
																																								Lfd Ta1362.4508 16
																																								Let q2.4492
																																									FAdd Td1361.4506 Td1364.4507
																																									Let Ti1365.4505
																																										Li 0
																																										Let Tb1366.4493
																																											CallCls check_all_inside.2901 d:Ti1365.4505 and_group.2918 f:q0.4490 q1.4491 q2.4492 
																																											Let Ti1367.4494
																																												Li 0
																																												Ans
																																													IfEq Tb1366.4493 Ti1367.4494
																																														Ans
																																															Nop
																																														Let Ta1368.4503
																																															SetL min_caml_tmin
																																															Let Tu108.4495
																																																Stfd t.4489 Ta1368.4503 0
																																																Let Ta1370.4502
																																																	SetL min_caml_intersection_point
																																																	Let Tu107.4496
																																																		CallCls vecset.2638 d:Ta1370.4502 f:q0.4490 q1.4491 q2.4492 
																																																		Let Ta1371.4500
																																																			SetL min_caml_intersected_object_id
																																																			Let Tu106.4497
																																																				Stw iobj.4477 Ta1371.4500 0
																																																				Let Ta1373.4498
																																																					SetL min_caml_intsec_rectside
																																																					Ans
																																																						Stw t0.4479 Ta1373.4498 0
																	Let Ti1376.4483
																		Add iand_ofs.2917 1
																		Ans
																			CallCls solve_each_element.2916 d:Ti1376.4483 and_group.2918 dirvec.2919 f:
solve_one_or_network.2920 (args) : ofs.2921 (fargs) : 
	Let o.6689
		Slw ofs.2921 2
		Let head.4468
			Lwz or_group.2922 o.6689
			Let Ti1321.4469
				Li -1
				Ans
					IfEq head.4468 Ti1321.4469
						Ans
							Nop
						Let Ta1322.4475
							SetL min_caml_and_net
							Let o.6690
								Slw head.4468 2
								Let and_group.4470
									Lwz Ta1322.4475 o.6690
									Let Ti1323.4474
										Li 0
										Let Tu110.4471
											CallCls solve_each_element.2916 d:Ti1323.4474 and_group.4470 dirvec.2923 f:
											Let Ti1325.4472
												Add ofs.2921 1
												Ans
													CallCls solve_one_or_network.2920 d:Ti1325.4472 or_group.2922 dirvec.2923 f:
trace_or_matrix.2924 (args) : ofs.2925 (fargs) : 
	Let o.6691
		Slw ofs.2925 2
		Let head.4446
			Lwz or_network.2926 o.6691
			Let range_primitive.4447
				Lwz head.4446 0
				Let Ti1305.4448
					Li -1
					Ans
						IfEq range_primitive.4447 Ti1305.4448
							Ans
								Nop
							Let Ti1306.4452
								Li 99
								Let Tu111.4449
									IfEq range_primitive.4447 Ti1306.4452
										Let Ti1307.4465
											Li 1
											Ans
												CallCls solve_one_or_network.2920 d:Ti1307.4465 head.4446 dirvec.2927 f:
										Let Ta1308.4464
											SetL min_caml_startp
											Let t.4453
												CallCls solver.2818 d:range_primitive.4447 dirvec.2927 Ta1308.4464 f:
												Let Ti1309.4454
													Li 0
													Ans
														IfEq t.4453 Ti1309.4454
															Ans
																Nop
															Let Ta1310.4462
																SetL min_caml_solver_dist
																Let tp.4455
																	Lfd Ta1310.4462 0
																	Let Ta1312.4460
																		SetL min_caml_tmin
																		Let Td1314.4459
																			Lfd Ta1312.4460 0
																			Let Tb1315.4456
																				CallCls min_caml_fless d:f:tp.4455 Td1314.4459 
																				Let Ti1316.4457
																					Li 0
																					Ans
																						IfEq Tb1315.4456 Ti1316.4457
																							Ans
																								Nop
																							Let Ti1317.4458
																								Li 1
																								Ans
																									CallCls solve_one_or_network.2920 d:Ti1317.4458 head.4446 dirvec.2927 f:
									Let Ti1319.4450
										Add ofs.2925 1
										Ans
											CallCls trace_or_matrix.2924 d:Ti1319.4450 or_network.2926 dirvec.2927 f:
judge_intersection.2928 (args) : dirvec.2929 (fargs) : 
	Let Ta1290.4443
		SetL min_caml_tmin
		Let Td1292.4445
			FLi l.6695
			Let Tu113.4430
				Stfd Td1292.4445 Ta1290.4443 0
				Let Ti1293.4439
					Li 0
					Let Ta1294.4441
						SetL min_caml_or_net
						Let Ta1296.4440
							Lwz Ta1294.4441 0
							Let Tu112.4431
								CallCls trace_or_matrix.2924 d:Ti1293.4439 Ta1296.4440 dirvec.2929 f:
								Let Ta1297.4437
									SetL min_caml_tmin
									Let t.4432
										Lfd Ta1297.4437 0
										Let Td1299.4436
											FLi l.6675
											Let Tb1300.4433
												CallCls min_caml_fless d:f:Td1299.4436 t.4432 
												Let Ti1301.4434
													Li 0
													Ans
														IfEq Tb1300.4433 Ti1301.4434
															Ans
																Li 0
															Let Td1302.4435
																FLi l.6699
																Ans
																	CallCls min_caml_fless d:f:t.4432 Td1302.4435 
solve_each_element_fast.2930 (args) : iand_ofs.2931 (fargs) : 
	Let vec.4368
		CallCls d_vec.2745 d:dirvec.2933 f:
		Let o.6700
			Slw iand_ofs.2931 2
			Let iobj.4369
				Lwz and_group.2932 o.6700
				Let Ti1241.4370
					Li -1
					Ans
						IfEq iobj.4369 Ti1241.4370
							Ans
								Nop
							Let t0.4371
								CallCls solver_fast2.2859 d:iobj.4369 dirvec.2933 f:
								Let Ti1242.4372
									Li 0
									Ans
										IfEq t0.4371 Ti1242.4372
											Let Ta1243.4428
												SetL min_caml_objects
												Let o.6712
													Slw iobj.4369 2
													Let Tt1244.4427
														Lwz Ta1243.4428 o.6712
														Let Tb1245.4423
															CallCls o_isinvert.2690 d:Tt1244.4427 f:
															Let Ti1246.4424
																Li 0
																Ans
																	IfEq Tb1245.4423 Ti1246.4424
																		Ans
																			Nop
																		Let Ti1248.4425
																			Add iand_ofs.2931 1
																			Ans
																				CallCls solve_each_element_fast.2930 d:Ti1248.4425 and_group.2932 dirvec.2933 f:
											Let Ta1249.4421
												SetL min_caml_solver_dist
												Let t0p.4373
													Lfd Ta1249.4421 0
													Let Td1251.4420
														FLi l.6345
														Let Tb1252.4377
															CallCls min_caml_fless d:f:Td1251.4420 t0p.4373 
															Let Ti1253.4378
																Li 0
																Let Tu117.4374
																	IfEq Tb1252.4377 Ti1253.4378
																		Ans
																			Nop
																		Let Ta1254.4418
																			SetL min_caml_tmin
																			Let Td1256.4417
																				Lfd Ta1254.4418 0
																				Let Tb1257.4379
																					CallCls min_caml_fless d:f:t0p.4373 Td1256.4417 
																					Let Ti1258.4380
																						Li 0
																						Ans
																							IfEq Tb1257.4379 Ti1258.4380
																								Ans
																									Nop
																								Let Td1259.4416
																									FLi l.6662
																									Let t.4381
																										FAdd t0p.4373 Td1259.4416
																										Let Td1261.4414
																											Lfd vec.4368 0
																											Let Td1262.4410
																												FMul Td1261.4414 t.4381
																												Let Ta1263.4412
																													SetL min_caml_startp_fast
																													Let Td1265.4411
																														Lfd Ta1263.4412 0
																														Let q0.4382
																															FAdd Td1262.4410 Td1265.4411
																															Let Td1267.4408
																																Lfd vec.4368 8
																																Let Td1268.4404
																																	FMul Td1267.4408 t.4381
																																	Let Ta1269.4406
																																		SetL min_caml_startp_fast
																																		Let Td1271.4405
																																			Lfd Ta1269.4406 8
																																			Let q1.4383
																																				FAdd Td1268.4404 Td1271.4405
																																				Let Td1273.4402
																																					Lfd vec.4368 16
																																					Let Td1274.4398
																																						FMul Td1273.4402 t.4381
																																						Let Ta1275.4400
																																							SetL min_caml_startp_fast
																																							Let Td1277.4399
																																								Lfd Ta1275.4400 16
																																								Let q2.4384
																																									FAdd Td1274.4398 Td1277.4399
																																									Let Ti1278.4397
																																										Li 0
																																										Let Tb1279.4385
																																											CallCls check_all_inside.2901 d:Ti1278.4397 and_group.2932 f:q0.4382 q1.4383 q2.4384 
																																											Let Ti1280.4386
																																												Li 0
																																												Ans
																																													IfEq Tb1279.4385 Ti1280.4386
																																														Ans
																																															Nop
																																														Let Ta1281.4395
																																															SetL min_caml_tmin
																																															Let Tu116.4387
																																																Stfd t.4381 Ta1281.4395 0
																																																Let Ta1283.4394
																																																	SetL min_caml_intersection_point
																																																	Let Tu115.4388
																																																		CallCls vecset.2638 d:Ta1283.4394 f:q0.4382 q1.4383 q2.4384 
																																																		Let Ta1284.4392
																																																			SetL min_caml_intersected_object_id
																																																			Let Tu114.4389
																																																				Stw iobj.4369 Ta1284.4392 0
																																																				Let Ta1286.4390
																																																					SetL min_caml_intsec_rectside
																																																					Ans
																																																						Stw t0.4371 Ta1286.4390 0
																	Let Ti1289.4375
																		Add iand_ofs.2931 1
																		Ans
																			CallCls solve_each_element_fast.2930 d:Ti1289.4375 and_group.2932 dirvec.2933 f:
solve_one_or_network_fast.2934 (args) : ofs.2935 (fargs) : 
	Let o.6713
		Slw ofs.2935 2
		Let head.4359
			Lwz or_group.2936 o.6713
			Let Ti1235.4360
				Li -1
				Ans
					IfEq head.4359 Ti1235.4360
						Ans
							Nop
						Let Ta1236.4366
							SetL min_caml_and_net
							Let o.6714
								Slw head.4359 2
								Let and_group.4361
									Lwz Ta1236.4366 o.6714
									Let Ti1237.4365
										Li 0
										Let Tu118.4362
											CallCls solve_each_element_fast.2930 d:Ti1237.4365 and_group.4361 dirvec.2937 f:
											Let Ti1239.4363
												Add ofs.2935 1
												Ans
													CallCls solve_one_or_network_fast.2934 d:Ti1239.4363 or_group.2936 dirvec.2937 f:
trace_or_matrix_fast.2938 (args) : ofs.2939 (fargs) : 
	Let o.6715
		Slw ofs.2939 2
		Let head.4338
			Lwz or_network.2940 o.6715
			Let range_primitive.4339
				Lwz head.4338 0
				Let Ti1220.4340
					Li -1
					Ans
						IfEq range_primitive.4339 Ti1220.4340
							Ans
								Nop
							Let Ti1221.4344
								Li 99
								Let Tu119.4341
									IfEq range_primitive.4339 Ti1221.4344
										Let Ti1222.4356
											Li 1
											Ans
												CallCls solve_one_or_network_fast.2934 d:Ti1222.4356 head.4338 dirvec.2941 f:
										Let t.4345
											CallCls solver_fast2.2859 d:range_primitive.4339 dirvec.2941 f:
											Let Ti1223.4346
												Li 0
												Ans
													IfEq t.4345 Ti1223.4346
														Ans
															Nop
														Let Ta1224.4354
															SetL min_caml_solver_dist
															Let tp.4347
																Lfd Ta1224.4354 0
																Let Ta1226.4352
																	SetL min_caml_tmin
																	Let Td1228.4351
																		Lfd Ta1226.4352 0
																		Let Tb1229.4348
																			CallCls min_caml_fless d:f:tp.4347 Td1228.4351 
																			Let Ti1230.4349
																				Li 0
																				Ans
																					IfEq Tb1229.4348 Ti1230.4349
																						Ans
																							Nop
																						Let Ti1231.4350
																							Li 1
																							Ans
																								CallCls solve_one_or_network_fast.2934 d:Ti1231.4350 head.4338 dirvec.2941 f:
									Let Ti1233.4342
										Add ofs.2939 1
										Ans
											CallCls trace_or_matrix_fast.2938 d:Ti1233.4342 or_network.2940 dirvec.2941 f:
judge_intersection_fast.2942 (args) : dirvec.2943 (fargs) : 
	Let Ta1205.4335
		SetL min_caml_tmin
		Let Td1207.4337
			FLi l.6695
			Let Tu121.4322
				Stfd Td1207.4337 Ta1205.4335 0
				Let Ti1208.4331
					Li 0
					Let Ta1209.4333
						SetL min_caml_or_net
						Let Ta1211.4332
							Lwz Ta1209.4333 0
							Let Tu120.4323
								CallCls trace_or_matrix_fast.2938 d:Ti1208.4331 Ta1211.4332 dirvec.2943 f:
								Let Ta1212.4329
									SetL min_caml_tmin
									Let t.4324
										Lfd Ta1212.4329 0
										Let Td1214.4328
											FLi l.6675
											Let Tb1215.4325
												CallCls min_caml_fless d:f:Td1214.4328 t.4324 
												Let Ti1216.4326
													Li 0
													Ans
														IfEq Tb1215.4325 Ti1216.4326
															Ans
																Li 0
															Let Td1217.4327
																FLi l.6699
																Ans
																	CallCls min_caml_fless d:f:t.4324 Td1217.4327 
get_nvector_rect.2944 (args) : dirvec.2945 (fargs) : 
	Let Ta1194.4320
		SetL min_caml_intsec_rectside
		Let rectside.4309
			Lwz Ta1194.4320 0
			Let Ta1196.4319
				SetL min_caml_nvector
				Let Tu122.4310
					CallCls vecbzero.2646 d:Ta1196.4319 f:
					Let Ta1197.4311
						SetL min_caml_nvector
						Let Ti1199.4312
							Sub rectside.4309 1
							Let Ti1201.4316
								Sub rectside.4309 1
								Let o.6723
									Slw Ti1201.4316 3
									Let Td1202.4315
										Lfd dirvec.2945 o.6723
										Let Td1203.4314
											CallCls sgn.2630 d:f:Td1202.4315 
											Let Td1204.4313
												CallCls min_caml_fneg d:f:Td1203.4314 
												Let o.6724
													Slw Ti1199.4312 3
													Ans
														Stfd Td1204.4313 Ta1197.4311 o.6724
get_nvector_plane.2946 (args) : m.2947 (fargs) : 
	Let Ta1182.4305
		SetL min_caml_nvector
		Let Td1184.4308
			CallCls o_param_a.2694 d:m.2947 f:
			Let Td1185.4307
				CallCls min_caml_fneg d:f:Td1184.4308 
				Let Tu124.4295
					Stfd Td1185.4307 Ta1182.4305 0
					Let Ta1186.4301
						SetL min_caml_nvector
						Let Td1188.4304
							CallCls o_param_b.2696 d:m.2947 f:
							Let Td1189.4303
								CallCls min_caml_fneg d:f:Td1188.4304 
								Let Tu123.4296
									Stfd Td1189.4303 Ta1186.4301 8
									Let Ta1190.4297
										SetL min_caml_nvector
										Let Td1192.4300
											CallCls o_param_c.2698 d:m.2947 f:
											Let Td1193.4299
												CallCls min_caml_fneg d:f:Td1192.4300 
												Ans
													Stfd Td1193.4299 Ta1190.4297 16
get_nvector_second.2948 (args) : m.2949 (fargs) : 
	Let Ta1130.4293
		SetL min_caml_intersection_point
		Let Td1132.4291
			Lfd Ta1130.4293 0
			Let Td1133.4292
				CallCls o_param_x.2702 d:m.2949 f:
				Let p0.4232
					FSub Td1132.4291 Td1133.4292
					Let Ta1134.4289
						SetL min_caml_intersection_point
						Let Td1136.4287
							Lfd Ta1134.4289 8
							Let Td1137.4288
								CallCls o_param_y.2704 d:m.2949 f:
								Let p1.4233
									FSub Td1136.4287 Td1137.4288
									Let Ta1138.4285
										SetL min_caml_intersection_point
										Let Td1140.4283
											Lfd Ta1138.4285 16
											Let Td1141.4284
												CallCls o_param_z.2706 d:m.2949 f:
												Let p2.4234
													FSub Td1140.4283 Td1141.4284
													Let Td1142.4282
														CallCls o_param_a.2694 d:m.2949 f:
														Let d0.4235
															FMul p0.4232 Td1142.4282
															Let Td1143.4281
																CallCls o_param_b.2696 d:m.2949 f:
																Let d1.4236
																	FMul p1.4233 Td1143.4281
																	Let Td1144.4280
																		CallCls o_param_c.2698 d:m.2949 f:
																		Let d2.4237
																			FMul p2.4234 Td1144.4280
																			Let Ti1145.4241
																				CallCls o_isrot.2692 d:m.2949 f:
																				Let Ti1146.4242
																					Li 0
																					Let Tu129.4238
																						IfEq Ti1145.4241 Ti1146.4242
																							Let Ta1147.4278
																								SetL min_caml_nvector
																								Let Tu126.4272
																									Stfd d0.4235 Ta1147.4278 0
																									Let Ta1149.4276
																										SetL min_caml_nvector
																										Let Tu125.4273
																											Stfd d1.4236 Ta1149.4276 8
																											Let Ta1151.4274
																												SetL min_caml_nvector
																												Ans
																													Stfd d2.4237 Ta1151.4274 16
																							Let Ta1153.4263
																								SetL min_caml_nvector
																								Let Td1155.4271
																									CallCls o_param_r3.2722 d:m.2949 f:
																									Let Td1156.4268
																										FMul p1.4233 Td1155.4271
																										Let Td1157.4270
																											CallCls o_param_r2.2720 d:m.2949 f:
																											Let Td1158.4269
																												FMul p2.4234 Td1157.4270
																												Let Td1159.4267
																													FAdd Td1156.4268 Td1158.4269
																													Let Td1160.4266
																														CallCls min_caml_fhalf d:f:Td1159.4267 
																														Let Td1161.4265
																															FAdd d0.4235 Td1160.4266
																															Let Tu128.4243
																																Stfd Td1161.4265 Ta1153.4263 0
																																Let Ta1162.4254
																																	SetL min_caml_nvector
																																	Let Td1164.4262
																																		CallCls o_param_r3.2722 d:m.2949 f:
																																		Let Td1165.4259
																																			FMul p0.4232 Td1164.4262
																																			Let Td1166.4261
																																				CallCls o_param_r1.2718 d:m.2949 f:
																																				Let Td1167.4260
																																					FMul p2.4234 Td1166.4261
																																					Let Td1168.4258
																																						FAdd Td1165.4259 Td1167.4260
																																						Let Td1169.4257
																																							CallCls min_caml_fhalf d:f:Td1168.4258 
																																							Let Td1170.4256
																																								FAdd d1.4236 Td1169.4257
																																								Let Tu127.4244
																																									Stfd Td1170.4256 Ta1162.4254 8
																																									Let Ta1171.4245
																																										SetL min_caml_nvector
																																										Let Td1173.4253
																																											CallCls o_param_r2.2720 d:m.2949 f:
																																											Let Td1174.4250
																																												FMul p0.4232 Td1173.4253
																																												Let Td1175.4252
																																													CallCls o_param_r1.2718 d:m.2949 f:
																																													Let Td1176.4251
																																														FMul p1.4233 Td1175.4252
																																														Let Td1177.4249
																																															FAdd Td1174.4250 Td1176.4251
																																															Let Td1178.4248
																																																CallCls min_caml_fhalf d:f:Td1177.4249 
																																																Let Td1179.4247
																																																	FAdd d2.4237 Td1178.4248
																																																	Ans
																																																		Stfd Td1179.4247 Ta1171.4245 16
																						Let Ta1180.4239
																							SetL min_caml_nvector
																							Let Tb1181.4240
																								CallCls o_isinvert.2690 d:m.2949 f:
																								Ans
																									CallCls vecunit_sgn.2656 d:Ta1180.4239 Tb1181.4240 f:
get_nvector.2950 (args) : m.2951 (fargs) : 
	Let m_shape.4229
		CallCls o_form.2686 d:m.2951 f:
		Let Ti1128.4230
			Li 1
			Ans
				IfEq m_shape.4229 Ti1128.4230
					Ans
						CallCls get_nvector_rect.2944 d:dirvec.2952 f:
					Let Ti1129.4231
						Li 2
						Ans
							IfEq m_shape.4229 Ti1129.4231
								Ans
									CallCls get_nvector_plane.2946 d:m.2951 f:
								Ans
									CallCls get_nvector_second.2948 d:m.2951 f:
utexture.2953 (args) : m.2954 (fargs) : 
	Let m_tex.4060
		CallCls o_texturetype.2684 d:m.2954 f:
		Let Ta989.4226
			SetL min_caml_texture_color
			Let Td991.4228
				CallCls o_color_red.2712 d:m.2954 f:
				Let Tu134.4061
					Stfd Td991.4228 Ta989.4226 0
					Let Ta992.4223
						SetL min_caml_texture_color
						Let Td994.4225
							CallCls o_color_green.2714 d:m.2954 f:
							Let Tu133.4062
								Stfd Td994.4225 Ta992.4223 8
								Let Ta995.4220
									SetL min_caml_texture_color
									Let Td997.4222
										CallCls o_color_blue.2716 d:m.2954 f:
										Let Tu132.4063
											Stfd Td997.4222 Ta995.4220 16
											Let Ti998.4064
												Li 1
												Ans
													IfEq m_tex.4060 Ti998.4064
														Let Td1000.4217
															Lfd p.2955 0
															Let Td1001.4218
																CallCls o_param_x.2702 d:m.2954 f:
																Let w1.4190
																	FSub Td1000.4217 Td1001.4218
																	Let Td1002.4216
																		FLi l.6762
																		Let Td1003.4215
																			FMul w1.4190 Td1002.4216
																			Let Td1004.4213
																				CallCls min_caml_floor d:f:Td1003.4215 
																				Let Td1005.4214
																					FLi l.6763
																					Let d1.4210
																						FMul Td1004.4213 Td1005.4214
																						Let Td1006.4211
																							FSub w1.4190 d1.4210
																							Let Td1007.4212
																								FLi l.6754
																								Let flag1.4191
																									CallCls min_caml_fless d:f:Td1006.4211 Td1007.4212 
																									Let Td1009.4207
																										Lfd p.2955 16
																										Let Td1010.4208
																											CallCls o_param_z.2706 d:m.2954 f:
																											Let w3.4192
																												FSub Td1009.4207 Td1010.4208
																												Let Td1011.4206
																													FLi l.6762
																													Let Td1012.4205
																														FMul w3.4192 Td1011.4206
																														Let Td1013.4203
																															CallCls min_caml_floor d:f:Td1012.4205 
																															Let Td1014.4204
																																FLi l.6763
																																Let d2.4200
																																	FMul Td1013.4203 Td1014.4204
																																	Let Td1015.4201
																																		FSub w3.4192 d2.4200
																																		Let Td1016.4202
																																			FLi l.6754
																																			Let flag2.4193
																																				CallCls min_caml_fless d:f:Td1015.4201 Td1016.4202 
																																				Let Ta1017.4194
																																					SetL min_caml_texture_color
																																					Let Ti1019.4197
																																						Li 0
																																						Let Td1022.4196
																																							IfEq flag1.4191 Ti1019.4197
																																								Let Ti1020.4199
																																									Li 0
																																									Ans
																																										IfEq flag2.4193 Ti1020.4199
																																											Ans
																																												FLi l.6749
																																											Ans
																																												FLi l.6345
																																								Let Ti1021.4198
																																									Li 0
																																									Ans
																																										IfEq flag2.4193 Ti1021.4198
																																											Ans
																																												FLi l.6345
																																											Ans
																																												FLi l.6749
																																							Ans
																																								Stfd Td1022.4196 Ta1017.4194 8
														Let Ti1023.4065
															Li 2
															Ans
																IfEq m_tex.4060 Ti1023.4065
																	Let Td1025.4187
																		Lfd p.2955 8
																		Let Td1026.4188
																			FLi l.6758
																			Let Td1027.4186
																				FMul Td1025.4187 Td1026.4188
																				Let Td1028.4185
																					CallCls min_caml_sin d:f:Td1027.4186 
																					Let w2.4173
																						CallCls min_caml_fsqr d:f:Td1028.4185 
																						Let Ta1029.4181
																							SetL min_caml_texture_color
																							Let Td1031.4184
																								FLi l.6749
																								Let Td1032.4183
																									FMul Td1031.4184 w2.4173
																									Let Tu130.4174
																										Stfd Td1032.4183 Ta1029.4181 0
																										Let Ta1033.4175
																											SetL min_caml_texture_color
																											Let Td1035.4178
																												FLi l.6749
																												Let Td1036.4180
																													FLi l.6346
																													Let Td1037.4179
																														FSub Td1036.4180 w2.4173
																														Let Td1038.4177
																															FMul Td1035.4178 Td1037.4179
																															Ans
																																Stfd Td1038.4177 Ta1033.4175 8
																	Let Ti1039.4066
																		Li 3
																		Ans
																			IfEq m_tex.4060 Ti1039.4066
																				Let Td1041.4170
																					Lfd p.2955 0
																					Let Td1042.4171
																						CallCls o_param_x.2702 d:m.2954 f:
																						Let w1.4141
																							FSub Td1041.4170 Td1042.4171
																							Let Td1044.4167
																								Lfd p.2955 16
																								Let Td1045.4168
																									CallCls o_param_z.2706 d:m.2954 f:
																									Let w3.4142
																										FSub Td1044.4167 Td1045.4168
																										Let Td1046.4165
																											CallCls min_caml_fsqr d:f:w1.4141 
																											Let Td1047.4166
																												CallCls min_caml_fsqr d:f:w3.4142 
																												Let Td1048.4164
																													FAdd Td1046.4165 Td1047.4166
																													Let Td1049.4161
																														CallCls min_caml_sqrt d:f:Td1048.4164 
																														Let Td1050.4162
																															FLi l.6754
																															Let Td1051.4163
																																FReciprocal Td1050.4162
																																Let w2.4143
																																	FMul Td1049.4161 Td1051.4163
																																	Let Td1052.4160
																																		CallCls min_caml_floor d:f:w2.4143 
																																		Let Td1053.4158
																																			FSub w2.4143 Td1052.4160
																																			Let Td1054.4159
																																				FLi l.6745
																																				Let w4.4144
																																					FMul Td1053.4158 Td1054.4159
																																					Let Td1055.4157
																																						CallCls min_caml_cos d:f:w4.4144 
																																						Let cws.4145
																																							CallCls min_caml_fsqr d:f:Td1055.4157 
																																							Let Ta1056.4153
																																								SetL min_caml_texture_color
																																								Let Td1058.4156
																																									FLi l.6749
																																									Let Td1059.4155
																																										FMul cws.4145 Td1058.4156
																																										Let Tu131.4146
																																											Stfd Td1059.4155 Ta1056.4153 8
																																											Let Ta1060.4147
																																												SetL min_caml_texture_color
																																												Let Td1062.4152
																																													FLi l.6346
																																													Let Td1063.4150
																																														FSub Td1062.4152 cws.4145
																																														Let Td1064.4151
																																															FLi l.6749
																																															Let Td1065.4149
																																																FMul Td1063.4150 Td1064.4151
																																																Ans
																																																	Stfd Td1065.4149 Ta1060.4147 16
																				Let Ti1066.4067
																					Li 4
																					Ans
																						IfEq m_tex.4060 Ti1066.4067
																							Let Td1068.4138
																								Lfd p.2955 0
																								Let Td1069.4139
																									CallCls o_param_x.2702 d:m.2954 f:
																									Let Td1070.4135
																										FSub Td1068.4138 Td1069.4139
																										Let Td1071.4137
																											CallCls o_param_a.2694 d:m.2954 f:
																											Let Td1072.4136
																												CallCls min_caml_sqrt d:f:Td1071.4137 
																												Let w1.4068
																													FMul Td1070.4135 Td1072.4136
																													Let Td1074.4132
																														Lfd p.2955 16
																														Let Td1075.4133
																															CallCls o_param_z.2706 d:m.2954 f:
																															Let Td1076.4129
																																FSub Td1074.4132 Td1075.4133
																																Let Td1077.4131
																																	CallCls o_param_c.2698 d:m.2954 f:
																																	Let Td1078.4130
																																		CallCls min_caml_sqrt d:f:Td1077.4131 
																																		Let w3.4069
																																			FMul Td1076.4129 Td1078.4130
																																			Let Td1079.4127
																																				CallCls min_caml_fsqr d:f:w1.4068 
																																				Let Td1080.4128
																																					CallCls min_caml_fsqr d:f:w3.4069 
																																					Let w4.4070
																																						FAdd Td1079.4127 Td1080.4128
																																						Let Td1081.4125
																																							CallCls min_caml_fabs d:f:w1.4068 
																																							Let Td1082.4126
																																								FLi l.6742
																																								Let Tb1083.4115
																																									CallCls min_caml_fless d:f:Td1081.4125 Td1082.4126 
																																									Let Ti1084.4116
																																										Li 0
																																										Let w7.4071
																																											IfEq Tb1083.4115 Ti1084.4116
																																												Let Td1085.4124
																																													FReciprocal w1.4068
																																													Let Td1086.4123
																																														FMul w3.4069 Td1085.4124
																																														Let w5.4117
																																															CallCls min_caml_fabs d:f:Td1086.4123 
																																															Let Td1087.4121
																																																CallCls min_caml_atan d:f:w5.4117 
																																																Let Td1088.4122
																																																	FLi l.6744
																																																	Let Td1089.4118
																																																		FMul Td1087.4121 Td1088.4122
																																																		Let Td1090.4119
																																																			FLi l.6745
																																																			Let Td1091.4120
																																																				FReciprocal Td1090.4119
																																																				Ans
																																																					FMul Td1089.4118 Td1091.4120
																																												Ans
																																													FLi l.6743
																																											Let Td1092.4114
																																												CallCls min_caml_floor d:f:w7.4071 
																																												Let w9.4072
																																													FSub w7.4071 Td1092.4114
																																													Let Td1094.4111
																																														Lfd p.2955 8
																																														Let Td1095.4112
																																															CallCls o_param_y.2704 d:m.2954 f:
																																															Let Td1096.4108
																																																FSub Td1094.4111 Td1095.4112
																																																Let Td1097.4110
																																																	CallCls o_param_b.2696 d:m.2954 f:
																																																	Let Td1098.4109
																																																		CallCls min_caml_sqrt d:f:Td1097.4110 
																																																		Let w2.4073
																																																			FMul Td1096.4108 Td1098.4109
																																																			Let Td1099.4106
																																																				CallCls min_caml_fabs d:f:w4.4070 
																																																				Let Td1100.4107
																																																					FLi l.6742
																																																					Let Tb1101.4096
																																																						CallCls min_caml_fless d:f:Td1099.4106 Td1100.4107 
																																																						Let Ti1102.4097
																																																							Li 0
																																																							Let w8.4074
																																																								IfEq Tb1101.4096 Ti1102.4097
																																																									Let Td1103.4105
																																																										FReciprocal w4.4070
																																																										Let Td1104.4104
																																																											FMul w2.4073 Td1103.4105
																																																											Let w6.4098
																																																												CallCls min_caml_fabs d:f:Td1104.4104 
																																																												Let Td1105.4102
																																																													CallCls min_caml_atan d:f:w6.4098 
																																																													Let Td1106.4103
																																																														FLi l.6744
																																																														Let Td1107.4099
																																																															FMul Td1105.4102 Td1106.4103
																																																															Let Td1108.4100
																																																																FLi l.6745
																																																																Let Td1109.4101
																																																																	FReciprocal Td1108.4100
																																																																	Ans
																																																																		FMul Td1107.4099 Td1109.4101
																																																									Ans
																																																										FLi l.6743
																																																								Let Td1110.4095
																																																									CallCls min_caml_floor d:f:w8.4074 
																																																									Let w10.4075
																																																										FSub w8.4074 Td1110.4095
																																																										Let Td1111.4091
																																																											FLi l.6747
																																																											Let Td1112.4094
																																																												FLi l.6748
																																																												Let Td1113.4093
																																																													FSub Td1112.4094 w9.4072
																																																													Let Td1114.4092
																																																														CallCls min_caml_fsqr d:f:Td1113.4093 
																																																														Let Td1115.4087
																																																															FSub Td1111.4091 Td1114.4092
																																																															Let Td1116.4090
																																																																FLi l.6748
																																																																Let Td1117.4089
																																																																	FSub Td1116.4090 w10.4075
																																																																	Let Td1118.4088
																																																																		CallCls min_caml_fsqr d:f:Td1117.4089 
																																																																		Let w11.4076
																																																																			FSub Td1115.4087 Td1118.4088
																																																																			Let Tb1119.4085
																																																																				CallCls min_caml_fisneg d:f:w11.4076 
																																																																				Let Ti1120.4086
																																																																					Li 0
																																																																					Let w12.4077
																																																																						IfEq Tb1119.4085 Ti1120.4086
																																																																							Ans
																																																																								FMr w11.4076
																																																																							Ans
																																																																								FLi l.6345
																																																																						Let Ta1121.4078
																																																																							SetL min_caml_texture_color
																																																																							Let Td1123.4084
																																																																								FLi l.6749
																																																																								Let Td1124.4081
																																																																									FMul Td1123.4084 w12.4077
																																																																									Let Td1125.4082
																																																																										FLi l.6750
																																																																										Let Td1126.4083
																																																																											FReciprocal Td1125.4082
																																																																											Let Td1127.4080
																																																																												FMul Td1124.4081 Td1126.4083
																																																																												Ans
																																																																													Stfd Td1127.4080 Ta1121.4078 16
																							Ans
																								Nop
add_light.2956 (args) : (fargs) : bright.2957 
	Let Tb963.4056
		CallCls min_caml_fispos d:f:bright.2957 
		Let Ti964.4057
			Li 0
			Let Tu137.4030
				IfEq Tb963.4056 Ti964.4057
					Ans
						Nop
					Let Ta965.4058
						SetL min_caml_rgb
						Let Ta966.4059
							SetL min_caml_texture_color
							Ans
								CallCls vecaccum.2667 d:Ta965.4058 Ta966.4059 f:bright.2957 
				Let Tb967.4031
					CallCls min_caml_fispos d:f:hilight.2958 
					Let Ti968.4032
						Li 0
						Ans
							IfEq Tb967.4031 Ti968.4032
								Ans
									Nop
								Let Td969.4055
									CallCls min_caml_fsqr d:f:hilight.2958 
									Let Td970.4054
										CallCls min_caml_fsqr d:f:Td969.4055 
										Let ihl.4033
											FMul Td970.4054 hilight_scale.2959
											Let Ta971.4048
												SetL min_caml_rgb
												Let Ta973.4052
													SetL min_caml_rgb
													Let Td975.4051
														Lfd Ta973.4052 0
														Let Td976.4050
															FAdd Td975.4051 ihl.4033
															Let Tu136.4034
																Stfd Td976.4050 Ta971.4048 0
																Let Ta977.4042
																	SetL min_caml_rgb
																	Let Ta979.4046
																		SetL min_caml_rgb
																		Let Td981.4045
																			Lfd Ta979.4046 8
																			Let Td982.4044
																				FAdd Td981.4045 ihl.4033
																				Let Tu135.4035
																					Stfd Td982.4044 Ta977.4042 8
																					Let Ta983.4036
																						SetL min_caml_rgb
																						Let Ta985.4040
																							SetL min_caml_rgb
																							Let Td987.4039
																								Lfd Ta985.4040 16
																								Let Td988.4038
																									FAdd Td987.4039 ihl.4033
																									Ans
																										Stfd Td988.4038 Ta983.4036 16
trace_reflections.2960 (args) : index.2961 (fargs) : diffuse.2962 
	Let Ti938.3997
		Li 0
		Ans
			IfLE Ti938.3997 index.2961
				Let Ta939.4029
					SetL min_caml_reflections
					Let o.6772
						Slw index.2961 2
						Let rinfo.3998
							Lwz Ta939.4029 o.6772
							Let dvec.3999
								CallCls r_dvec.2751 d:rinfo.3998 f:
								Let Tb940.4003
									CallCls judge_intersection_fast.2942 d:dvec.3999 f:
									Let Ti941.4004
										Li 0
										Let Tu138.4000
											IfEq Tb940.4003 Ti941.4004
												Ans
													Nop
												Let Ta942.4027
													SetL min_caml_intersected_object_id
													Let Ti944.4026
														Lwz Ta942.4027 0
														Let Ti945.4022
															ShiftL2 Ti944.4026
															Let Ta946.4024
																SetL min_caml_intsec_rectside
																Let Ti948.4023
																	Lwz Ta946.4024 0
																	Let surface_id.4005
																		Add Ti945.4022 Ti948.4023
																		Let Ti949.4006
																			CallCls r_surface_id.2749 d:rinfo.3998 f:
																			Ans
																				IfEq surface_id.4005 Ti949.4006
																					Let Ti950.4018
																						Li 0
																						Let Ta951.4020
																							SetL min_caml_or_net
																							Let Ta953.4019
																								Lwz Ta951.4020 0
																								Let Tb954.4007
																									CallCls shadow_check_one_or_matrix.2913 d:Ti950.4018 Ta953.4019 f:
																									Let Ti955.4008
																										Li 0
																										Ans
																											IfEq Tb954.4007 Ti955.4008
																												Let Ta956.4016
																													SetL min_caml_nvector
																													Let Ta957.4017
																														CallCls d_vec.2745 d:dvec.3999 f:
																														Let p.4009
																															CallCls veciprod.2659 d:Ta956.4016 Ta957.4017 f:
																															Let scale.4010
																																CallCls r_bright.2753 d:rinfo.3998 f:
																																Let Td958.4015
																																	FMul scale.4010 diffuse.2962
																																	Let bright.4011
																																		FMul Td958.4015 p.4009
																																		Let Ta959.4014
																																			CallCls d_vec.2745 d:dvec.3999 f:
																																			Let Td960.4013
																																				CallCls veciprod.2659 d:dirvec.2964 Ta959.4014 f:
																																				Let hilight.4012
																																					FMul scale.4010 Td960.4013
																																					Ans
																																						CallCls add_light.2956 d:f:bright.4011 hilight.4012 hilight_scale.2963 
																												Ans
																													Nop
																					Ans
																						Nop
											Let Ti962.4001
												Sub index.2961 1
												Ans
													CallCls trace_reflections.2960 d:Ti962.4001 dirvec.2964 f:diffuse.2962 hilight_scale.2963 
				Ans
					Nop
trace_ray.2965 (args) : nref.2966 (fargs) : energy.2967 
	Let Ti833.3859
		Li 4
		Ans
			IfLE nref.2966 Ti833.3859
				Let surface_ids.3860
					CallCls p_surface_ids.2730 d:pixel.2969 f:
					Let Tb834.3861
						CallCls judge_intersection.2928 d:dirvec.2968 f:
						Let Ti835.3862
							Li 0
							Ans
								IfEq Tb834.3861 Ti835.3862
									Let Ti837.3995
										Li -1
										Let o.6793
											Slw nref.2966 2
											Let Tu155.3961
												Stw Ti837.3995 surface_ids.3860 o.6793
												Let Ti838.3962
													Li 0
													Ans
														IfEq nref.2966 Ti838.3962
															Ans
																Nop
															Let Ta839.3994
																SetL min_caml_light
																Let Td840.3993
																	CallCls veciprod.2659 d:dirvec.2968 Ta839.3994 f:
																	Let hl.3963
																		CallCls min_caml_fneg d:f:Td840.3993 
																		Let Tb841.3964
																			CallCls min_caml_fispos d:f:hl.3963 
																			Let Ti842.3965
																				Li 0
																				Ans
																					IfEq Tb841.3964 Ti842.3965
																						Ans
																							Nop
																						Let Td843.3992
																							CallCls min_caml_fsqr d:f:hl.3963 
																							Let Td844.3991
																								FMul Td843.3992 hl.3963
																								Let Td845.3987
																									FMul Td844.3991 energy.2967
																									Let Ta846.3989
																										SetL min_caml_beam
																										Let Td848.3988
																											Lfd Ta846.3989 0
																											Let ihl.3966
																												FMul Td845.3987 Td848.3988
																												Let Ta849.3981
																													SetL min_caml_rgb
																													Let Ta851.3985
																														SetL min_caml_rgb
																														Let Td853.3984
																															Lfd Ta851.3985 0
																															Let Td854.3983
																																FAdd Td853.3984 ihl.3966
																																Let Tu154.3967
																																	Stfd Td854.3983 Ta849.3981 0
																																	Let Ta855.3975
																																		SetL min_caml_rgb
																																		Let Ta857.3979
																																			SetL min_caml_rgb
																																			Let Td859.3978
																																				Lfd Ta857.3979 8
																																				Let Td860.3977
																																					FAdd Td859.3978 ihl.3966
																																					Let Tu153.3968
																																						Stfd Td860.3977 Ta855.3975 8
																																						Let Ta861.3969
																																							SetL min_caml_rgb
																																							Let Ta863.3973
																																								SetL min_caml_rgb
																																								Let Td865.3972
																																									Lfd Ta863.3973 16
																																									Let Td866.3971
																																										FAdd Td865.3972 ihl.3966
																																										Ans
																																											Stfd Td866.3971 Ta861.3969 16
									Let Ta867.3959
										SetL min_caml_intersected_object_id
										Let obj_id.3863
											Lwz Ta867.3959 0
											Let Ta869.3958
												SetL min_caml_objects
												Let o.6777
													Slw obj_id.3863 2
													Let obj.3864
														Lwz Ta869.3958 o.6777
														Let m_surface.3865
															CallCls o_reflectiontype.2688 d:obj.3864 f:
															Let Td870.3957
																CallCls o_diffuse.2708 d:obj.3864 f:
																Let diffuse.3866
																	FMul Td870.3957 energy.2967
																	Let Tu152.3867
																		CallCls get_nvector.2950 d:obj.3864 dirvec.2968 f:
																		Let Ta871.3955
																			SetL min_caml_startp
																			Let Ta872.3956
																				SetL min_caml_intersection_point
																				Let Tu151.3868
																					CallCls veccpy.2648 d:Ta871.3955 Ta872.3956 f:
																					Let Ta873.3954
																						SetL min_caml_intersection_point
																						Let Tu150.3869
																							CallCls utexture.2953 d:obj.3864 Ta873.3954 f:
																							Let Ti874.3950
																								ShiftL2 obj_id.3863
																								Let Ta875.3952
																									SetL min_caml_intsec_rectside
																									Let Ti877.3951
																										Lwz Ta875.3952 0
																										Let Ti878.3949
																											Add Ti874.3950 Ti877.3951
																											Let o.6779
																												Slw nref.2966 2
																												Let Tu149.3870
																													Stw Ti878.3949 surface_ids.3860 o.6779
																													Let intersection_points.3871
																														CallCls p_intersection_points.2728 d:pixel.2969 f:
																														Let o.6780
																															Slw nref.2966 2
																															Let Ta879.3947
																																Lwz intersection_points.3871 o.6780
																																Let Ta880.3948
																																	SetL min_caml_intersection_point
																																	Let Tu148.3872
																																		CallCls veccpy.2648 d:Ta879.3947 Ta880.3948 f:
																																		Let calc_diffuse.3873
																																			CallCls p_calc_diffuse.2732 d:pixel.2969 f:
																																			Let Td881.3945
																																				CallCls o_diffuse.2708 d:obj.3864 f:
																																				Let Td882.3946
																																					FLi l.6748
																																					Let Tb883.3926
																																						CallCls min_caml_fless d:f:Td881.3945 Td882.3946 
																																						Let Ti884.3927
																																							Li 0
																																							Let Tu147.3874
																																								IfEq Tb883.3926 Ti884.3927
																																									Let Ti885.3944
																																										Li 1
																																										Let o.6782
																																											Slw nref.2966 2
																																											Let Tu141.3929
																																												Stw Ti885.3944 calc_diffuse.3873 o.6782
																																												Let energya.3930
																																													CallCls p_energy.2734 d:pixel.2969 f:
																																													Let o.6783
																																														Slw nref.2966 2
																																														Let Ta886.3942
																																															Lwz energya.3930 o.6783
																																															Let Ta887.3943
																																																SetL min_caml_texture_color
																																																Let Tu140.3931
																																																	CallCls veccpy.2648 d:Ta886.3942 Ta887.3943 f:
																																																	Let o.6784
																																																		Slw nref.2966 2
																																																		Let Ta888.3936
																																																			Lwz energya.3930 o.6784
																																																			Let Td889.3939
																																																				FLi l.6346
																																																				Let Td890.3940
																																																					FLi l.6785
																																																					Let Td891.3941
																																																						FReciprocal Td890.3940
																																																						Let Td892.3938
																																																							FMul Td889.3939 Td891.3941
																																																							Let Td893.3937
																																																								FMul Td892.3938 diffuse.3866
																																																								Let Tu139.3932
																																																									CallCls vecscale.2677 d:Ta888.3936 f:Td893.3937 
																																																									Let nvectors.3933
																																																										CallCls p_nvectors.2743 d:pixel.2969 f:
																																																										Let o.6786
																																																											Slw nref.2966 2
																																																											Let Ta894.3934
																																																												Lwz nvectors.3933 o.6786
																																																												Let Ta895.3935
																																																													SetL min_caml_nvector
																																																													Ans
																																																														CallCls veccpy.2648 d:Ta894.3934 Ta895.3935 f:
																																									Let Ti896.3928
																																										Li 0
																																										Let o.6781
																																											Slw nref.2966 2
																																											Ans
																																												Stw Ti896.3928 calc_diffuse.3873 o.6781
																																								Let Td897.3923
																																									FLi l.6787
																																									Let Ta898.3925
																																										SetL min_caml_nvector
																																										Let Td899.3924
																																											CallCls veciprod.2659 d:dirvec.2968 Ta898.3925 f:
																																											Let w.3875
																																												FMul Td897.3923 Td899.3924
																																												Let Ta900.3922
																																													SetL min_caml_nvector
																																													Let Tu146.3876
																																														CallCls vecaccum.2667 d:dirvec.2968 Ta900.3922 f:w.3875 
																																														Let Td901.3921
																																															CallCls o_hilight.2710 d:obj.3864 f:
																																															Let hilight_scale.3877
																																																FMul energy.2967 Td901.3921
																																																Let Ti902.3917
																																																	Li 0
																																																	Let Ta903.3919
																																																		SetL min_caml_or_net
																																																		Let Ta905.3918
																																																			Lwz Ta903.3919 0
																																																			Let Tb906.3907
																																																				CallCls shadow_check_one_or_matrix.2913 d:Ti902.3917 Ta905.3918 f:
																																																				Let Ti907.3908
																																																					Li 0
																																																					Let Tu145.3878
																																																						IfEq Tb906.3907 Ti907.3908
																																																							Let Ta908.3915
																																																								SetL min_caml_nvector
																																																								Let Ta909.3916
																																																									SetL min_caml_light
																																																									Let Td910.3914
																																																										CallCls veciprod.2659 d:Ta908.3915 Ta909.3916 f:
																																																										Let Td911.3913
																																																											CallCls min_caml_fneg d:f:Td910.3914 
																																																											Let bright.3909
																																																												FMul Td911.3913 diffuse.3866
																																																												Let Ta912.3912
																																																													SetL min_caml_light
																																																													Let Td913.3911
																																																														CallCls veciprod.2659 d:dirvec.2968 Ta912.3912 f:
																																																														Let hilight.3910
																																																															CallCls min_caml_fneg d:f:Td913.3911 
																																																															Ans
																																																																CallCls add_light.2956 d:f:bright.3909 hilight.3910 hilight_scale.3877 
																																																							Ans
																																																								Nop
																																																						Let Ta914.3906
																																																							SetL min_caml_intersection_point
																																																							Let Tu144.3879
																																																								CallCls setup_startp.2879 d:Ta914.3906 f:
																																																								Let Ta915.3904
																																																									SetL min_caml_n_reflections
																																																									Let Ti917.3902
																																																										Lwz Ta915.3904 0
																																																										Let Ti919.3901
																																																											Sub Ti917.3902 1
																																																											Let Tu143.3880
																																																												CallCls trace_reflections.2960 d:Ti919.3901 dirvec.2968 f:diffuse.3866 hilight_scale.3877 
																																																												Let Td920.3900
																																																													FLi l.6790
																																																													Let Tb921.3881
																																																														CallCls min_caml_fless d:f:Td920.3900 energy.2967 
																																																														Let Ti922.3882
																																																															Li 0
																																																															Ans
																																																																IfEq Tb921.3881 Ti922.3882
																																																																	Ans
																																																																		Nop
																																																																	Let Ti923.3895
																																																																		Li 4
																																																																		Let Tu142.3883
																																																																			IfLE Ti923.3895 nref.2966
																																																																				Ans
																																																																					Nop
																																																																				Let Ti925.3896
																																																																					Add nref.2966 1
																																																																					Let Ti927.3897
																																																																						Li -1
																																																																						Let o.6791
																																																																							Slw Ti925.3896 2
																																																																							Ans
																																																																								Stw Ti927.3897 surface_ids.3860 o.6791
																																																																			Let Ti928.3884
																																																																				Li 2
																																																																				Ans
																																																																					IfEq m_surface.3865 Ti928.3884
																																																																						Let Td929.3893
																																																																							FLi l.6346
																																																																							Let Td930.3894
																																																																								CallCls o_diffuse.2708 d:obj.3864 f:
																																																																								Let Td931.3892
																																																																									FSub Td929.3893 Td930.3894
																																																																									Let energy2.3885
																																																																										FMul energy.2967 Td931.3892
																																																																										Let Ti933.3886
																																																																											Add nref.2966 1
																																																																											Let Ta934.3889
																																																																												SetL min_caml_tmin
																																																																												Let Td936.3888
																																																																													Lfd Ta934.3889 0
																																																																													Let Td937.3887
																																																																														FAdd dist.2970 Td936.3888
																																																																														Ans
																																																																															CallCls trace_ray.2965 d:Ti933.3886 dirvec.2968 pixel.2969 f:energy2.3885 Td937.3887 
																																																																						Ans
																																																																							Nop
				Ans
					Nop
trace_diffuse_ray.2971 (args) : dirvec.2972 (fargs) : energy.2973 
	Let Tb809.3830
		CallCls judge_intersection_fast.2942 d:dirvec.2972 f:
		Let Ti810.3831
			Li 0
			Ans
				IfEq Tb809.3830 Ti810.3831
					Ans
						Nop
					Let Ta811.3855
						SetL min_caml_objects
						Let Ta812.3857
							SetL min_caml_intersected_object_id
							Let Ti814.3856
								Lwz Ta812.3857 0
								Let o.6802
									Slw Ti814.3856 2
									Let obj.3832
										Lwz Ta811.3855 o.6802
										Let Ta815.3854
											CallCls d_vec.2745 d:dirvec.2972 f:
											Let Tu157.3833
												CallCls get_nvector.2950 d:obj.3832 Ta815.3854 f:
												Let Ta816.3853
													SetL min_caml_intersection_point
													Let Tu156.3834
														CallCls utexture.2953 d:obj.3832 Ta816.3853 f:
														Let Ti817.3849
															Li 0
															Let Ta818.3851
																SetL min_caml_or_net
																Let Ta820.3850
																	Lwz Ta818.3851 0
																	Let Tb821.3835
																		CallCls shadow_check_one_or_matrix.2913 d:Ti817.3849 Ta820.3850 f:
																		Let Ti822.3836
																			Li 0
																			Ans
																				IfEq Tb821.3835 Ti822.3836
																					Let Ta823.3847
																						SetL min_caml_nvector
																						Let Ta824.3848
																							SetL min_caml_light
																							Let Td825.3846
																								CallCls veciprod.2659 d:Ta823.3847 Ta824.3848 f:
																								Let br.3837
																									CallCls min_caml_fneg d:f:Td825.3846 
																									Let Tb826.3844
																										CallCls min_caml_fispos d:f:br.3837 
																										Let Ti827.3845
																											Li 0
																											Let bright.3838
																												IfEq Tb826.3844 Ti827.3845
																													Ans
																														FLi l.6345
																													Ans
																														FMr br.3837
																												Let Ta828.3839
																													SetL min_caml_diffuse_ray
																													Let Td829.3842
																														FMul energy.2973 bright.3838
																														Let Td830.3843
																															CallCls o_diffuse.2708 d:obj.3832 f:
																															Let Td831.3840
																																FMul Td829.3842 Td830.3843
																																Let Ta832.3841
																																	SetL min_caml_texture_color
																																	Ans
																																		CallCls vecaccum.2667 d:Ta828.3839 Ta832.3841 f:Td831.3840 
																					Ans
																						Nop
iter_trace_diffuse_rays.2974 (args) : dirvec_group.2975 (fargs) : 
	Let Ti792.3811
		Li 0
		Ans
			IfLE Ti792.3811 index.2978
				Let o.6804
					Slw index.2978 2
					Let Tt793.3829
						Lwz dirvec_group.2975 o.6804
						Let Ta794.3828
							CallCls d_vec.2745 d:Tt793.3829 f:
							Let p.3812
								CallCls veciprod.2659 d:Ta794.3828 nvector.2976 f:
								Let Tb795.3816
									CallCls min_caml_fisneg d:f:p.3812 
									Let Ti796.3817
										Li 0
										Let Tu158.3813
											IfEq Tb795.3816 Ti796.3817
												Let o.6807
													Slw index.2978 2
													Let Tt797.3824
														Lwz dirvec_group.2975 o.6807
														Let Td798.3826
															FLi l.6808
															Let Td799.3827
																FReciprocal Td798.3826
																Let Td800.3825
																	FMul p.3812 Td799.3827
																	Ans
																		CallCls trace_diffuse_ray.2971 d:Tt797.3824 f:Td800.3825 
												Let Ti802.3822
													Add index.2978 1
													Let o.6805
														Slw Ti802.3822 2
														Let Tt803.3818
															Lwz dirvec_group.2975 o.6805
															Let Td804.3820
																FLi l.6806
																Let Td805.3821
																	FReciprocal Td804.3820
																	Let Td806.3819
																		FMul p.3812 Td805.3821
																		Ans
																			CallCls trace_diffuse_ray.2971 d:Tt803.3818 f:Td806.3819 
											Let Ti808.3814
												Sub index.2978 2
												Ans
													CallCls iter_trace_diffuse_rays.2974 d:dirvec_group.2975 nvector.2976 org.2977 Ti808.3814 f:
				Ans
					Nop
trace_diffuse_rays.2979 (args) : dirvec_group.2980 (fargs) : 
	Let Tu159.3809
		CallCls setup_startp.2879 d:org.2982 f:
		Let Ti791.3810
			Li 118
			Ans
				CallCls iter_trace_diffuse_rays.2974 d:dirvec_group.2980 nvector.2981 org.2982 Ti791.3810 f:
trace_diffuse_ray_80percent.2983 (args) : group_id.2984 (fargs) : 
	Let Ti771.3805
		Li 0
		Let Tu163.3785
			IfEq group_id.2984 Ti771.3805
				Ans
					Nop
				Let Ta772.3807
					SetL min_caml_dirvecs
					Let Ta774.3806
						Lwz Ta772.3807 0
						Ans
							CallCls trace_diffuse_rays.2979 d:Ta774.3806 nvector.2985 org.2986 f:
			Let Ti775.3801
				Li 1
				Let Tu162.3786
					IfEq group_id.2984 Ti775.3801
						Ans
							Nop
						Let Ta776.3803
							SetL min_caml_dirvecs
							Let Ta778.3802
								Lwz Ta776.3803 4
								Ans
									CallCls trace_diffuse_rays.2979 d:Ta778.3802 nvector.2985 org.2986 f:
					Let Ti779.3797
						Li 2
						Let Tu161.3787
							IfEq group_id.2984 Ti779.3797
								Ans
									Nop
								Let Ta780.3799
									SetL min_caml_dirvecs
									Let Ta782.3798
										Lwz Ta780.3799 8
										Ans
											CallCls trace_diffuse_rays.2979 d:Ta782.3798 nvector.2985 org.2986 f:
							Let Ti783.3793
								Li 3
								Let Tu160.3788
									IfEq group_id.2984 Ti783.3793
										Ans
											Nop
										Let Ta784.3795
											SetL min_caml_dirvecs
											Let Ta786.3794
												Lwz Ta784.3795 12
												Ans
													CallCls trace_diffuse_rays.2979 d:Ta786.3794 nvector.2985 org.2986 f:
									Let Ti787.3789
										Li 4
										Ans
											IfEq group_id.2984 Ti787.3789
												Ans
													Nop
												Let Ta788.3791
													SetL min_caml_dirvecs
													Let Ta790.3790
														Lwz Ta788.3791 16
														Ans
															CallCls trace_diffuse_rays.2979 d:Ta790.3790 nvector.2985 org.2986 f:
calc_diffuse_using_1point.2987 (args) : pixel.2988 (fargs) : 
	Let ray20p.3771
		CallCls p_received_ray_20percent.2736 d:pixel.2988 f:
		Let nvectors.3772
			CallCls p_nvectors.2743 d:pixel.2988 f:
			Let intersection_points.3773
				CallCls p_intersection_points.2728 d:pixel.2988 f:
				Let energya.3774
					CallCls p_energy.2734 d:pixel.2988 f:
					Let Ta763.3783
						SetL min_caml_diffuse_ray
						Let o.6814
							Slw nref.2989 2
							Let Ta764.3784
								Lwz ray20p.3771 o.6814
								Let Tu165.3775
									CallCls veccpy.2648 d:Ta763.3783 Ta764.3784 f:
									Let Ti765.3780
										CallCls p_group_id.2738 d:pixel.2988 f:
										Let o.6815
											Slw nref.2989 2
											Let Ta766.3781
												Lwz nvectors.3772 o.6815
												Let o.6816
													Slw nref.2989 2
													Let Ta767.3782
														Lwz intersection_points.3773 o.6816
														Let Tu164.3776
															CallCls trace_diffuse_ray_80percent.2983 d:Ti765.3780 Ta766.3781 Ta767.3782 f:
															Let Ta768.3777
																SetL min_caml_rgb
																Let o.6817
																	Slw nref.2989 2
																	Let Ta769.3778
																		Lwz energya.3774 o.6817
																		Let Ta770.3779
																			SetL min_caml_diffuse_ray
																			Ans
																				CallCls vecaccumv.2680 d:Ta768.3777 Ta769.3778 Ta770.3779 f:
calc_diffuse_using_5points.2990 (args) : x.2991 (fargs) : 
	Let o.6818
		Slw x.2991 2
		Let Tt740.3770
			Lwz prev.2992 o.6818
			Let r_up.3737
				CallCls p_received_ray_20percent.2736 d:Tt740.3770 f:
				Let Ti742.3768
					Sub x.2991 1
					Let o.6819
						Slw Ti742.3768 2
						Let Tt743.3767
							Lwz cur.2993 o.6819
							Let r_left.3738
								CallCls p_received_ray_20percent.2736 d:Tt743.3767 f:
								Let o.6820
									Slw x.2991 2
									Let Tt744.3766
										Lwz cur.2993 o.6820
										Let r_center.3739
											CallCls p_received_ray_20percent.2736 d:Tt744.3766 f:
											Let Ti746.3764
												Add x.2991 1
												Let o.6821
													Slw Ti746.3764 2
													Let Tt747.3763
														Lwz cur.2993 o.6821
														Let r_right.3740
															CallCls p_received_ray_20percent.2736 d:Tt747.3763 f:
															Let o.6822
																Slw x.2991 2
																Let Tt748.3762
																	Lwz next.2994 o.6822
																	Let r_down.3741
																		CallCls p_received_ray_20percent.2736 d:Tt748.3762 f:
																		Let Ta749.3760
																			SetL min_caml_diffuse_ray
																			Let o.6823
																				Slw nref.2995 2
																				Let Ta750.3761
																					Lwz r_up.3737 o.6823
																					Let Tu170.3742
																						CallCls veccpy.2648 d:Ta749.3760 Ta750.3761 f:
																						Let Ta751.3758
																							SetL min_caml_diffuse_ray
																							Let o.6824
																								Slw nref.2995 2
																								Let Ta752.3759
																									Lwz r_left.3738 o.6824
																									Let Tu169.3743
																										CallCls vecadd.2671 d:Ta751.3758 Ta752.3759 f:
																										Let Ta753.3756
																											SetL min_caml_diffuse_ray
																											Let o.6825
																												Slw nref.2995 2
																												Let Ta754.3757
																													Lwz r_center.3739 o.6825
																													Let Tu168.3744
																														CallCls vecadd.2671 d:Ta753.3756 Ta754.3757 f:
																														Let Ta755.3754
																															SetL min_caml_diffuse_ray
																															Let o.6826
																																Slw nref.2995 2
																																Let Ta756.3755
																																	Lwz r_right.3740 o.6826
																																	Let Tu167.3745
																																		CallCls vecadd.2671 d:Ta755.3754 Ta756.3755 f:
																																		Let Ta757.3752
																																			SetL min_caml_diffuse_ray
																																			Let o.6827
																																				Slw nref.2995 2
																																				Let Ta758.3753
																																					Lwz r_down.3741 o.6827
																																					Let Tu166.3746
																																						CallCls vecadd.2671 d:Ta757.3752 Ta758.3753 f:
																																						Let o.6828
																																							Slw x.2991 2
																																							Let Tt759.3751
																																								Lwz cur.2993 o.6828
																																								Let energya.3747
																																									CallCls p_energy.2734 d:Tt759.3751 f:
																																									Let Ta760.3748
																																										SetL min_caml_rgb
																																										Let o.6829
																																											Slw nref.2995 2
																																											Let Ta761.3749
																																												Lwz energya.3747 o.6829
																																												Let Ta762.3750
																																													SetL min_caml_diffuse_ray
																																													Ans
																																														CallCls vecaccumv.2680 d:Ta760.3748 Ta761.3749 Ta762.3750 f:
do_without_neighbors.2996 (args) : pixel.2997 (fargs) : 
	Let Ti733.3727
		Li 4
		Ans
			IfLE nref.2998 Ti733.3727
				Let surface_ids.3728
					CallCls p_surface_ids.2730 d:pixel.2997 f:
					Let Ti734.3729
						Li 0
						Let o.6830
							Slw nref.2998 2
							Let Ti735.3730
								Lwz surface_ids.3728 o.6830
								Ans
									IfLE Ti734.3729 Ti735.3730
										Let calc_diffuse.3731
											CallCls p_calc_diffuse.2732 d:pixel.2997 f:
											Let o.6831
												Slw nref.2998 2
												Let Tb736.3735
													Lwz calc_diffuse.3731 o.6831
													Let Ti737.3736
														Li 0
														Let Tu171.3732
															IfEq Tb736.3735 Ti737.3736
																Ans
																	Nop
																Ans
																	CallCls calc_diffuse_using_1point.2987 d:pixel.2997 nref.2998 f:
															Let Ti739.3733
																Add nref.2998 1
																Ans
																	CallCls do_without_neighbors.2996 d:pixel.2997 Ti739.3733 f:
										Ans
											Nop
				Ans
					Nop
neighbors_exist.2999 (args) : x.3000 (fargs) : 
	Let Ta721.3725
		SetL min_caml_image_size
		Let Ti723.3715
			Lwz Ta721.3725 4
			Let Ti725.3716
				Add y.3001 1
				Ans
					IfLE Ti723.3715 Ti725.3716
						Ans
							Li 0
						Let Ti726.3717
							Li 0
							Ans
								IfLE y.3001 Ti726.3717
									Ans
										Li 0
									Let Ta727.3722
										SetL min_caml_image_size
										Let Ti729.3718
											Lwz Ta727.3722 0
											Let Ti731.3719
												Add x.3000 1
												Ans
													IfLE Ti729.3718 Ti731.3719
														Ans
															Li 0
														Let Ti732.3720
															Li 0
															Ans
																IfLE x.3000 Ti732.3720
																	Ans
																		Li 0
																	Ans
																		Li 1
get_surface_id.3003 (args) : pixel.3004 (fargs) : 
	Let surface_ids.3714
		CallCls p_surface_ids.2730 d:pixel.3004 f:
		Let o.6834
			Slw index.3005 2
			Ans
				Lwz surface_ids.3714 o.6834
neighbors_are_available.3006 (args) : x.3007 (fargs) : 
	Let o.6835
		Slw x.3007 2
		Let Tt708.3713
			Lwz cur.3009 o.6835
			Let sid_center.3700
				CallCls get_surface_id.3003 d:Tt708.3713 nref.3011 f:
				Let o.6836
					Slw x.3007 2
					Let Tt709.3712
						Lwz prev.3008 o.6836
						Let Ti710.3701
							CallCls get_surface_id.3003 d:Tt709.3712 nref.3011 f:
							Ans
								IfEq Ti710.3701 sid_center.3700
									Let o.6837
										Slw x.3007 2
										Let Tt711.3711
											Lwz next.3010 o.6837
											Let Ti712.3702
												CallCls get_surface_id.3003 d:Tt711.3711 nref.3011 f:
												Ans
													IfEq Ti712.3702 sid_center.3700
														Let Ti714.3709
															Sub x.3007 1
															Let o.6838
																Slw Ti714.3709 2
																Let Tt715.3708
																	Lwz cur.3009 o.6838
																	Let Ti716.3703
																		CallCls get_surface_id.3003 d:Tt715.3708 nref.3011 f:
																		Ans
																			IfEq Ti716.3703 sid_center.3700
																				Let Ti718.3706
																					Add x.3007 1
																					Let o.6839
																						Slw Ti718.3706 2
																						Let Tt719.3705
																							Lwz cur.3009 o.6839
																							Let Ti720.3704
																								CallCls get_surface_id.3003 d:Tt719.3705 nref.3011 f:
																								Ans
																									IfEq Ti720.3704 sid_center.3700
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
try_exploit_neighbors.3012 (args) : x.3013 (fargs) : 
	Let o.6840
		Slw x.3013 2
		Let pixel.3687
			Lwz cur.3016 o.6840
			Let Ti698.3688
				Li 4
				Ans
					IfLE nref.3018 Ti698.3688
						Let Ti699.3689
							Li 0
							Let Ti700.3690
								CallCls get_surface_id.3003 d:pixel.3687 nref.3018 f:
								Ans
									IfLE Ti699.3689 Ti700.3690
										Let Tb701.3691
											CallCls neighbors_are_available.3006 d:x.3013 prev.3015 cur.3016 next.3017 nref.3018 f:
											Let Ti702.3692
												Li 0
												Ans
													IfEq Tb701.3691 Ti702.3692
														Let o.6842
															Slw x.3013 2
															Let Tt703.3699
																Lwz cur.3016 o.6842
																Ans
																	CallCls do_without_neighbors.2996 d:Tt703.3699 nref.3018 f:
														Let calc_diffuse.3693
															CallCls p_calc_diffuse.2732 d:pixel.3687 f:
															Let o.6841
																Slw nref.3018 2
																Let Tb704.3697
																	Lwz calc_diffuse.3693 o.6841
																	Let Ti705.3698
																		Li 0
																		Let Tu172.3694
																			IfEq Tb704.3697 Ti705.3698
																				Ans
																					Nop
																				Ans
																					CallCls calc_diffuse_using_5points.2990 d:x.3013 prev.3015 cur.3016 next.3017 nref.3018 f:
																			Let Ti707.3695
																				Add nref.3018 1
																				Ans
																					CallCls try_exploit_neighbors.3012 d:x.3013 y.3014 prev.3015 cur.3016 next.3017 Ti707.3695 f:
										Ans
											Nop
						Ans
							Nop
write_ppm_header.3019 (args) : (fargs) : 
	Let Ti683.3686
		Li 80
		Let Tu181.3664
			CallCls min_caml_print_char d:Ti683.3686 f:
			Let Ti686.3683
				Li 51
				Let Tu180.3665
					CallCls min_caml_print_char d:Ti686.3683 f:
					Let Ti687.3682
						Li 10
						Let Tu179.3666
							CallCls min_caml_print_char d:Ti687.3682 f:
							Let Ta688.3680
								SetL min_caml_image_size
								Let Ti690.3679
									Lwz Ta688.3680 0
									Let Tu178.3667
										CallCls min_caml_print_int d:Ti690.3679 f:
										Let Ti691.3678
											Li 32
											Let Tu177.3668
												CallCls min_caml_print_char d:Ti691.3678 f:
												Let Ta692.3676
													SetL min_caml_image_size
													Let Ti694.3675
														Lwz Ta692.3676 4
														Let Tu176.3669
															CallCls min_caml_print_int d:Ti694.3675 f:
															Let Ti695.3674
																Li 32
																Let Tu175.3670
																	CallCls min_caml_print_char d:Ti695.3674 f:
																	Let Ti696.3673
																		Li 255
																		Let Tu174.3671
																			CallCls min_caml_print_int d:Ti696.3673 f:
																			Let Ti697.3672
																				Li 10
																				Ans
																					CallCls min_caml_print_char d:Ti697.3672 f:
write_rgb_element.3021 (args) : (fargs) : x.3022 
	Let ix.3660
		CallCls min_caml_int_of_float d:f:x.3022 
		Let Ti681.3662
			Li 255
			Let elem.3661
				IfLE ix.3660 Ti681.3662
					Let Ti682.3663
						Li 0
						Ans
							IfLE Ti682.3663 ix.3660
								Ans
									Mr ix.3660
								Ans
									Li 0
					Ans
						Li 255
				Ans
					CallCls min_caml_print_int d:elem.3661 f:
write_rgb.3023 (args) : (fargs) : 
	Let Ta669.3658
		SetL min_caml_rgb
		Let Td671.3657
			Lfd Ta669.3658 0
			Let Tu187.3643
				CallCls write_rgb_element.3021 d:f:Td671.3657 
				Let Ti672.3656
					Li 32
					Let Tu186.3644
						CallCls min_caml_print_char d:Ti672.3656 f:
						Let Ta673.3654
							SetL min_caml_rgb
							Let Td675.3653
								Lfd Ta673.3654 8
								Let Tu185.3645
									CallCls write_rgb_element.3021 d:f:Td675.3653 
									Let Ti676.3652
										Li 32
										Let Tu184.3646
											CallCls min_caml_print_char d:Ti676.3652 f:
											Let Ta677.3650
												SetL min_caml_rgb
												Let Td679.3649
													Lfd Ta677.3650 16
													Let Tu183.3647
														CallCls write_rgb_element.3021 d:f:Td679.3649 
														Let Ti680.3648
															Li 10
															Ans
																CallCls min_caml_print_char d:Ti680.3648 f:
pretrace_diffuse_rays.3025 (args) : pixel.3026 (fargs) : 
	Let Ti656.3621
		Li 4
		Ans
			IfLE nref.3027 Ti656.3621
				Let sid.3622
					CallCls get_surface_id.3003 d:pixel.3026 nref.3027 f:
					Let Ti657.3623
						Li 0
						Ans
							IfLE Ti657.3623 sid.3622
								Let calc_diffuse.3624
									CallCls p_calc_diffuse.2732 d:pixel.3026 f:
									Let o.6848
										Slw nref.3027 2
										Let Tb658.3628
											Lwz calc_diffuse.3624 o.6848
											Let Ti659.3629
												Li 0
												Let Tu190.3625
													IfEq Tb658.3628 Ti659.3629
														Ans
															Nop
														Let group_id.3630
															CallCls p_group_id.2738 d:pixel.3026 f:
															Let Ta660.3642
																SetL min_caml_diffuse_ray
																Let Tu189.3631
																	CallCls vecbzero.2646 d:Ta660.3642 f:
																	Let nvectors.3632
																		CallCls p_nvectors.2743 d:pixel.3026 f:
																		Let intersection_points.3633
																			CallCls p_intersection_points.2728 d:pixel.3026 f:
																			Let Ta661.3641
																				SetL min_caml_dirvecs
																				Let o.6849
																					Slw group_id.3630 2
																					Let Ta662.3638
																						Lwz Ta661.3641 o.6849
																						Let o.6850
																							Slw nref.3027 2
																							Let Ta663.3639
																								Lwz nvectors.3632 o.6850
																								Let o.6851
																									Slw nref.3027 2
																									Let Ta664.3640
																										Lwz intersection_points.3633 o.6851
																										Let Tu188.3634
																											CallCls trace_diffuse_rays.2979 d:Ta662.3638 Ta663.3639 Ta664.3640 f:
																											Let ray20p.3635
																												CallCls p_received_ray_20percent.2736 d:pixel.3026 f:
																												Let o.6852
																													Slw nref.3027 2
																													Let Ta665.3636
																														Lwz ray20p.3635 o.6852
																														Let Ta666.3637
																															SetL min_caml_diffuse_ray
																															Ans
																																CallCls veccpy.2648 d:Ta665.3636 Ta666.3637 f:
													Let Ti668.3626
														Add nref.3027 1
														Ans
															CallCls pretrace_diffuse_rays.3025 d:pixel.3026 Ti668.3626 f:
								Ans
									Nop
				Ans
					Nop
pretrace_pixels.3028 (args) : line.3029 (fargs) : lc0.3032 
	Let Ti606.3560
		Li 0
		Ans
			IfLE Ti606.3560 x.3030
				Let Ta607.3619
					SetL min_caml_scan_pitch
					Let Td609.3613
						Lfd Ta607.3619 0
						Let Ta610.3617
							SetL min_caml_image_center
							Let Ti612.3616
								Lwz Ta610.3617 0
								Let Ti613.3615
									Sub x.3030 Ti612.3616
									Let Td614.3614
										CallCls min_caml_float_of_int d:Ti613.3615 f:
										Let xdisp.3561
											FMul Td609.3613 Td614.3614
											Let Ta615.3606
												SetL min_caml_ptrace_dirvec
												Let Ta617.3611
													SetL min_caml_screenx_dir
													Let Td619.3610
														Lfd Ta617.3611 0
														Let Td620.3609
															FMul xdisp.3561 Td619.3610
															Let Td621.3608
																FAdd Td620.3609 lc0.3032
																Let Tu200.3562
																	Stfd Td621.3608 Ta615.3606 0
																	Let Ta622.3599
																		SetL min_caml_ptrace_dirvec
																		Let Ta624.3604
																			SetL min_caml_screenx_dir
																			Let Td626.3603
																				Lfd Ta624.3604 8
																				Let Td627.3602
																					FMul xdisp.3561 Td626.3603
																					Let Td628.3601
																						FAdd Td627.3602 lc1.3033
																						Let Tu199.3563
																							Stfd Td628.3601 Ta622.3599 8
																							Let Ta629.3592
																								SetL min_caml_ptrace_dirvec
																								Let Ta631.3597
																									SetL min_caml_screenx_dir
																									Let Td633.3596
																										Lfd Ta631.3597 16
																										Let Td634.3595
																											FMul xdisp.3561 Td633.3596
																											Let Td635.3594
																												FAdd Td634.3595 lc2.3034
																												Let Tu198.3564
																													Stfd Td635.3594 Ta629.3592 16
																													Let Ta636.3590
																														SetL min_caml_ptrace_dirvec
																														Let Ti637.3591
																															Li 0
																															Let Tu197.3565
																																CallCls vecunit_sgn.2656 d:Ta636.3590 Ti637.3591 f:
																																Let Ta638.3589
																																	SetL min_caml_rgb
																																	Let Tu196.3566
																																		CallCls vecbzero.2646 d:Ta638.3589 f:
																																		Let Ta639.3587
																																			SetL min_caml_startp
																																			Let Ta640.3588
																																				SetL min_caml_viewpoint
																																				Let Tu195.3567
																																					CallCls veccpy.2648 d:Ta639.3587 Ta640.3588 f:
																																					Let Ti641.3582
																																						Li 0
																																						Let Td642.3583
																																							FLi l.6346
																																							Let Ta643.3584
																																								SetL min_caml_ptrace_dirvec
																																								Let o.6861
																																									Slw x.3030 2
																																									Let Tt644.3585
																																										Lwz line.3029 o.6861
																																										Let Td645.3586
																																											FLi l.6345
																																											Let Tu194.3568
																																												CallCls trace_ray.2965 d:Ti641.3582 Ta643.3584 Tt644.3585 f:Td642.3583 Td645.3586 
																																												Let o.6862
																																													Slw x.3030 2
																																													Let Tt646.3581
																																														Lwz line.3029 o.6862
																																														Let Ta647.3579
																																															CallCls p_rgb.2726 d:Tt646.3581 f:
																																															Let Ta648.3580
																																																SetL min_caml_rgb
																																																Let Tu193.3569
																																																	CallCls veccpy.2648 d:Ta647.3579 Ta648.3580 f:
																																																	Let o.6863
																																																		Slw x.3030 2
																																																		Let Tt649.3578
																																																			Lwz line.3029 o.6863
																																																			Let Tu192.3570
																																																				CallCls p_set_group_id.2740 d:Tt649.3578 group_id.3031 f:
																																																				Let o.6864
																																																					Slw x.3030 2
																																																					Let Tt650.3576
																																																						Lwz line.3029 o.6864
																																																						Let Ti651.3577
																																																							Li 0
																																																							Let Tu191.3571
																																																								CallCls pretrace_diffuse_rays.3025 d:Tt650.3576 Ti651.3577 f:
																																																								Let Ti653.3572
																																																									Sub x.3030 1
																																																									Let Ti654.3574
																																																										Li 1
																																																										Let Ti655.3573
																																																											CallCls add_mod5.2635 d:group_id.3031 Ti654.3574 f:
																																																											Ans
																																																												CallCls pretrace_pixels.3028 d:line.3029 Ti653.3572 Ti655.3573 f:lc0.3032 lc1.3033 lc2.3034 
				Ans
					Nop
pretrace_line.3035 (args) : line.3036 (fargs) : 
	Let Ta572.3558
		SetL min_caml_scan_pitch
		Let Td574.3552
			Lfd Ta572.3558 0
			Let Ta575.3556
				SetL min_caml_image_center
				Let Ti577.3555
					Lwz Ta575.3556 4
					Let Ti578.3554
						Sub y.3037 Ti577.3555
						Let Td579.3553
							CallCls min_caml_float_of_int d:Ti578.3554 f:
							Let ydisp.3522
								FMul Td574.3552 Td579.3553
								Let Ta580.3550
									SetL min_caml_screeny_dir
									Let Td582.3549
										Lfd Ta580.3550 0
										Let Td583.3545
											FMul ydisp.3522 Td582.3549
											Let Ta584.3547
												SetL min_caml_screenz_dir
												Let Td586.3546
													Lfd Ta584.3547 0
													Let lc0.3523
														FAdd Td583.3545 Td586.3546
														Let Ta587.3543
															SetL min_caml_screeny_dir
															Let Td589.3542
																Lfd Ta587.3543 8
																Let Td590.3538
																	FMul ydisp.3522 Td589.3542
																	Let Ta591.3540
																		SetL min_caml_screenz_dir
																		Let Td593.3539
																			Lfd Ta591.3540 8
																			Let lc1.3524
																				FAdd Td590.3538 Td593.3539
																				Let Ta594.3536
																					SetL min_caml_screeny_dir
																					Let Td596.3535
																						Lfd Ta594.3536 16
																						Let Td597.3531
																							FMul ydisp.3522 Td596.3535
																							Let Ta598.3533
																								SetL min_caml_screenz_dir
																								Let Td600.3532
																									Lfd Ta598.3533 16
																									Let lc2.3525
																										FAdd Td597.3531 Td600.3532
																										Let Ta601.3529
																											SetL min_caml_image_size
																											Let Ti603.3527
																												Lwz Ta601.3529 0
																												Let Ti605.3526
																													Sub Ti603.3527 1
																													Ans
																														CallCls pretrace_pixels.3028 d:line.3036 Ti605.3526 group_id.3038 f:lc0.3523 lc1.3524 lc2.3525 
scan_pixel.3039 (args) : x.3040 (fargs) : 
	Let Ta558.3520
		SetL min_caml_image_size
		Let Ti560.3505
			Lwz Ta558.3520 0
			Ans
				IfLE Ti560.3505 x.3040
					Ans
						Nop
					Let Ta561.3517
						SetL min_caml_rgb
						Let o.6875
							Slw x.3040 2
							Let Tt562.3519
								Lwz cur.3043 o.6875
								Let Ta563.3518
									CallCls p_rgb.2726 d:Tt562.3519 f:
									Let Tu203.3506
										CallCls veccpy.2648 d:Ta561.3517 Ta563.3518 f:
										Let Tb564.3512
											CallCls neighbors_exist.2999 d:x.3040 y.3041 next.3044 f:
											Let Ti565.3513
												Li 0
												Let Tu202.3507
													IfEq Tb564.3512 Ti565.3513
														Let o.6876
															Slw x.3040 2
															Let Tt566.3515
																Lwz cur.3043 o.6876
																Let Ti567.3516
																	Li 0
																	Ans
																		CallCls do_without_neighbors.2996 d:Tt566.3515 Ti567.3516 f:
														Let Ti568.3514
															Li 0
															Ans
																CallCls try_exploit_neighbors.3012 d:x.3040 y.3041 prev.3042 cur.3043 next.3044 Ti568.3514 f:
													Let Tu569.3511
														Nop
														Let Tu201.3508
															CallCls write_rgb.3023 d:f:
															Let Ti571.3509
																Add x.3040 1
																Ans
																	CallCls scan_pixel.3039 d:Ti571.3509 y.3041 prev.3042 cur.3043 next.3044 f:
scan_line.3045 (args) : y.3046 (fargs) : 
	Let Ta543.3503
		SetL min_caml_image_size
		Let Ti545.3488
			Lwz Ta543.3503 4
			Ans
				IfLE Ti545.3488 y.3046
					Ans
						Nop
					Let Ta546.3501
						SetL min_caml_image_size
						Let Ti548.3499
							Lwz Ta546.3501 4
							Let Ti550.3496
								Sub Ti548.3499 1
								Let Tu205.3489
									IfLE Ti550.3496 y.3046
										Ans
											Nop
										Let Ti552.3497
											Add y.3046 1
											Ans
												CallCls pretrace_line.3035 d:next.3049 Ti552.3497 group_id.3050 f:
									Let Ti553.3495
										Li 0
										Let Tu204.3490
											CallCls scan_pixel.3039 d:Ti553.3495 y.3046 prev.3047 cur.3048 next.3049 f:
											Let Ti555.3491
												Add y.3046 1
												Let Ti556.3493
													Li 2
													Let Ti557.3492
														CallCls add_mod5.2635 d:group_id.3050 Ti556.3493 f:
														Ans
															CallCls scan_line.3045 d:Ti555.3491 cur.3048 next.3049 prev.3047 Ti557.3492 f:
create_float5x3array.3051 (args) : (fargs) : 
	Let Ti524.3486
		Li 3
		Let Td525.3487
			FLi l.6345
			Let vec.3463
				CallCls min_caml_create_float_array d:Ti524.3486 f:Td525.3487 
				Let Ti526.3485
					Li 5
					Let array.3464
						CallCls min_caml_create_array d:Ti526.3485 vec.3463 f:
						Let Ti528.3483
							Li 3
							Let Td529.3484
								FLi l.6345
								Let Ta530.3482
									CallCls min_caml_create_float_array d:Ti528.3483 f:Td529.3484 
									Let Tu210.3465
										Stw Ta530.3482 array.3464 4
										Let Ti532.3479
											Li 3
											Let Td533.3480
												FLi l.6345
												Let Ta534.3478
													CallCls min_caml_create_float_array d:Ti532.3479 f:Td533.3480 
													Let Tu209.3466
														Stw Ta534.3478 array.3464 8
														Let Ti536.3475
															Li 3
															Let Td537.3476
																FLi l.6345
																Let Ta538.3474
																	CallCls min_caml_create_float_array d:Ti536.3475 f:Td537.3476 
																	Let Tu208.3467
																		Stw Ta538.3474 array.3464 12
																		Let Ti540.3471
																			Li 3
																			Let Td541.3472
																				FLi l.6345
																				Let Ta542.3470
																					CallCls min_caml_create_float_array d:Ti540.3471 f:Td541.3472 
																					Let Tu207.3468
																						Stw Ta542.3470 array.3464 16
																						Ans
																							Mr array.3464
create_pixel.3053 (args) : (fargs) : 
	Let Ti512.3461
		Li 3
		Let Td513.3462
			FLi l.6345
			Let m_rgb.3443
				CallCls min_caml_create_float_array d:Ti512.3461 f:Td513.3462 
				Let Tu514.3460
					Nop
					Let m_isect_ps.3444
						CallCls create_float5x3array.3051 d:f:
						Let Ti515.3458
							Li 5
							Let Ti516.3459
								Li 0
								Let m_sids.3445
									CallCls min_caml_create_array d:Ti515.3458 Ti516.3459 f:
									Let Ti517.3456
										Li 5
										Let Ti518.3457
											Li 0
											Let m_cdif.3446
												CallCls min_caml_create_array d:Ti517.3456 Ti518.3457 f:
												Let Tu519.3455
													Nop
													Let m_engy.3447
														CallCls create_float5x3array.3051 d:f:
														Let Tu520.3454
															Nop
															Let m_r20p.3448
																CallCls create_float5x3array.3051 d:f:
																Let Ti521.3452
																	Li 1
																	Let Ti522.3453
																		Li 0
																		Let m_gid.3449
																			CallCls min_caml_create_array d:Ti521.3452 Ti522.3453 f:
																			Let Tu523.3451
																				Nop
																				Let m_nvectors.3450
																					CallCls create_float5x3array.3051 d:f:
																					Let t.6883
																						Mr $a0
																						Let $a0
																							Add $a0 32
																							Let Tu6891
																								Stw m_nvectors.3450 t.6883 28
																								Let Tu6890
																									Stw m_gid.3449 t.6883 24
																									Let Tu6889
																										Stw m_r20p.3448 t.6883 20
																										Let Tu6888
																											Stw m_engy.3447 t.6883 16
																											Let Tu6887
																												Stw m_cdif.3446 t.6883 12
																												Let Tu6886
																													Stw m_sids.3445 t.6883 8
																													Let Tu6885
																														Stw m_isect_ps.3444 t.6883 4
																														Let Tu6884
																															Stw m_rgb.3443 t.6883 0
																															Ans
																																Mr t.6883
init_line_elements.3055 (args) : line.3056 (fargs) : 
	Let Ti507.3437
		Li 0
		Ans
			IfLE Ti507.3437 n.3057
				Let Tu508.3442
					Nop
					Let Tt509.3441
						CallCls create_pixel.3053 d:f:
						Let o.6892
							Slw n.3057 2
							Let Tu212.3438
								Stw Tt509.3441 line.3056 o.6892
								Let Ti511.3439
									Sub n.3057 1
									Ans
										CallCls init_line_elements.3055 d:line.3056 Ti511.3439 f:
				Ans
					Mr line.3056
create_pixelline.3058 (args) : (fargs) : 
	Let Ta497.3435
		SetL min_caml_image_size
		Let Ti499.3432
			Lwz Ta497.3435 0
			Let Tu500.3434
				Nop
				Let Tt501.3433
					CallCls create_pixel.3053 d:f:
					Let line.3426
						CallCls min_caml_create_array d:Ti499.3432 Tt501.3433 f:
						Let Ta502.3430
							SetL min_caml_image_size
							Let Ti504.3428
								Lwz Ta502.3430 0
								Let Ti506.3427
									Sub Ti504.3428 2
									Ans
										CallCls init_line_elements.3055 d:line.3426 Ti506.3427 f:
tan.3060 (args) : (fargs) : x.3061 
	Let Td494.3423
		CallCls min_caml_sin d:f:x.3061 
		Let Td495.3424
			CallCls min_caml_cos d:f:x.3061 
			Let Td496.3425
				FReciprocal Td495.3424
				Ans
					FMul Td494.3423 Td496.3425
adjust_position.3062 (args) : (fargs) : h.3063 
	Let Td488.3421
		FMul h.3063 h.3063
		Let Td489.3422
			FLi l.6790
			Let Td490.3420
				FAdd Td488.3421 Td489.3422
				Let l.3413
					CallCls min_caml_sqrt d:f:Td490.3420 
					Let Td491.3418
						FLi l.6346
						Let Td492.3419
							FReciprocal l.3413
							Let tan_h.3414
								FMul Td491.3418 Td492.3419
								Let theta_h.3415
									CallCls min_caml_atan d:f:tan_h.3414 
									Let Td493.3417
										FMul theta_h.3415 ratio.3064
										Let tan_m.3416
											CallCls tan.3060 d:f:Td493.3417 
											Ans
												FMul tan_m.3416 l.3413
calc_dirvec.3065 (args) : icount.3066 (fargs) : x.3067 
	Let Ti443.3357
		Li 5
		Ans
			IfLE Ti443.3357 icount.3066
				Let Td444.3411
					CallCls min_caml_fsqr d:f:x.3067 
					Let Td445.3412
						CallCls min_caml_fsqr d:f:y.3068 
						Let Td446.3409
							FAdd Td444.3411 Td445.3412
							Let Td447.3410
								FLi l.6346
								Let Td448.3408
									FAdd Td446.3409 Td447.3410
									Let l.3362
										CallCls min_caml_sqrt d:f:Td448.3408 
										Let Td449.3407
											FReciprocal l.3362
											Let vx.3363
												FMul x.3067 Td449.3407
												Let Td450.3406
													FReciprocal l.3362
													Let vy.3364
														FMul y.3068 Td450.3406
														Let Td451.3404
															FLi l.6346
															Let Td452.3405
																FReciprocal l.3362
																Let vz.3365
																	FMul Td451.3404 Td452.3405
																	Let Ta453.3403
																		SetL min_caml_dirvecs
																		Let o.6895
																			Slw group_id.3071 2
																			Let dgroup.3366
																				Lwz Ta453.3403 o.6895
																				Let o.6896
																					Slw index.3072 2
																					Let Tt454.3402
																						Lwz dgroup.3366 o.6896
																						Let Ta455.3401
																							CallCls d_vec.2745 d:Tt454.3402 f:
																							Let Tu218.3367
																								CallCls vecset.2638 d:Ta455.3401 f:vx.3363 vy.3364 vz.3365 
																								Let Ti457.3399
																									Add index.3072 40
																									Let o.6897
																										Slw Ti457.3399 2
																										Let Tt458.3398
																											Lwz dgroup.3366 o.6897
																											Let Ta459.3396
																												CallCls d_vec.2745 d:Tt458.3398 f:
																												Let Td460.3397
																													CallCls min_caml_fneg d:f:vy.3364 
																													Let Tu217.3368
																														CallCls vecset.2638 d:Ta459.3396 f:vx.3363 vz.3365 Td460.3397 
																														Let Ti462.3394
																															Add index.3072 80
																															Let o.6898
																																Slw Ti462.3394 2
																																Let Tt463.3393
																																	Lwz dgroup.3366 o.6898
																																	Let Ta464.3390
																																		CallCls d_vec.2745 d:Tt463.3393 f:
																																		Let Td465.3391
																																			CallCls min_caml_fneg d:f:vx.3363 
																																			Let Td466.3392
																																				CallCls min_caml_fneg d:f:vy.3364 
																																				Let Tu216.3369
																																					CallCls vecset.2638 d:Ta464.3390 f:vz.3365 Td465.3391 Td466.3392 
																																					Let Ti468.3388
																																						Add index.3072 1
																																						Let o.6899
																																							Slw Ti468.3388 2
																																							Let Tt469.3387
																																								Lwz dgroup.3366 o.6899
																																								Let Ta470.3383
																																									CallCls d_vec.2745 d:Tt469.3387 f:
																																									Let Td471.3384
																																										CallCls min_caml_fneg d:f:vx.3363 
																																										Let Td472.3385
																																											CallCls min_caml_fneg d:f:vy.3364 
																																											Let Td473.3386
																																												CallCls min_caml_fneg d:f:vz.3365 
																																												Let Tu215.3370
																																													CallCls vecset.2638 d:Ta470.3383 f:Td471.3384 Td472.3385 Td473.3386 
																																													Let Ti475.3381
																																														Add index.3072 41
																																														Let o.6900
																																															Slw Ti475.3381 2
																																															Let Tt476.3380
																																																Lwz dgroup.3366 o.6900
																																																Let Ta477.3377
																																																	CallCls d_vec.2745 d:Tt476.3380 f:
																																																	Let Td478.3378
																																																		CallCls min_caml_fneg d:f:vx.3363 
																																																		Let Td479.3379
																																																			CallCls min_caml_fneg d:f:vz.3365 
																																																			Let Tu214.3371
																																																				CallCls vecset.2638 d:Ta477.3377 f:Td478.3378 Td479.3379 vy.3364 
																																																				Let Ti481.3375
																																																					Add index.3072 81
																																																					Let o.6901
																																																						Slw Ti481.3375 2
																																																						Let Tt482.3374
																																																							Lwz dgroup.3366 o.6901
																																																							Let Ta483.3372
																																																								CallCls d_vec.2745 d:Tt482.3374 f:
																																																								Let Td484.3373
																																																									CallCls min_caml_fneg d:f:vz.3365 
																																																									Ans
																																																										CallCls vecset.2638 d:Ta483.3372 f:Td484.3373 vx.3363 vy.3364 
				Let x2.3358
					CallCls adjust_position.3062 d:f:y.3068 rx.3069 
					Let Ti486.3359
						Add icount.3066 1
						Let Td487.3360
							CallCls adjust_position.3062 d:f:x2.3358 ry.3070 
							Ans
								CallCls calc_dirvec.3065 d:Ti486.3359 group_id.3071 index.3072 f:x2.3358 Td487.3360 rx.3069 ry.3070 
calc_dirvecs.3073 (args) : col.3074 (fargs) : ry.3075 
	Let Ti422.3332
		Li 0
		Ans
			IfLE Ti422.3332 col.3074
				Let Td423.3355
					CallCls min_caml_float_of_int d:col.3074 f:
					Let Td424.3356
						FLi l.6902
						Let Td425.3353
							FMul Td423.3355 Td424.3356
							Let Td426.3354
								FLi l.6903
								Let rx.3333
									FSub Td425.3353 Td426.3354
									Let Ti427.3350
										Li 0
										Let Td428.3351
											FLi l.6345
											Let Td429.3352
												FLi l.6345
												Let Tu220.3334
													CallCls calc_dirvec.3065 d:Ti427.3350 group_id.3076 index.3077 f:Td428.3351 Td429.3352 rx.3333 ry.3075 
													Let Td430.3348
														CallCls min_caml_float_of_int d:col.3074 f:
														Let Td431.3349
															FLi l.6902
															Let Td432.3346
																FMul Td430.3348 Td431.3349
																Let Td433.3347
																	FLi l.6790
																	Let rx2.3335
																		FAdd Td432.3346 Td433.3347
																		Let Ti434.3341
																			Li 0
																			Let Td435.3342
																				FLi l.6345
																				Let Td436.3343
																					FLi l.6345
																					Let Ti438.3344
																						Add index.3077 2
																						Let Tu219.3336
																							CallCls calc_dirvec.3065 d:Ti434.3341 group_id.3076 Ti438.3344 f:Td435.3342 Td436.3343 rx2.3335 ry.3075 
																							Let Ti440.3337
																								Sub col.3074 1
																								Let Ti441.3339
																									Li 1
																									Let Ti442.3338
																										CallCls add_mod5.2635 d:group_id.3076 Ti441.3339 f:
																										Ans
																											CallCls calc_dirvecs.3073 d:Ti440.3337 Ti442.3338 index.3077 f:ry.3075 
				Ans
					Nop
calc_dirvec_rows.3078 (args) : row.3079 (fargs) : 
	Let Ti410.3318
		Li 0
		Ans
			IfLE Ti410.3318 row.3079
				Let Td411.3330
					CallCls min_caml_float_of_int d:row.3079 f:
					Let Td412.3331
						FLi l.6902
						Let Td413.3328
							FMul Td411.3330 Td412.3331
							Let Td414.3329
								FLi l.6903
								Let ry.3319
									FSub Td413.3328 Td414.3329
									Let Ti415.3327
										Li 4
										Let Tu221.3320
											CallCls calc_dirvecs.3073 d:Ti415.3327 group_id.3080 index.3081 f:ry.3319 
											Let Ti417.3321
												Sub row.3079 1
												Let Ti418.3325
													Li 2
													Let Ti419.3322
														CallCls add_mod5.2635 d:group_id.3080 Ti418.3325 f:
														Let Ti421.3323
															Add index.3081 4
															Ans
																CallCls calc_dirvec_rows.3078 d:Ti417.3321 Ti419.3322 Ti421.3323 f:
				Ans
					Nop
create_dirvec.3082 (args) : (fargs) : 
	Let Ti405.3316
		Li 3
		Let Td406.3317
			FLi l.6345
			Let v3.3311
				CallCls min_caml_create_float_array d:Ti405.3316 f:Td406.3317 
				Let Ta407.3314
					SetL min_caml_n_objects
					Let Ti409.3313
						Lwz Ta407.3314 0
						Let consts.3312
							CallCls min_caml_create_array d:Ti409.3313 v3.3311 f:
							Let t.6905
								Mr $a0
								Let $a0
									Add $a0 8
									Let Tu6907
										Stw consts.3312 t.6905 4
										Let Tu6906
											Stw v3.3311 t.6905 0
											Ans
												Mr t.6905
create_dirvec_elements.3084 (args) : d.3085 (fargs) : 
	Let Ti400.3305
		Li 0
		Ans
			IfLE Ti400.3305 index.3086
				Let Tu401.3310
					Nop
					Let Tt402.3309
						CallCls create_dirvec.3082 d:f:
						Let o.6908
							Slw index.3086 2
							Let Tu223.3306
								Stw Tt402.3309 d.3085 o.6908
								Let Ti404.3307
									Sub index.3086 1
									Ans
										CallCls create_dirvec_elements.3084 d:d.3085 Ti404.3307 f:
				Ans
					Nop
create_dirvecs.3087 (args) : index.3088 (fargs) : 
	Let Ti389.3292
		Li 0
		Ans
			IfLE Ti389.3292 index.3088
				Let Ta390.3300
					SetL min_caml_dirvecs
					Let Ti391.3302
						Li 120
						Let Tu392.3304
							Nop
							Let Tt393.3303
								CallCls create_dirvec.3082 d:f:
								Let Ta394.3301
									CallCls min_caml_create_array d:Ti391.3302 Tt393.3303 f:
									Let o.6909
										Slw index.3088 2
										Let Tu225.3293
											Stw Ta394.3301 Ta390.3300 o.6909
											Let Ta395.3299
												SetL min_caml_dirvecs
												Let o.6910
													Slw index.3088 2
													Let Ta396.3297
														Lwz Ta395.3299 o.6910
														Let Ti397.3298
															Li 118
															Let Tu224.3294
																CallCls create_dirvec_elements.3084 d:Ta396.3297 Ti397.3298 f:
																Let Ti399.3295
																	Sub index.3088 1
																	Ans
																		CallCls create_dirvecs.3087 d:Ti399.3295 f:
				Ans
					Nop
init_dirvec_constants.3089 (args) : vecset.3090 (fargs) : 
	Let Ti385.3287
		Li 0
		Ans
			IfLE Ti385.3287 index.3091
				Let o.6911
					Slw index.3091 2
					Let Tt386.3291
						Lwz vecset.3090 o.6911
						Let Tu226.3288
							CallCls setup_dirvec_constants.2874 d:Tt386.3291 f:
							Let Ti388.3289
								Sub index.3091 1
								Ans
									CallCls init_dirvec_constants.3089 d:vecset.3090 Ti388.3289 f:
				Ans
					Nop
init_vecset_constants.3092 (args) : index.3093 (fargs) : 
	Let Ti379.3280
		Li 0
		Ans
			IfLE Ti379.3280 index.3093
				Let Ta380.3286
					SetL min_caml_dirvecs
					Let o.6912
						Slw index.3093 2
						Let Ta381.3284
							Lwz Ta380.3286 o.6912
							Let Ti382.3285
								Li 119
								Let Tu227.3281
									CallCls init_dirvec_constants.3089 d:Ta381.3284 Ti382.3285 f:
									Let Ti384.3282
										Sub index.3093 1
										Ans
											CallCls init_vecset_constants.3092 d:Ti384.3282 f:
				Ans
					Nop
init_dirvecs.3094 (args) : (fargs) : 
	Let Ti374.3279
		Li 4
		Let Tu230.3273
			CallCls create_dirvecs.3087 d:Ti374.3279 f:
			Let Ti375.3276
				Li 9
				Let Ti376.3277
					Li 0
					Let Ti377.3278
						Li 0
						Let Tu229.3274
							CallCls calc_dirvec_rows.3078 d:Ti375.3276 Ti376.3277 Ti377.3278 f:
							Let Ti378.3275
								Li 4
								Ans
									CallCls init_vecset_constants.3092 d:Ti378.3275 f:
add_reflection.3096 (args) : index.3097 (fargs) : bright.3099 
	Let Tu370.3272
		Nop
		Let dvec.3266
			CallCls create_dirvec.3082 d:f:
			Let Ta371.3271
				CallCls d_vec.2745 d:dvec.3266 f:
				Let Tu232.3267
					CallCls vecset.2638 d:Ta371.3271 f:v0.3100 v1.3101 v2.3102 
					Let Tu231.3268
						CallCls setup_dirvec_constants.2874 d:dvec.3266 f:
						Let Ta372.3269
							SetL min_caml_reflections
							Let t.6913
								Mr $a0
								Let $a0
									Add $a0 16
									Let Tu6916
										Stfd bright.3099 t.6913 8
										Let Tu6915
											Stw dvec.3266 t.6913 4
											Let Tu6914
												Stw surface_id.3098 t.6913 0
												Let Tt373.3270
													Mr t.6913
													Let o.6917
														Slw index.3097 2
														Ans
															Stw Tt373.3270 Ta372.3269 o.6917
setup_rect_reflection.3103 (args) : obj_id.3104 (fargs) : 
	Let sid.3221
		ShiftL2 obj_id.3104
		Let Ta334.3264
			SetL min_caml_n_reflections
			Let nr.3222
				Lwz Ta334.3264 0
				Let Td336.3262
					FLi l.6346
					Let Td337.3263
						CallCls o_diffuse.2708 d:obj.3105 f:
						Let br.3223
							FSub Td336.3262 Td337.3263
							Let Ta338.3260
								SetL min_caml_light
								Let Td340.3259
									Lfd Ta338.3260 0
									Let n0.3224
										CallCls min_caml_fneg d:f:Td340.3259 
										Let Ta341.3257
											SetL min_caml_light
											Let Td343.3256
												Lfd Ta341.3257 8
												Let n1.3225
													CallCls min_caml_fneg d:f:Td343.3256 
													Let Ta344.3254
														SetL min_caml_light
														Let Td346.3253
															Lfd Ta344.3254 16
															Let n2.3226
																CallCls min_caml_fneg d:f:Td346.3253 
																Let Ti348.3248
																	Add sid.3221 1
																	Let Ta349.3250
																		SetL min_caml_light
																		Let Td351.3249
																			Lfd Ta349.3250 0
																			Let Tu235.3227
																				CallCls add_reflection.3096 d:nr.3222 Ti348.3248 f:br.3223 Td351.3249 n1.3225 n2.3226 
																				Let Ti353.3241
																					Add nr.3222 1
																					Let Ti355.3242
																						Add sid.3221 2
																						Let Ta356.3244
																							SetL min_caml_light
																							Let Td358.3243
																								Lfd Ta356.3244 8
																								Let Tu234.3228
																									CallCls add_reflection.3096 d:Ti353.3241 Ti355.3242 f:br.3223 n0.3224 Td358.3243 n2.3226 
																									Let Ti360.3234
																										Add nr.3222 2
																										Let Ti362.3235
																											Add sid.3221 3
																											Let Ta363.3237
																												SetL min_caml_light
																												Let Td365.3236
																													Lfd Ta363.3237 16
																													Let Tu233.3229
																														CallCls add_reflection.3096 d:Ti360.3234 Ti362.3235 f:br.3223 n0.3224 n1.3225 Td365.3236 
																														Let Ta366.3230
																															SetL min_caml_n_reflections
																															Let Ti369.3232
																																Add nr.3222 3
																																Ans
																																	Stw Ti369.3232 Ta366.3230 0
setup_surface_reflection.3106 (args) : obj_id.3107 (fargs) : 
	Let Ti298.3219
		ShiftL2 obj_id.3107
		Let sid.3180
			Add Ti298.3219 1
			Let Ta300.3217
				SetL min_caml_n_reflections
				Let nr.3181
					Lwz Ta300.3217 0
					Let Td302.3215
						FLi l.6346
						Let Td303.3216
							CallCls o_diffuse.2708 d:obj.3108 f:
							Let br.3182
								FSub Td302.3215 Td303.3216
								Let Ta304.3213
									SetL min_caml_light
									Let Ta305.3214
										CallCls o_param_abc.2700 d:obj.3108 f:
										Let p.3183
											CallCls veciprod.2659 d:Ta304.3213 Ta305.3214 f:
											Let Td306.3211
												FLi l.6470
												Let Td307.3212
													CallCls o_param_a.2694 d:obj.3108 f:
													Let Td308.3210
														FMul Td306.3211 Td307.3212
														Let Td309.3206
															FMul Td308.3210 p.3183
															Let Ta310.3208
																SetL min_caml_light
																Let Td312.3207
																	Lfd Ta310.3208 0
																	Let Td313.3189
																		FSub Td309.3206 Td312.3207
																		Let Td314.3204
																			FLi l.6470
																			Let Td315.3205
																				CallCls o_param_b.2696 d:obj.3108 f:
																				Let Td316.3203
																					FMul Td314.3204 Td315.3205
																					Let Td317.3199
																						FMul Td316.3203 p.3183
																						Let Ta318.3201
																							SetL min_caml_light
																							Let Td320.3200
																								Lfd Ta318.3201 8
																								Let Td321.3190
																									FSub Td317.3199 Td320.3200
																									Let Td322.3197
																										FLi l.6470
																										Let Td323.3198
																											CallCls o_param_c.2698 d:obj.3108 f:
																											Let Td324.3196
																												FMul Td322.3197 Td323.3198
																												Let Td325.3192
																													FMul Td324.3196 p.3183
																													Let Ta326.3194
																														SetL min_caml_light
																														Let Td328.3193
																															Lfd Ta326.3194 16
																															Let Td329.3191
																																FSub Td325.3192 Td328.3193
																																Let Tu236.3184
																																	CallCls add_reflection.3096 d:nr.3181 sid.3180 f:br.3182 Td313.3189 Td321.3190 Td329.3191 
																																	Let Ta330.3185
																																		SetL min_caml_n_reflections
																																		Let Ti333.3187
																																			Add nr.3181 1
																																			Ans
																																				Stw Ti333.3187 Ta330.3185 0
setup_reflections.3109 (args) : obj_id.3110 (fargs) : 
	Let Ti288.3168
		Li 0
		Ans
			IfLE Ti288.3168 obj_id.3110
				Let Ta289.3179
					SetL min_caml_objects
					Let o.6931
						Slw obj_id.3110 2
						Let obj.3169
							Lwz Ta289.3179 o.6931
							Let Ti290.3170
								CallCls o_reflectiontype.2688 d:obj.3169 f:
								Let Ti291.3171
									Li 2
									Ans
										IfEq Ti290.3170 Ti291.3171
											Let Td292.3177
												CallCls o_diffuse.2708 d:obj.3169 f:
												Let Td293.3178
													FLi l.6346
													Let Tb294.3172
														CallCls min_caml_fless d:f:Td292.3177 Td293.3178 
														Let Ti295.3173
															Li 0
															Ans
																IfEq Tb294.3172 Ti295.3173
																	Ans
																		Nop
																	Let m_shape.3174
																		CallCls o_form.2686 d:obj.3169 f:
																		Let Ti296.3175
																			Li 1
																			Ans
																				IfEq m_shape.3174 Ti296.3175
																					Ans
																						CallCls setup_rect_reflection.3103 d:obj_id.3110 obj.3169 f:
																					Let Ti297.3176
																						Li 2
																						Ans
																							IfEq m_shape.3174 Ti297.3176
																								Ans
																									CallCls setup_surface_reflection.3106 d:obj_id.3110 obj.3169 f:
																								Ans
																									Nop
											Ans
												Nop
				Ans
					Nop
rt.3111 (args) : size_x.3112 (fargs) : 
	Let Ta253.3166
		SetL min_caml_image_size
		Let Tu248.3118
			Stw size_x.3112 Ta253.3166 0
			Let Ta255.3164
				SetL min_caml_image_size
				Let Tu247.3119
					Stw size_y.3113 Ta255.3164 4
					Let Ta257.3161
						SetL min_caml_image_center
						Let Ti259.3163
							ShiftR1 size_x.3112
							Let Tu246.3120
								Stw Ti259.3163 Ta257.3161 0
								Let Ta260.3158
									SetL min_caml_image_center
									Let Ti262.3160
										ShiftR1 size_y.3113
										Let Tu245.3121
											Stw Ti262.3160 Ta260.3158 4
											Let Ta263.3152
												SetL min_caml_scan_pitch
												Let Td265.3155
													FLi l.6936
													Let Td266.3156
														CallCls min_caml_float_of_int d:size_x.3112 f:
														Let Td267.3157
															FReciprocal Td266.3156
															Let Td268.3154
																FMul Td265.3155 Td267.3157
																Let Tu244.3122
																	Stfd Td268.3154 Ta263.3152 0
																	Let Tu269.3151
																		Nop
																		Let prev.3123
																			CallCls create_pixelline.3058 d:f:
																			Let Tu270.3150
																				Nop
																				Let cur.3124
																					CallCls create_pixelline.3058 d:f:
																					Let Tu271.3149
																						Nop
																						Let next.3125
																							CallCls create_pixelline.3058 d:f:
																							Let Tu272.3148
																								Nop
																								Let Tu243.3126
																									CallCls read_parameter.2776 d:f:
																									Let Tu273.3147
																										Nop
																										Let Tu242.3127
																											CallCls write_ppm_header.3019 d:f:
																											Let Tu274.3146
																												Nop
																												Let Tu241.3128
																													CallCls init_dirvecs.3094 d:f:
																													Let Tt275.3145
																														SetL min_caml_light_dirvec
																														Let Ta276.3143
																															CallCls d_vec.2745 d:Tt275.3145 f:
																															Let Ta277.3144
																																SetL min_caml_light
																																Let Tu240.3129
																																	CallCls veccpy.2648 d:Ta276.3143 Ta277.3144 f:
																																	Let Tt278.3142
																																		SetL min_caml_light_dirvec
																																		Let Tu239.3130
																																			CallCls setup_dirvec_constants.2874 d:Tt278.3142 f:
																																			Let Ta279.3140
																																				SetL min_caml_n_objects
																																				Let Ti281.3138
																																					Lwz Ta279.3140 0
																																					Let Ti283.3137
																																						Sub Ti281.3138 1
																																						Let Tu238.3131
																																							CallCls setup_reflections.3109 d:Ti283.3137 f:
																																							Let Ti284.3135
																																								Li 0
																																								Let Ti285.3136
																																									Li 0
																																									Let Tu237.3132
																																										CallCls pretrace_line.3035 d:cur.3124 Ti284.3135 Ti285.3136 f:
																																										Let Ti286.3133
																																											Li 0
																																											Let Ti287.3134
																																												Li 2
																																												Ans
																																													CallCls scan_line.3045 d:Ti286.3133 prev.3123 cur.3124 next.3125 Ti287.3134 f:

main
Let Ti250.3116
	Li 512
	Let Ti251.3117
		Li 512
		Let Tu249.3114
			CallCls rt.3111 d:Ti250.3116 Ti251.3117 f:
			Let Ti252.3115
				Li 0
				Ans
					CallCls min_caml_print_int d:Ti252.3115 f:
