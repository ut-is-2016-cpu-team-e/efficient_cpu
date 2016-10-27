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
xor.2627 (args) : $a1 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfEq $a1 $a3
				Ans
					Mr $a2
				Let $a1
					Li 0
					Ans
						IfEq $a2 $a1
							Ans
								Li 1
							Ans
								Li 0
sgn.2630 (args) : (fargs) : $f0 
	Let Tu6939
		Save $f0 x.2631
		Let $a1
			CallCls min_caml_fiszero d:f:$f0 
			Let $a2
				Li 0
				Ans
					IfEq $a1 $a2
						Let $f0
							Restore x.2631
							Let $a1
								CallCls min_caml_fispos d:f:$f0 
								Let $a2
									Li 0
									Ans
										IfEq $a1 $a2
											Ans
												FLi l.6347
											Ans
												FLi l.6346
						Ans
							FLi l.6345
fneg_cond.2632 (args) : $a1 (fargs) : $f0 
	Let $a2
		Li 0
		Ans
			IfEq $a1 $a2
				Ans
					CallCls min_caml_fneg d:f:$f0 
				Ans
					FMr $f0
add_mod5.2635 (args) : $a1 (fargs) : 
	Let $a1
		Add $a1 $a2
		Let $a2
			Li 5
			Ans
				IfLE $a2 $a1
					Ans
						Sub $a1 5
					Ans
						Mr $a1
vecset.2638 (args) : $a1 (fargs) : $f0 
	Let $f30
		Stfd $f0 $a1 0
		Let $f30
			Stfd $f1 $a1 8
			Ans
				Stfd $f2 $a1 16
vecfill.2643 (args) : $a1 (fargs) : $f0 
	Let $f30
		Stfd $f0 $a1 0
		Let $f30
			Stfd $f0 $a1 8
			Ans
				Stfd $f0 $a1 16
vecbzero.2646 (args) : $a1 (fargs) : 
	Let $f0
		FLi l.6345
		Ans
			CallCls vecfill.2643 d:$a1 f:$f0 
veccpy.2648 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a2 0
		Let $f30
			Stfd $f0 $a1 0
			Let $f0
				Lfd $a2 8
				Let $f30
					Stfd $f0 $a1 8
					Let $f0
						Lfd $a2 16
						Ans
							Stfd $f0 $a1 16
vecunit_sgn.2656 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a1 0
		Let Tu6946
			Save $a2 inv.2658
			Let Tu6945
				Save $a1 v.2657
				Let $f0
					CallCls min_caml_fsqr d:f:$f0 
					Let $a1
						Restore v.2657
						Let $f1
							Lfd $a1 8
							Let Tu6948
								Save $a1 v.2657
								Let Tu6947
									Save $f0 Td2529.6259
									Let $f0
										CallCls min_caml_fsqr d:f:$f1 
										Let $f1
											Restore Td2529.6259
											Let $f0
												FAdd $f1 $f0
												Let $a1
													Restore v.2657
													Let $f1
														Lfd $a1 16
														Let Tu6950
															Save $a1 v.2657
															Let Tu6949
																Save $f0 Td2533.6255
																Let $f0
																	CallCls min_caml_fsqr d:f:$f1 
																	Let $f1
																		Restore Td2533.6255
																		Let $f0
																			FAdd $f1 $f0
																			Let $f0
																				CallCls min_caml_sqrt d:f:$f0 
																				Let Tu6951
																					Save $f0 l.6231
																					Let $a1
																						CallCls min_caml_fiszero d:f:$f0 
																						Let $a2
																							Li 0
																							Let $f0
																								IfEq $a1 $a2
																									Let $a1
																										Li 0
																										Let $a2
																											Restore inv.2658
																											Ans
																												IfEq $a2 $a1
																													Let $f0
																														FLi l.6346
																														Let $f1
																															Restore l.6231
																															Let $f1
																																FReciprocal $f1
																																Ans
																																	FMul $f0 $f1
																													Let $f0
																														FLi l.6347
																														Let $f1
																															Restore l.6231
																															Let $f1
																																FReciprocal $f1
																																Ans
																																	FMul $f0 $f1
																									Ans
																										FLi l.6346
																								Let $a1
																									Restore v.2657
																									Let $f1
																										Lfd $a1 0
																										Let $f1
																											FMul $f1 $f0
																											Let $f30
																												Stfd $f1 $a1 0
																												Let $f1
																													Lfd $a1 8
																													Let $f1
																														FMul $f1 $f0
																														Let $f30
																															Stfd $f1 $a1 8
																															Let $f1
																																Lfd $a1 16
																																Let $f0
																																	FMul $f1 $f0
																																	Ans
																																		Stfd $f0 $a1 16
veciprod.2659 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a1 0
		Let $f1
			Lfd $a2 0
			Let $f0
				FMul $f0 $f1
				Let $f1
					Lfd $a1 8
					Let $f2
						Lfd $a2 8
						Let $f1
							FMul $f1 $f2
							Let $f0
								FAdd $f0 $f1
								Let $f1
									Lfd $a1 16
									Let $f2
										Lfd $a2 16
										Let $f1
											FMul $f1 $f2
											Ans
												FAdd $f0 $f1
veciprod2.2662 (args) : $a1 (fargs) : $f0 
	Let $f3
		Lfd $a1 0
		Let $f0
			FMul $f3 $f0
			Let $f3
				Lfd $a1 8
				Let $f1
					FMul $f3 $f1
					Let $f0
						FAdd $f0 $f1
						Let $f1
							Lfd $a1 16
							Let $f1
								FMul $f1 $f2
								Ans
									FAdd $f0 $f1
vecaccum.2667 (args) : $a1 (fargs) : $f0 
	Let $f1
		Lfd $a1 0
		Let $f2
			Lfd $a2 0
			Let $f2
				FMul $f0 $f2
				Let $f1
					FAdd $f1 $f2
					Let $f30
						Stfd $f1 $a1 0
						Let $f1
							Lfd $a1 8
							Let $f2
								Lfd $a2 8
								Let $f2
									FMul $f0 $f2
									Let $f1
										FAdd $f1 $f2
										Let $f30
											Stfd $f1 $a1 8
											Let $f1
												Lfd $a1 16
												Let $f2
													Lfd $a2 16
													Let $f0
														FMul $f0 $f2
														Let $f0
															FAdd $f1 $f0
															Ans
																Stfd $f0 $a1 16
vecadd.2671 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a1 0
		Let $f1
			Lfd $a2 0
			Let $f0
				FAdd $f0 $f1
				Let $f30
					Stfd $f0 $a1 0
					Let $f0
						Lfd $a1 8
						Let $f1
							Lfd $a2 8
							Let $f0
								FAdd $f0 $f1
								Let $f30
									Stfd $f0 $a1 8
									Let $f0
										Lfd $a1 16
										Let $f1
											Lfd $a2 16
											Let $f0
												FAdd $f0 $f1
												Ans
													Stfd $f0 $a1 16
vecscale.2677 (args) : $a1 (fargs) : $f0 
	Let $f1
		Lfd $a1 0
		Let $f1
			FMul $f1 $f0
			Let $f30
				Stfd $f1 $a1 0
				Let $f1
					Lfd $a1 8
					Let $f1
						FMul $f1 $f0
						Let $f30
							Stfd $f1 $a1 8
							Let $f1
								Lfd $a1 16
								Let $f0
									FMul $f1 $f0
									Ans
										Stfd $f0 $a1 16
vecaccumv.2680 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a1 0
		Let $f1
			Lfd $a2 0
			Let $f2
				Lfd $a3 0
				Let $f1
					FMul $f1 $f2
					Let $f0
						FAdd $f0 $f1
						Let $f30
							Stfd $f0 $a1 0
							Let $f0
								Lfd $a1 8
								Let $f1
									Lfd $a2 8
									Let $f2
										Lfd $a3 8
										Let $f1
											FMul $f1 $f2
											Let $f0
												FAdd $f0 $f1
												Let $f30
													Stfd $f0 $a1 8
													Let $f0
														Lfd $a1 16
														Let $f1
															Lfd $a2 16
															Let $f2
																Lfd $a3 16
																Let $f1
																	FMul $f1 $f2
																	Let $f0
																		FAdd $f0 $f1
																		Ans
																			Stfd $f0 $a1 16
o_texturetype.2684 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 0
		Ans
			Mr $a1
o_form.2686 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 4
		Ans
			Mr $a1
o_reflectiontype.2688 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 8
		Ans
			Mr $a1
o_isinvert.2690 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 24
		Ans
			Mr $a1
o_isrot.2692 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 12
		Ans
			Mr $a1
o_param_a.2694 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 16
		Ans
			Lfd $a1 0
o_param_b.2696 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 16
		Ans
			Lfd $a1 8
o_param_c.2698 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 16
		Ans
			Lfd $a1 16
o_param_abc.2700 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 16
		Ans
			Mr $a1
o_param_x.2702 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 20
		Ans
			Lfd $a1 0
o_param_y.2704 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 20
		Ans
			Lfd $a1 8
o_param_z.2706 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 20
		Ans
			Lfd $a1 16
o_diffuse.2708 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 28
		Ans
			Lfd $a1 0
o_hilight.2710 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 28
		Ans
			Lfd $a1 8
o_color_red.2712 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 32
		Ans
			Lfd $a1 0
o_color_green.2714 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 32
		Ans
			Lfd $a1 8
o_color_blue.2716 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 32
		Ans
			Lfd $a1 16
o_param_r1.2718 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 36
		Ans
			Lfd $a1 0
o_param_r2.2720 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 36
		Ans
			Lfd $a1 8
o_param_r3.2722 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 36
		Ans
			Lfd $a1 16
o_param_ctbl.2724 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 40
		Ans
			Mr $a1
p_rgb.2726 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 0
		Ans
			Mr $a1
p_intersection_points.2728 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 4
		Ans
			Mr $a1
p_surface_ids.2730 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 8
		Ans
			Mr $a1
p_calc_diffuse.2732 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 12
		Ans
			Mr $a1
p_energy.2734 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 16
		Ans
			Mr $a1
p_received_ray_20percent.2736 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 20
		Ans
			Mr $a1
p_group_id.2738 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 24
		Ans
			Lwz $a1 0
p_set_group_id.2740 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 24
		Ans
			Stw $a2 $a1 0
p_nvectors.2743 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 28
		Ans
			Mr $a1
d_vec.2745 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 0
		Ans
			Mr $a1
d_const.2747 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 4
		Ans
			Mr $a1
r_surface_id.2749 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 0
		Ans
			Mr $a1
r_dvec.2751 (args) : $a1 (fargs) : 
	Let $a1
		Lwz $a1 4
		Ans
			Mr $a1
r_bright.2753 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a1 8
		Ans
			FMr $f0
rad.2755 (args) : (fargs) : $f0 
	Let $f1
		FLi l.6430
		Ans
			FMul $f0 $f1
read_screen_settings.2757 (args) : (fargs) : 
	Let $a1
		SetL min_caml_screen
		Let $f30
			Nop
			Let Tu6958
				Save $a1 Ta2312.5762
				Let $f0
					CallCls min_caml_read_float d:f:
					Let $a1
						Restore Ta2312.5762
						Let $f30
							Stfd $f0 $a1 0
							Let $a1
								SetL min_caml_screen
								Let $f30
									Nop
									Let Tu6959
										Save $a1 Ta2316.5758
										Let $f0
											CallCls min_caml_read_float d:f:
											Let $a1
												Restore Ta2316.5758
												Let $f30
													Stfd $f0 $a1 8
													Let $a1
														SetL min_caml_screen
														Let $f30
															Nop
															Let Tu6960
																Save $a1 Ta2320.5754
																Let $f0
																	CallCls min_caml_read_float d:f:
																	Let $a1
																		Restore Ta2320.5754
																		Let $f30
																			Stfd $f0 $a1 16
																			Let $f30
																				Nop
																				Let $f0
																					CallCls min_caml_read_float d:f:
																					Let $f0
																						CallCls rad.2755 d:f:$f0 
																						Let Tu6961
																							Save $f0 v1.5673
																							Let $f0
																								CallCls min_caml_cos d:f:$f0 
																								Let $f1
																									Restore v1.5673
																									Let Tu6962
																										Save $f0 cos_v1.5674
																										Let $f0
																											CallCls min_caml_sin d:f:$f1 
																											Let $f30
																												Nop
																												Let Tu6963
																													Save $f0 sin_v1.5675
																													Let $f0
																														CallCls min_caml_read_float d:f:
																														Let $f0
																															CallCls rad.2755 d:f:$f0 
																															Let Tu6964
																																Save $f0 v2.5676
																																Let $f0
																																	CallCls min_caml_cos d:f:$f0 
																																	Let $f1
																																		Restore v2.5676
																																		Let Tu6965
																																			Save $f0 cos_v2.5677
																																			Let $f0
																																				CallCls min_caml_sin d:f:$f1 
																																				Let $a1
																																					SetL min_caml_screenz_dir
																																					Let $f1
																																						Restore cos_v1.5674
																																						Let $f2
																																							FMul $f1 $f0
																																							Let $f3
																																								FLi l.6434
																																								Let $f2
																																									FMul $f2 $f3
																																									Let $f30
																																										Stfd $f2 $a1 0
																																										Let $a1
																																											SetL min_caml_screenz_dir
																																											Let $f2
																																												FLi l.6436
																																												Let $f3
																																													Restore sin_v1.5675
																																													Let $f2
																																														FMul $f3 $f2
																																														Let $f30
																																															Stfd $f2 $a1 8
																																															Let $a1
																																																SetL min_caml_screenz_dir
																																																Let $f2
																																																	Restore cos_v2.5677
																																																	Let $f4
																																																		FMul $f1 $f2
																																																		Let $f5
																																																			FLi l.6434
																																																			Let $f4
																																																				FMul $f4 $f5
																																																				Let $f30
																																																					Stfd $f4 $a1 16
																																																					Let $a1
																																																						SetL min_caml_screenx_dir
																																																						Let $f30
																																																							Stfd $f2 $a1 0
																																																							Let $a1
																																																								SetL min_caml_screenx_dir
																																																								Let $f4
																																																									FLi l.6345
																																																									Let $f30
																																																										Stfd $f4 $a1 8
																																																										Let $a1
																																																											SetL min_caml_screenx_dir
																																																											Let Tu6970
																																																												Save $f2 cos_v2.5677
																																																												Let Tu6969
																																																													Save $f1 cos_v1.5674
																																																													Let Tu6968
																																																														Save $f0 sin_v2.5678
																																																														Let Tu6967
																																																															Save $f3 sin_v1.5675
																																																															Let Tu6966
																																																																Save $a1 Ta2347.5728
																																																																Let $f0
																																																																	CallCls min_caml_fneg d:f:$f0 
																																																																	Let $a1
																																																																		Restore Ta2347.5728
																																																																		Let $f30
																																																																			Stfd $f0 $a1 16
																																																																			Let $a1
																																																																				SetL min_caml_screeny_dir
																																																																				Let $f0
																																																																					Restore sin_v1.5675
																																																																					Let Tu6972
																																																																						Save $f0 sin_v1.5675
																																																																						Let Tu6971
																																																																							Save $a1 Ta2350.5724
																																																																							Let $f0
																																																																								CallCls min_caml_fneg d:f:$f0 
																																																																								Let $f1
																																																																									Restore sin_v2.5678
																																																																									Let $f0
																																																																										FMul $f0 $f1
																																																																										Let $a1
																																																																											Restore Ta2350.5724
																																																																											Let $f30
																																																																												Stfd $f0 $a1 0
																																																																												Let $a1
																																																																													SetL min_caml_screeny_dir
																																																																													Let $f0
																																																																														Restore cos_v1.5674
																																																																														Let Tu6973
																																																																															Save $a1 Ta2354.5721
																																																																															Let $f0
																																																																																CallCls min_caml_fneg d:f:$f0 
																																																																																Let $a1
																																																																																	Restore Ta2354.5721
																																																																																	Let $f30
																																																																																		Stfd $f0 $a1 8
																																																																																		Let $a1
																																																																																			SetL min_caml_screeny_dir
																																																																																			Let $f0
																																																																																				Restore sin_v1.5675
																																																																																				Let Tu6974
																																																																																					Save $a1 Ta2357.5717
																																																																																					Let $f0
																																																																																						CallCls min_caml_fneg d:f:$f0 
																																																																																						Let $f1
																																																																																							Restore cos_v2.5677
																																																																																							Let $f0
																																																																																								FMul $f0 $f1
																																																																																								Let $a1
																																																																																									Restore Ta2357.5717
																																																																																									Let $f30
																																																																																										Stfd $f0 $a1 16
																																																																																										Let $a1
																																																																																											SetL min_caml_viewpoint
																																																																																											Let $a2
																																																																																												SetL min_caml_screen
																																																																																												Let $f0
																																																																																													Lfd $a2 0
																																																																																													Let $a2
																																																																																														SetL min_caml_screenz_dir
																																																																																														Let $f1
																																																																																															Lfd $a2 0
																																																																																															Let $f0
																																																																																																FSub $f0 $f1
																																																																																																Let $f30
																																																																																																	Stfd $f0 $a1 0
																																																																																																	Let $a1
																																																																																																		SetL min_caml_viewpoint
																																																																																																		Let $a2
																																																																																																			SetL min_caml_screen
																																																																																																			Let $f0
																																																																																																				Lfd $a2 8
																																																																																																				Let $a2
																																																																																																					SetL min_caml_screenz_dir
																																																																																																					Let $f1
																																																																																																						Lfd $a2 8
																																																																																																						Let $f0
																																																																																																							FSub $f0 $f1
																																																																																																							Let $f30
																																																																																																								Stfd $f0 $a1 8
																																																																																																								Let $a1
																																																																																																									SetL min_caml_viewpoint
																																																																																																									Let $a2
																																																																																																										SetL min_caml_screen
																																																																																																										Let $f0
																																																																																																											Lfd $a2 16
																																																																																																											Let $a2
																																																																																																												SetL min_caml_screenz_dir
																																																																																																												Let $f1
																																																																																																													Lfd $a2 16
																																																																																																													Let $f0
																																																																																																														FSub $f0 $f1
																																																																																																														Ans
																																																																																																															Stfd $f0 $a1 16
read_light.2759 (args) : (fargs) : 
	Let $f30
		Nop
		Let $a1
			CallCls min_caml_read_int d:f:
			Let $f30
				Nop
				Let $f0
					CallCls min_caml_read_float d:f:
					Let $f0
						CallCls rad.2755 d:f:$f0 
						Let Tu6976
							Save $f0 l1.5643
							Let $f0
								CallCls min_caml_sin d:f:$f0 
								Let $a1
									SetL min_caml_light
									Let Tu6977
										Save $a1 Ta2297.5664
										Let $f0
											CallCls min_caml_fneg d:f:$f0 
											Let $a1
												Restore Ta2297.5664
												Let $f30
													Stfd $f0 $a1 8
													Let $f30
														Nop
														Let $f0
															CallCls min_caml_read_float d:f:
															Let $f0
																CallCls rad.2755 d:f:$f0 
																Let $f1
																	Restore l1.5643
																	Let Tu6978
																		Save $f0 l2.5646
																		Let $f0
																			CallCls min_caml_cos d:f:$f1 
																			Let $f1
																				Restore l2.5646
																				Let Tu6980
																					Save $f1 l2.5646
																					Let Tu6979
																						Save $f0 cl1.5647
																						Let $f0
																							CallCls min_caml_sin d:f:$f1 
																							Let $a1
																								SetL min_caml_light
																								Let $f1
																									Restore cl1.5647
																									Let $f0
																										FMul $f1 $f0
																										Let $f30
																											Stfd $f0 $a1 0
																											Let $f0
																												Restore l2.5646
																												Let Tu6981
																													Save $f1 cl1.5647
																													Let $f0
																														CallCls min_caml_cos d:f:$f0 
																														Let $a1
																															SetL min_caml_light
																															Let $f1
																																Restore cl1.5647
																																Let $f0
																																	FMul $f1 $f0
																																	Let $f30
																																		Stfd $f0 $a1 16
																																		Let $a1
																																			SetL min_caml_beam
																																			Let $f30
																																				Nop
																																				Let Tu6982
																																					Save $a1 Ta2308.5652
																																					Let $f0
																																						CallCls min_caml_read_float d:f:
																																						Let $a1
																																							Restore Ta2308.5652
																																							Ans
																																								Stfd $f0 $a1 0
rotate_quadratic_matrix.2761 (args) : $a1 (fargs) : 
	Let $f0
		Lfd $a2 0
		Let Tu6985
			Save $a1 abc.2762
			Let Tu6984
				Save $a2 rot.2763
				Let $f0
					CallCls min_caml_cos d:f:$f0 
					Let $a1
						Restore rot.2763
						Let $f1
							Lfd $a1 0
							Let Tu6987
								Save $f0 cos_x.5532
								Let Tu6986
									Save $a1 rot.2763
									Let $f0
										CallCls min_caml_sin d:f:$f1 
										Let $a1
											Restore rot.2763
											Let $f1
												Lfd $a1 8
												Let Tu6989
													Save $f0 sin_x.5533
													Let Tu6988
														Save $a1 rot.2763
														Let $f0
															CallCls min_caml_cos d:f:$f1 
															Let $a1
																Restore rot.2763
																Let $f1
																	Lfd $a1 8
																	Let Tu6991
																		Save $f0 cos_y.5534
																		Let Tu6990
																			Save $a1 rot.2763
																			Let $f0
																				CallCls min_caml_sin d:f:$f1 
																				Let $a1
																					Restore rot.2763
																					Let $f1
																						Lfd $a1 16
																						Let Tu6993
																							Save $f0 sin_y.5535
																							Let Tu6992
																								Save $a1 rot.2763
																								Let $f0
																									CallCls min_caml_cos d:f:$f1 
																									Let $a1
																										Restore rot.2763
																										Let $f1
																											Lfd $a1 16
																											Let Tu6995
																												Save $a1 rot.2763
																												Let Tu6994
																													Save $f0 cos_z.5536
																													Let $f0
																														CallCls min_caml_sin d:f:$f1 
																														Let $f1
																															Restore cos_z.5536
																															Let $f2
																																Restore cos_y.5534
																																Let $f3
																																	FMul $f2 $f1
																																	Let $f4
																																		Restore sin_y.5535
																																		Let $f5
																																			Restore sin_x.5533
																																			Let $f6
																																				FMul $f5 $f4
																																				Let $f6
																																					FMul $f6 $f1
																																					Let $f7
																																						Restore cos_x.5532
																																						Let $f8
																																							FMul $f7 $f0
																																							Let $f6
																																								FSub $f6 $f8
																																								Let $f8
																																									FMul $f7 $f4
																																									Let $f8
																																										FMul $f8 $f1
																																										Let $f9
																																											FMul $f5 $f0
																																											Let $f8
																																												FAdd $f8 $f9
																																												Let $f9
																																													FMul $f2 $f0
																																													Let $f10
																																														FMul $f5 $f4
																																														Let $f10
																																															FMul $f10 $f0
																																															Let $f11
																																																FMul $f7 $f1
																																																Let $f10
																																																	FAdd $f10 $f11
																																																	Let $f11
																																																		FMul $f7 $f4
																																																		Let $f0
																																																			FMul $f11 $f0
																																																			Let $f1
																																																				FMul $f5 $f1
																																																				Let $f0
																																																					FSub $f0 $f1
																																																					Let Tu7004
																																																						Save $f0 m12.5543
																																																						Let Tu7003
																																																							Save $f8 m02.5540
																																																							Let Tu7002
																																																								Save $f10 m11.5542
																																																								Let Tu7001
																																																									Save $f6 m01.5539
																																																									Let Tu7000
																																																										Save $f9 m10.5541
																																																										Let Tu6999
																																																											Save $f3 m00.5538
																																																											Let Tu6998
																																																												Save $f7 cos_x.5532
																																																												Let Tu6997
																																																													Save $f2 cos_y.5534
																																																													Let Tu6996
																																																														Save $f5 sin_x.5533
																																																														Let $f0
																																																															CallCls min_caml_fneg d:f:$f4 
																																																															Let $f1
																																																																Restore cos_y.5534
																																																																Let $f2
																																																																	Restore sin_x.5533
																																																																	Let $f2
																																																																		FMul $f2 $f1
																																																																		Let $f3
																																																																			Restore cos_x.5532
																																																																			Let $f1
																																																																				FMul $f3 $f1
																																																																				Let $a1
																																																																					Restore abc.2762
																																																																					Let $f3
																																																																						Lfd $a1 0
																																																																						Let $f4
																																																																							Lfd $a1 8
																																																																							Let $f5
																																																																								Lfd $a1 16
																																																																								Let $f6
																																																																									Restore m00.5538
																																																																									Let Tu7012
																																																																										Save $f6 m00.5538
																																																																										Let Tu7011
																																																																											Save $f1 m22.5546
																																																																											Let Tu7010
																																																																												Save $f2 m21.5545
																																																																												Let Tu7009
																																																																													Save $a1 abc.2762
																																																																													Let Tu7008
																																																																														Save $f5 co.5549
																																																																														Let Tu7007
																																																																															Save $f0 m20.5544
																																																																															Let Tu7006
																																																																																Save $f4 bo.5548
																																																																																Let Tu7005
																																																																																	Save $f3 ao.5547
																																																																																	Let $f0
																																																																																		CallCls min_caml_fsqr d:f:$f6 
																																																																																		Let $f1
																																																																																			Restore ao.5547
																																																																																			Let $f0
																																																																																				FMul $f1 $f0
																																																																																				Let $f2
																																																																																					Restore m10.5541
																																																																																					Let Tu7015
																																																																																						Save $f2 m10.5541
																																																																																						Let Tu7014
																																																																																							Save $f1 ao.5547
																																																																																							Let Tu7013
																																																																																								Save $f0 Td2236.5611
																																																																																								Let $f0
																																																																																									CallCls min_caml_fsqr d:f:$f2 
																																																																																									Let $f1
																																																																																										Restore bo.5548
																																																																																										Let $f0
																																																																																											FMul $f1 $f0
																																																																																											Let $f2
																																																																																												Restore Td2236.5611
																																																																																												Let $f0
																																																																																													FAdd $f2 $f0
																																																																																													Let $f2
																																																																																														Restore m20.5544
																																																																																														Let Tu7018
																																																																																															Save $f2 m20.5544
																																																																																															Let Tu7017
																																																																																																Save $f1 bo.5548
																																																																																																Let Tu7016
																																																																																																	Save $f0 Td2239.5608
																																																																																																	Let $f0
																																																																																																		CallCls min_caml_fsqr d:f:$f2 
																																																																																																		Let $f1
																																																																																																			Restore co.5549
																																																																																																			Let $f0
																																																																																																				FMul $f1 $f0
																																																																																																				Let $f2
																																																																																																					Restore Td2239.5608
																																																																																																					Let $f0
																																																																																																						FAdd $f2 $f0
																																																																																																						Let $a1
																																																																																																							Restore abc.2762
																																																																																																							Let $f30
																																																																																																								Stfd $f0 $a1 0
																																																																																																								Let $f0
																																																																																																									Restore m01.5539
																																																																																																									Let Tu7021
																																																																																																										Save $f0 m01.5539
																																																																																																										Let Tu7020
																																																																																																											Save $a1 abc.2762
																																																																																																											Let Tu7019
																																																																																																												Save $f1 co.5549
																																																																																																												Let $f0
																																																																																																													CallCls min_caml_fsqr d:f:$f0 
																																																																																																													Let $f1
																																																																																																														Restore ao.5547
																																																																																																														Let $f0
																																																																																																															FMul $f1 $f0
																																																																																																															Let $f2
																																																																																																																Restore m11.5542
																																																																																																																Let Tu7024
																																																																																																																	Save $f2 m11.5542
																																																																																																																	Let Tu7023
																																																																																																																		Save $f1 ao.5547
																																																																																																																		Let Tu7022
																																																																																																																			Save $f0 Td2245.5602
																																																																																																																			Let $f0
																																																																																																																				CallCls min_caml_fsqr d:f:$f2 
																																																																																																																				Let $f1
																																																																																																																					Restore bo.5548
																																																																																																																					Let $f0
																																																																																																																						FMul $f1 $f0
																																																																																																																						Let $f2
																																																																																																																							Restore Td2245.5602
																																																																																																																							Let $f0
																																																																																																																								FAdd $f2 $f0
																																																																																																																								Let $f2
																																																																																																																									Restore m21.5545
																																																																																																																									Let Tu7027
																																																																																																																										Save $f2 m21.5545
																																																																																																																										Let Tu7026
																																																																																																																											Save $f1 bo.5548
																																																																																																																											Let Tu7025
																																																																																																																												Save $f0 Td2248.5599
																																																																																																																												Let $f0
																																																																																																																													CallCls min_caml_fsqr d:f:$f2 
																																																																																																																													Let $f1
																																																																																																																														Restore co.5549
																																																																																																																														Let $f0
																																																																																																																															FMul $f1 $f0
																																																																																																																															Let $f2
																																																																																																																																Restore Td2248.5599
																																																																																																																																Let $f0
																																																																																																																																	FAdd $f2 $f0
																																																																																																																																	Let $a1
																																																																																																																																		Restore abc.2762
																																																																																																																																		Let $f30
																																																																																																																																			Stfd $f0 $a1 8
																																																																																																																																			Let $f0
																																																																																																																																				Restore m02.5540
																																																																																																																																				Let Tu7030
																																																																																																																																					Save $f0 m02.5540
																																																																																																																																					Let Tu7029
																																																																																																																																						Save $a1 abc.2762
																																																																																																																																						Let Tu7028
																																																																																																																																							Save $f1 co.5549
																																																																																																																																							Let $f0
																																																																																																																																								CallCls min_caml_fsqr d:f:$f0 
																																																																																																																																								Let $f1
																																																																																																																																									Restore ao.5547
																																																																																																																																									Let $f0
																																																																																																																																										FMul $f1 $f0
																																																																																																																																										Let $f2
																																																																																																																																											Restore m12.5543
																																																																																																																																											Let Tu7033
																																																																																																																																												Save $f2 m12.5543
																																																																																																																																												Let Tu7032
																																																																																																																																													Save $f1 ao.5547
																																																																																																																																													Let Tu7031
																																																																																																																																														Save $f0 Td2254.5593
																																																																																																																																														Let $f0
																																																																																																																																															CallCls min_caml_fsqr d:f:$f2 
																																																																																																																																															Let $f1
																																																																																																																																																Restore bo.5548
																																																																																																																																																Let $f0
																																																																																																																																																	FMul $f1 $f0
																																																																																																																																																	Let $f2
																																																																																																																																																		Restore Td2254.5593
																																																																																																																																																		Let $f0
																																																																																																																																																			FAdd $f2 $f0
																																																																																																																																																			Let $f2
																																																																																																																																																				Restore m22.5546
																																																																																																																																																				Let Tu7036
																																																																																																																																																					Save $f2 m22.5546
																																																																																																																																																					Let Tu7035
																																																																																																																																																						Save $f1 bo.5548
																																																																																																																																																						Let Tu7034
																																																																																																																																																							Save $f0 Td2257.5590
																																																																																																																																																							Let $f0
																																																																																																																																																								CallCls min_caml_fsqr d:f:$f2 
																																																																																																																																																								Let $f1
																																																																																																																																																									Restore co.5549
																																																																																																																																																									Let $f0
																																																																																																																																																										FMul $f1 $f0
																																																																																																																																																										Let $f2
																																																																																																																																																											Restore Td2257.5590
																																																																																																																																																											Let $f0
																																																																																																																																																												FAdd $f2 $f0
																																																																																																																																																												Let $a1
																																																																																																																																																													Restore abc.2762
																																																																																																																																																													Let $f30
																																																																																																																																																														Stfd $f0 $a1 16
																																																																																																																																																														Let $f0
																																																																																																																																																															FLi l.6470
																																																																																																																																																															Let $f2
																																																																																																																																																																Restore m01.5539
																																																																																																																																																																Let $f3
																																																																																																																																																																	Restore ao.5547
																																																																																																																																																																	Let $f4
																																																																																																																																																																		FMul $f3 $f2
																																																																																																																																																																		Let $f5
																																																																																																																																																																			Restore m02.5540
																																																																																																																																																																			Let $f4
																																																																																																																																																																				FMul $f4 $f5
																																																																																																																																																																				Let $f6
																																																																																																																																																																					Restore m11.5542
																																																																																																																																																																					Let $f7
																																																																																																																																																																						Restore bo.5548
																																																																																																																																																																						Let $f8
																																																																																																																																																																							FMul $f7 $f6
																																																																																																																																																																							Let $f9
																																																																																																																																																																								Restore m12.5543
																																																																																																																																																																								Let $f8
																																																																																																																																																																									FMul $f8 $f9
																																																																																																																																																																									Let $f4
																																																																																																																																																																										FAdd $f4 $f8
																																																																																																																																																																										Let $f8
																																																																																																																																																																											Restore m21.5545
																																																																																																																																																																											Let $f10
																																																																																																																																																																												FMul $f1 $f8
																																																																																																																																																																												Let $f11
																																																																																																																																																																													Restore m22.5546
																																																																																																																																																																													Let $f10
																																																																																																																																																																														FMul $f10 $f11
																																																																																																																																																																														Let $f4
																																																																																																																																																																															FAdd $f4 $f10
																																																																																																																																																																															Let $f0
																																																																																																																																																																																FMul $f0 $f4
																																																																																																																																																																																Let $a1
																																																																																																																																																																																	Restore rot.2763
																																																																																																																																																																																	Let $f30
																																																																																																																																																																																		Stfd $f0 $a1 0
																																																																																																																																																																																		Let $f0
																																																																																																																																																																																			FLi l.6470
																																																																																																																																																																																			Let $f4
																																																																																																																																																																																				Restore m00.5538
																																																																																																																																																																																				Let $f10
																																																																																																																																																																																					FMul $f3 $f4
																																																																																																																																																																																					Let $f5
																																																																																																																																																																																						FMul $f10 $f5
																																																																																																																																																																																						Let $f10
																																																																																																																																																																																							Restore m10.5541
																																																																																																																																																																																							Let $f12
																																																																																																																																																																																								FMul $f7 $f10
																																																																																																																																																																																								Let $f9
																																																																																																																																																																																									FMul $f12 $f9
																																																																																																																																																																																									Let $f5
																																																																																																																																																																																										FAdd $f5 $f9
																																																																																																																																																																																										Let $f9
																																																																																																																																																																																											Restore m20.5544
																																																																																																																																																																																											Let $f12
																																																																																																																																																																																												FMul $f1 $f9
																																																																																																																																																																																												Let $f11
																																																																																																																																																																																													FMul $f12 $f11
																																																																																																																																																																																													Let $f5
																																																																																																																																																																																														FAdd $f5 $f11
																																																																																																																																																																																														Let $f0
																																																																																																																																																																																															FMul $f0 $f5
																																																																																																																																																																																															Let $f30
																																																																																																																																																																																																Stfd $f0 $a1 8
																																																																																																																																																																																																Let $f0
																																																																																																																																																																																																	FLi l.6470
																																																																																																																																																																																																	Let $f3
																																																																																																																																																																																																		FMul $f3 $f4
																																																																																																																																																																																																		Let $f2
																																																																																																																																																																																																			FMul $f3 $f2
																																																																																																																																																																																																			Let $f3
																																																																																																																																																																																																				FMul $f7 $f10
																																																																																																																																																																																																				Let $f3
																																																																																																																																																																																																					FMul $f3 $f6
																																																																																																																																																																																																					Let $f2
																																																																																																																																																																																																						FAdd $f2 $f3
																																																																																																																																																																																																						Let $f1
																																																																																																																																																																																																							FMul $f1 $f9
																																																																																																																																																																																																							Let $f1
																																																																																																																																																																																																								FMul $f1 $f8
																																																																																																																																																																																																								Let $f1
																																																																																																																																																																																																									FAdd $f2 $f1
																																																																																																																																																																																																									Let $f0
																																																																																																																																																																																																										FMul $f0 $f1
																																																																																																																																																																																																										Ans
																																																																																																																																																																																																											Stfd $f0 $a1 16
read_nth_object.2764 (args) : $a1 (fargs) : 
	Let $f30
		Nop
		Let Tu7037
			Save $a1 n.2765
			Let $a1
				CallCls min_caml_read_int d:f:
				Let $a2
					Li -1
					Ans
						IfEq $a1 $a2
							Ans
								Li 0
							Let $f30
								Nop
								Let Tu7038
									Save $a1 texture.5400
									Let $a1
										CallCls min_caml_read_int d:f:
										Let $f30
											Nop
											Let Tu7039
												Save $a1 form.5402
												Let $a1
													CallCls min_caml_read_int d:f:
													Let $f30
														Nop
														Let Tu7040
															Save $a1 refltype.5403
															Let $a1
																CallCls min_caml_read_int d:f:
																Let $a2
																	Li 3
																	Let $f0
																		FLi l.6345
																		Let Tu7041
																			Save $a1 isrot_p.5404
																			Let $a1
																				CallCls min_caml_create_float_array d:$a2 f:$f0 
																				Let $f30
																					Nop
																					Let Tu7042
																						Save $a1 abc.5405
																						Let $f0
																							CallCls min_caml_read_float d:f:
																							Let $a1
																								Restore abc.5405
																								Let $f30
																									Stfd $f0 $a1 0
																									Let $f30
																										Nop
																										Let Tu7043
																											Save $a1 abc.5405
																											Let $f0
																												CallCls min_caml_read_float d:f:
																												Let $a1
																													Restore abc.5405
																													Let $f30
																														Stfd $f0 $a1 8
																														Let $f30
																															Nop
																															Let Tu7044
																																Save $a1 abc.5405
																																Let $f0
																																	CallCls min_caml_read_float d:f:
																																	Let $a1
																																		Restore abc.5405
																																		Let $f30
																																			Stfd $f0 $a1 16
																																			Let $a2
																																				Li 3
																																				Let $f0
																																					FLi l.6345
																																					Let Tu7045
																																						Save $a1 abc.5405
																																						Let $a1
																																							CallCls min_caml_create_float_array d:$a2 f:$f0 
																																							Let $f30
																																								Nop
																																								Let Tu7046
																																									Save $a1 xyz.5409
																																									Let $f0
																																										CallCls min_caml_read_float d:f:
																																										Let $a1
																																											Restore xyz.5409
																																											Let $f30
																																												Stfd $f0 $a1 0
																																												Let $f30
																																													Nop
																																													Let Tu7047
																																														Save $a1 xyz.5409
																																														Let $f0
																																															CallCls min_caml_read_float d:f:
																																															Let $a1
																																																Restore xyz.5409
																																																Let $f30
																																																	Stfd $f0 $a1 8
																																																	Let $f30
																																																		Nop
																																																		Let Tu7048
																																																			Save $a1 xyz.5409
																																																			Let $f0
																																																				CallCls min_caml_read_float d:f:
																																																				Let $a1
																																																					Restore xyz.5409
																																																					Let $f30
																																																						Stfd $f0 $a1 16
																																																						Let $f30
																																																							Nop
																																																							Let Tu7049
																																																								Save $a1 xyz.5409
																																																								Let $f0
																																																									CallCls min_caml_read_float d:f:
																																																									Let $a1
																																																										CallCls min_caml_fisneg d:f:$f0 
																																																										Let $a2
																																																											Li 2
																																																											Let $f0
																																																												FLi l.6345
																																																												Let Tu7050
																																																													Save $a1 m_invert.5413
																																																													Let $a1
																																																														CallCls min_caml_create_float_array d:$a2 f:$f0 
																																																														Let $f30
																																																															Nop
																																																															Let Tu7051
																																																																Save $a1 reflparam.5414
																																																																Let $f0
																																																																	CallCls min_caml_read_float d:f:
																																																																	Let $a1
																																																																		Restore reflparam.5414
																																																																		Let $f30
																																																																			Stfd $f0 $a1 0
																																																																			Let $f30
																																																																				Nop
																																																																				Let Tu7052
																																																																					Save $a1 reflparam.5414
																																																																					Let $f0
																																																																						CallCls min_caml_read_float d:f:
																																																																						Let $a1
																																																																							Restore reflparam.5414
																																																																							Let $f30
																																																																								Stfd $f0 $a1 8
																																																																								Let $a2
																																																																									Li 3
																																																																									Let $f0
																																																																										FLi l.6345
																																																																										Let Tu7053
																																																																											Save $a1 reflparam.5414
																																																																											Let $a1
																																																																												CallCls min_caml_create_float_array d:$a2 f:$f0 
																																																																												Let $f30
																																																																													Nop
																																																																													Let Tu7054
																																																																														Save $a1 color.5417
																																																																														Let $f0
																																																																															CallCls min_caml_read_float d:f:
																																																																															Let $a1
																																																																																Restore color.5417
																																																																																Let $f30
																																																																																	Stfd $f0 $a1 0
																																																																																	Let $f30
																																																																																		Nop
																																																																																		Let Tu7055
																																																																																			Save $a1 color.5417
																																																																																			Let $f0
																																																																																				CallCls min_caml_read_float d:f:
																																																																																				Let $a1
																																																																																					Restore color.5417
																																																																																					Let $f30
																																																																																						Stfd $f0 $a1 8
																																																																																						Let $f30
																																																																																							Nop
																																																																																							Let Tu7056
																																																																																								Save $a1 color.5417
																																																																																								Let $f0
																																																																																									CallCls min_caml_read_float d:f:
																																																																																									Let $a1
																																																																																										Restore color.5417
																																																																																										Let $f30
																																																																																											Stfd $f0 $a1 16
																																																																																											Let $a2
																																																																																												Li 3
																																																																																												Let $f0
																																																																																													FLi l.6345
																																																																																													Let Tu7057
																																																																																														Save $a1 color.5417
																																																																																														Let $a1
																																																																																															CallCls min_caml_create_float_array d:$a2 f:$f0 
																																																																																															Let $a2
																																																																																																Li 0
																																																																																																Let $a3
																																																																																																	Restore isrot_p.5404
																																																																																																	Let Tu7065
																																																																																																		Save $a3 isrot_p.5404
																																																																																																		Let $f30
																																																																																																			IfEq $a3 $a2
																																																																																																				Ans
																																																																																																					Nop
																																																																																																				Let $f30
																																																																																																					Nop
																																																																																																					Let Tu7062
																																																																																																						Save $a3 isrot_p.5404
																																																																																																						Let Tu7061
																																																																																																							Save $a1 rotation.5421
																																																																																																							Let $f0
																																																																																																								CallCls min_caml_read_float d:f:
																																																																																																								Let $f0
																																																																																																									CallCls rad.2755 d:f:$f0 
																																																																																																									Let $a1
																																																																																																										Restore rotation.5421
																																																																																																										Let $f30
																																																																																																											Stfd $f0 $a1 0
																																																																																																											Let $f30
																																																																																																												Nop
																																																																																																												Let Tu7063
																																																																																																													Save $a1 rotation.5421
																																																																																																													Let $f0
																																																																																																														CallCls min_caml_read_float d:f:
																																																																																																														Let $f0
																																																																																																															CallCls rad.2755 d:f:$f0 
																																																																																																															Let $a1
																																																																																																																Restore rotation.5421
																																																																																																																Let $f30
																																																																																																																	Stfd $f0 $a1 8
																																																																																																																	Let $f30
																																																																																																																		Nop
																																																																																																																		Let Tu7064
																																																																																																																			Save $a1 rotation.5421
																																																																																																																			Let $f0
																																																																																																																				CallCls min_caml_read_float d:f:
																																																																																																																				Let $f0
																																																																																																																					CallCls rad.2755 d:f:$f0 
																																																																																																																					Let $a1
																																																																																																																						Restore rotation.5421
																																																																																																																						Ans
																																																																																																																							Stfd $f0 $a1 16
																																																																																																			Let $a2
																																																																																																				Li 2
																																																																																																				Let $a3
																																																																																																					Restore form.5402
																																																																																																					Let $a2
																																																																																																						IfEq $a3 $a2
																																																																																																							Ans
																																																																																																								Li 1
																																																																																																							Let $a2
																																																																																																								Restore m_invert.5413
																																																																																																								Ans
																																																																																																									Mr $a2
																																																																																																						Let $a4
																																																																																																							Li 4
																																																																																																							Let $f0
																																																																																																								FLi l.6345
																																																																																																								Let Tu7068
																																																																																																									Save $a3 form.5402
																																																																																																									Let Tu7067
																																																																																																										Save $a2 m_invert2.5423
																																																																																																										Let Tu7066
																																																																																																											Save $a1 rotation.5421
																																																																																																											Let $a1
																																																																																																												CallCls min_caml_create_float_array d:$a4 f:$f0 
																																																																																																												Let $a2
																																																																																																													Mr $a0
																																																																																																													Let $a0
																																																																																																														Add $a0 48
																																																																																																														Let $f30
																																																																																																															Stw $a1 $a2 40
																																																																																																															Let $a1
																																																																																																																Restore rotation.5421
																																																																																																																Let $f30
																																																																																																																	Stw $a1 $a2 36
																																																																																																																	Let $a3
																																																																																																																		Restore color.5417
																																																																																																																		Let $f30
																																																																																																																			Stw $a3 $a2 32
																																																																																																																			Let $a3
																																																																																																																				Restore reflparam.5414
																																																																																																																				Let $f30
																																																																																																																					Stw $a3 $a2 28
																																																																																																																					Let $a3
																																																																																																																						Restore m_invert2.5423
																																																																																																																						Let $f30
																																																																																																																							Stw $a3 $a2 24
																																																																																																																							Let $a3
																																																																																																																								Restore xyz.5409
																																																																																																																								Let $f30
																																																																																																																									Stw $a3 $a2 20
																																																																																																																									Let $a3
																																																																																																																										Restore abc.5405
																																																																																																																										Let $f30
																																																																																																																											Stw $a3 $a2 16
																																																																																																																											Let $a4
																																																																																																																												Restore isrot_p.5404
																																																																																																																												Let $f30
																																																																																																																													Stw $a4 $a2 12
																																																																																																																													Let $a5
																																																																																																																														Restore refltype.5403
																																																																																																																														Let $f30
																																																																																																																															Stw $a5 $a2 8
																																																																																																																															Let $a5
																																																																																																																																Restore form.5402
																																																																																																																																Let $f30
																																																																																																																																	Stw $a5 $a2 4
																																																																																																																																	Let $a6
																																																																																																																																		Restore texture.5400
																																																																																																																																		Let $f30
																																																																																																																																			Stw $a6 $a2 0
																																																																																																																																			Let $a2
																																																																																																																																				Mr $a2
																																																																																																																																				Let $a6
																																																																																																																																					SetL min_caml_objects
																																																																																																																																					Let $a7
																																																																																																																																						Restore n.2765
																																																																																																																																						Let $a7
																																																																																																																																							Slw $a7 2
																																																																																																																																							Let $f30
																																																																																																																																								Stw $a2 $a6 $a7
																																																																																																																																								Let $a2
																																																																																																																																									Li 3
																																																																																																																																									Let Tu7091
																																																																																																																																										Save $a1 rotation.5421
																																																																																																																																										Let Tu7090
																																																																																																																																											Save $a3 abc.5405
																																																																																																																																											Let Tu7089
																																																																																																																																												Save $a4 isrot_p.5404
																																																																																																																																												Let $f30
																																																																																																																																													IfEq $a5 $a2
																																																																																																																																														Let $f0
																																																																																																																																															Lfd $a3 0
																																																																																																																																															Let Tu7072
																																																																																																																																																Save $a1 rotation.5421
																																																																																																																																																Let Tu7071
																																																																																																																																																	Save $a4 isrot_p.5404
																																																																																																																																																	Let Tu7070
																																																																																																																																																		Save $a3 abc.5405
																																																																																																																																																		Let Tu7069
																																																																																																																																																			Save $f0 a.5434
																																																																																																																																																			Let $a1
																																																																																																																																																				CallCls min_caml_fiszero d:f:$f0 
																																																																																																																																																				Let $a2
																																																																																																																																																					Li 0
																																																																																																																																																					Let $f0
																																																																																																																																																						IfEq $a1 $a2
																																																																																																																																																							Let $f0
																																																																																																																																																								Restore a.5434
																																																																																																																																																								Let Tu7073
																																																																																																																																																									Save $f0 a.5434
																																																																																																																																																									Let $f0
																																																																																																																																																										CallCls sgn.2630 d:f:$f0 
																																																																																																																																																										Let $f1
																																																																																																																																																											Restore a.5434
																																																																																																																																																											Let Tu7074
																																																																																																																																																												Save $f0 Td2183.5459
																																																																																																																																																												Let $f0
																																																																																																																																																													CallCls min_caml_fsqr d:f:$f1 
																																																																																																																																																													Let $f0
																																																																																																																																																														FReciprocal $f0
																																																																																																																																																														Let $f1
																																																																																																																																																															Restore Td2183.5459
																																																																																																																																																															Ans
																																																																																																																																																																FMul $f1 $f0
																																																																																																																																																							Ans
																																																																																																																																																								FLi l.6345
																																																																																																																																																						Let $a1
																																																																																																																																																							Restore abc.5405
																																																																																																																																																							Let $f30
																																																																																																																																																								Stfd $f0 $a1 0
																																																																																																																																																								Let $f0
																																																																																																																																																									Lfd $a1 8
																																																																																																																																																									Let Tu7076
																																																																																																																																																										Save $a1 abc.5405
																																																																																																																																																										Let Tu7075
																																																																																																																																																											Save $f0 b.5436
																																																																																																																																																											Let $a1
																																																																																																																																																												CallCls min_caml_fiszero d:f:$f0 
																																																																																																																																																												Let $a2
																																																																																																																																																													Li 0
																																																																																																																																																													Let $f0
																																																																																																																																																														IfEq $a1 $a2
																																																																																																																																																															Let $f0
																																																																																																																																																																Restore b.5436
																																																																																																																																																																Let Tu7077
																																																																																																																																																																	Save $f0 b.5436
																																																																																																																																																																	Let $f0
																																																																																																																																																																		CallCls sgn.2630 d:f:$f0 
																																																																																																																																																																		Let $f1
																																																																																																																																																																			Restore b.5436
																																																																																																																																																																			Let Tu7078
																																																																																																																																																																				Save $f0 Td2191.5451
																																																																																																																																																																				Let $f0
																																																																																																																																																																					CallCls min_caml_fsqr d:f:$f1 
																																																																																																																																																																					Let $f0
																																																																																																																																																																						FReciprocal $f0
																																																																																																																																																																						Let $f1
																																																																																																																																																																							Restore Td2191.5451
																																																																																																																																																																							Ans
																																																																																																																																																																								FMul $f1 $f0
																																																																																																																																																															Ans
																																																																																																																																																																FLi l.6345
																																																																																																																																																														Let $a1
																																																																																																																																																															Restore abc.5405
																																																																																																																																																															Let $f30
																																																																																																																																																																Stfd $f0 $a1 8
																																																																																																																																																																Let $f0
																																																																																																																																																																	Lfd $a1 16
																																																																																																																																																																	Let Tu7080
																																																																																																																																																																		Save $a1 abc.5405
																																																																																																																																																																		Let Tu7079
																																																																																																																																																																			Save $f0 c.5438
																																																																																																																																																																			Let $a1
																																																																																																																																																																				CallCls min_caml_fiszero d:f:$f0 
																																																																																																																																																																				Let $a2
																																																																																																																																																																					Li 0
																																																																																																																																																																					Let $f0
																																																																																																																																																																						IfEq $a1 $a2
																																																																																																																																																																							Let $f0
																																																																																																																																																																								Restore c.5438
																																																																																																																																																																								Let Tu7081
																																																																																																																																																																									Save $f0 c.5438
																																																																																																																																																																									Let $f0
																																																																																																																																																																										CallCls sgn.2630 d:f:$f0 
																																																																																																																																																																										Let $f1
																																																																																																																																																																											Restore c.5438
																																																																																																																																																																											Let Tu7082
																																																																																																																																																																												Save $f0 Td2199.5443
																																																																																																																																																																												Let $f0
																																																																																																																																																																													CallCls min_caml_fsqr d:f:$f1 
																																																																																																																																																																													Let $f0
																																																																																																																																																																														FReciprocal $f0
																																																																																																																																																																														Let $f1
																																																																																																																																																																															Restore Td2199.5443
																																																																																																																																																																															Ans
																																																																																																																																																																																FMul $f1 $f0
																																																																																																																																																																							Ans
																																																																																																																																																																								FLi l.6345
																																																																																																																																																																						Let $a1
																																																																																																																																																																							Restore abc.5405
																																																																																																																																																																							Ans
																																																																																																																																																																								Stfd $f0 $a1 16
																																																																																																																																														Let $a2
																																																																																																																																															Li 2
																																																																																																																																															Let Tu7088
																																																																																																																																																Save $a1 rotation.5421
																																																																																																																																																Let Tu7087
																																																																																																																																																	Save $a3 abc.5405
																																																																																																																																																	Let Tu7086
																																																																																																																																																		Save $a4 isrot_p.5404
																																																																																																																																																		Ans
																																																																																																																																																			IfEq $a5 $a2
																																																																																																																																																				Let $a2
																																																																																																																																																					Li 0
																																																																																																																																																					Let $a5
																																																																																																																																																						Restore m_invert.5413
																																																																																																																																																						Let $a2
																																																																																																																																																							IfEq $a5 $a2
																																																																																																																																																								Ans
																																																																																																																																																									Li 1
																																																																																																																																																								Ans
																																																																																																																																																									Li 0
																																																																																																																																																							Let Tu7085
																																																																																																																																																								Save $a1 rotation.5421
																																																																																																																																																								Let Tu7084
																																																																																																																																																									Save $a3 abc.5405
																																																																																																																																																									Let Tu7083
																																																																																																																																																										Save $a4 isrot_p.5404
																																																																																																																																																										Ans
																																																																																																																																																											CallCls vecunit_sgn.2656 d:$a3 $a2 f:
																																																																																																																																																				Ans
																																																																																																																																																					Nop
																																																																																																																																													Let $a1
																																																																																																																																														Li 0
																																																																																																																																														Let $a2
																																																																																																																																															Restore isrot_p.5404
																																																																																																																																															Let $f30
																																																																																																																																																IfEq $a2 $a1
																																																																																																																																																	Ans
																																																																																																																																																		Nop
																																																																																																																																																	Let $a1
																																																																																																																																																		Restore abc.5405
																																																																																																																																																		Let $a2
																																																																																																																																																			Restore rotation.5421
																																																																																																																																																			Ans
																																																																																																																																																				CallCls rotate_quadratic_matrix.2761 d:$a1 $a2 f:
																																																																																																																																																Ans
																																																																																																																																																	Li 1
read_object.2766 (args) : $a1 (fargs) : 
	Let $a2
		Li 60
		Ans
			IfLE $a2 $a1
				Ans
					Nop
				Let Tu7093
					Save $a1 n.2767
					Let $a1
						CallCls read_nth_object.2764 d:$a1 f:
						Let $a2
							Li 0
							Ans
								IfEq $a1 $a2
									Let $a1
										SetL min_caml_n_objects
										Let $a2
											Restore n.2767
											Ans
												Stw $a2 $a1 0
									Let $a1
										Restore n.2767
										Let $a1
											Add $a1 1
											Ans
												CallCls read_object.2766 d:$a1 f:
read_all_object.2768 (args) : (fargs) : 
	Let $a1
		Li 0
		Ans
			CallCls read_object.2766 d:$a1 f:
read_net_item.2770 (args) : $a1 (fargs) : 
	Let $f30
		Nop
		Let Tu7095
			Save $a1 length.2771
			Let $a1
				CallCls min_caml_read_int d:f:
				Let $a2
					Li -1
					Ans
						IfEq $a1 $a2
							Let $a1
								Restore length.2771
								Let $a1
									Add $a1 1
									Let $a2
										Li -1
										Ans
											CallCls min_caml_create_array d:$a1 $a2 f:
							Let $a2
								Restore length.2771
								Let $a3
									Add $a2 1
									Let Tu7097
										Save $a1 item.5380
										Let Tu7096
											Save $a2 length.2771
											Let $a1
												CallCls read_net_item.2770 d:$a3 f:
												Let $a2
													Restore length.2771
													Let $a2
														Slw $a2 2
														Let $a3
															Restore item.5380
															Let $f30
																Stw $a3 $a1 $a2
																Ans
																	Mr $a1
read_or_network.2772 (args) : $a1 (fargs) : 
	Let $a2
		Li 0
		Let Tu7098
			Save $a1 length.2773
			Let $a2
				CallCls read_net_item.2770 d:$a2 f:
				Let $a1
					Lwz $a2 0
					Let $a3
						Li -1
						Ans
							IfEq $a1 $a3
								Let $a1
									Restore length.2773
									Let $a1
										Add $a1 1
										Ans
											CallCls min_caml_create_array d:$a1 $a2 f:
								Let $a1
									Restore length.2773
									Let $a3
										Add $a1 1
										Let Tu7100
											Save $a2 net.5368
											Let Tu7099
												Save $a1 length.2773
												Let $a1
													CallCls read_or_network.2772 d:$a3 f:
													Let $a2
														Restore length.2773
														Let $a2
															Slw $a2 2
															Let $a3
																Restore net.5368
																Let $f30
																	Stw $a3 $a1 $a2
																	Ans
																		Mr $a1
read_and_network.2774 (args) : $a1 (fargs) : 
	Let $a2
		Li 0
		Let Tu7102
			Save $a1 n.2775
			Let $a1
				CallCls read_net_item.2770 d:$a2 f:
				Let $a2
					Lwz $a1 0
					Let $a3
						Li -1
						Ans
							IfEq $a2 $a3
								Ans
									Nop
								Let $a2
									SetL min_caml_and_net
									Let $a3
										Restore n.2775
										Let $a4
											Slw $a3 2
											Let $f30
												Stw $a1 $a2 $a4
												Let $a1
													Add $a3 1
													Ans
														CallCls read_and_network.2774 d:$a1 f:
read_parameter.2776 (args) : (fargs) : 
	Let $f30
		Nop
		Let $f30
			CallCls read_screen_settings.2757 d:f:
			Let $f30
				Nop
				Let $f30
					CallCls read_light.2759 d:f:
					Let $f30
						Nop
						Let $f30
							CallCls read_all_object.2768 d:f:
							Let $a1
								Li 0
								Let $f30
									CallCls read_and_network.2774 d:$a1 f:
									Let $a1
										SetL min_caml_or_net
										Let $a2
											Li 0
											Let Tu7104
												Save $a1 Ta2072.5350
												Let $a1
													CallCls read_or_network.2772 d:$a2 f:
													Let $a2
														Restore Ta2072.5350
														Ans
															Stw $a1 $a2 0
solver_rect_surface.2778 (args) : $a1 (fargs) : $f0 
	Let $a6
		Slw $a3 3
		Let $f3
			Lfd $a2 $a6
			Let Tu7112
				Save $f2 b2.2783
				Let Tu7111
					Save $a5 i2.2786
					Let Tu7110
						Save $f1 b1.2782
						Let Tu7109
							Save $a4 i1.2785
							Let Tu7108
								Save $f0 b0.2781
								Let Tu7107
									Save $a2 dirvec.2780
									Let Tu7106
										Save $a3 i0.2784
										Let Tu7105
											Save $a1 m.2779
											Let $a1
												CallCls min_caml_fiszero d:f:$f3 
												Let $a2
													Li 0
													Ans
														IfEq $a1 $a2
															Let $a1
																Restore m.2779
																Let Tu7113
																	Save $a1 m.2779
																	Let $a1
																		CallCls o_param_abc.2700 d:$a1 f:
																		Let $a2
																			Restore m.2779
																			Let Tu7114
																				Save $a1 abc.5317
																				Let $a1
																					CallCls o_isinvert.2690 d:$a2 f:
																					Let $a2
																						Restore i0.2784
																						Let $a3
																							Slw $a2 3
																							Let $a4
																								Restore dirvec.2780
																								Let $f0
																									Lfd $a4 $a3
																									Let Tu7117
																										Save $a4 dirvec.2780
																										Let Tu7116
																											Save $a2 i0.2784
																											Let Tu7115
																												Save $a1 Tb2044.5342
																												Let $a2
																													CallCls min_caml_fisneg d:f:$f0 
																													Let $a1
																														Restore Tb2044.5342
																														Let $a1
																															CallCls xor.2627 d:$a1 $a2 f:
																															Let $a2
																																Restore i0.2784
																																Let $a3
																																	Slw $a2 3
																																	Let $a4
																																		Restore abc.5317
																																		Let $f0
																																			Lfd $a4 $a3
																																			Let Tu7119
																																				Save $a4 abc.5317
																																				Let Tu7118
																																					Save $a2 i0.2784
																																					Let $f0
																																						CallCls fneg_cond.2632 d:$a1 f:$f0 
																																						Let $f1
																																							Restore b0.2781
																																							Let $f0
																																								FSub $f0 $f1
																																								Let $a1
																																									Restore i0.2784
																																									Let $a1
																																										Slw $a1 3
																																										Let $a2
																																											Restore dirvec.2780
																																											Let $f1
																																												Lfd $a2 $a1
																																												Let $f1
																																													FReciprocal $f1
																																													Let $f0
																																														FMul $f0 $f1
																																														Let $a1
																																															Restore i1.2785
																																															Let $a3
																																																Slw $a1 3
																																																Let $f1
																																																	Lfd $a2 $a3
																																																	Let $f1
																																																		FMul $f0 $f1
																																																		Let $f2
																																																			Restore b1.2782
																																																			Let $f1
																																																				FAdd $f1 $f2
																																																				Let Tu7122
																																																					Save $f0 d2.5319
																																																					Let Tu7121
																																																						Save $a2 dirvec.2780
																																																						Let Tu7120
																																																							Save $a1 i1.2785
																																																							Let $f0
																																																								CallCls min_caml_fabs d:f:$f1 
																																																								Let $a1
																																																									Restore i1.2785
																																																									Let $a1
																																																										Slw $a1 3
																																																										Let $a2
																																																											Restore abc.5317
																																																											Let $f1
																																																												Lfd $a2 $a1
																																																												Let Tu7123
																																																													Save $a2 abc.5317
																																																													Let $a1
																																																														CallCls min_caml_fless d:f:$f0 $f1 
																																																														Let $a2
																																																															Li 0
																																																															Ans
																																																																IfEq $a1 $a2
																																																																	Ans
																																																																		Li 0
																																																																	Let $a1
																																																																		Restore i2.2786
																																																																		Let $a2
																																																																			Slw $a1 3
																																																																			Let $a3
																																																																				Restore dirvec.2780
																																																																				Let $f0
																																																																					Lfd $a3 $a2
																																																																					Let $f1
																																																																						Restore d2.5319
																																																																						Let $f0
																																																																							FMul $f1 $f0
																																																																							Let $f2
																																																																								Restore b2.2783
																																																																								Let $f0
																																																																									FAdd $f0 $f2
																																																																									Let Tu7125
																																																																										Save $f1 d2.5319
																																																																										Let Tu7124
																																																																											Save $a1 i2.2786
																																																																											Let $f0
																																																																												CallCls min_caml_fabs d:f:$f0 
																																																																												Let $a1
																																																																													Restore i2.2786
																																																																													Let $a1
																																																																														Slw $a1 3
																																																																														Let $a2
																																																																															Restore abc.5317
																																																																															Let $f1
																																																																																Lfd $a2 $a1
																																																																																Let $a1
																																																																																	CallCls min_caml_fless d:f:$f0 $f1 
																																																																																	Let $a2
																																																																																		Li 0
																																																																																		Ans
																																																																																			IfEq $a1 $a2
																																																																																				Ans
																																																																																					Li 0
																																																																																				Let $a1
																																																																																					SetL min_caml_solver_dist
																																																																																					Let $f0
																																																																																						Restore d2.5319
																																																																																						Let $f30
																																																																																							Stfd $f0 $a1 0
																																																																																							Ans
																																																																																								Li 1
															Ans
																Li 0
solver_rect.2787 (args) : $a1 (fargs) : $f0 
	Let $a3
		Li 0
		Let $a4
			Li 1
			Let $a5
				Li 2
				Let Tu7130
					Save $f0 b0.2790
					Let Tu7129
						Save $f2 b2.2792
						Let Tu7128
							Save $f1 b1.2791
							Let Tu7127
								Save $a2 dirvec.2789
								Let Tu7126
									Save $a1 m.2788
									Let $a1
										CallCls solver_rect_surface.2778 d:$a1 $a2 $a3 $a4 $a5 f:$f0 $f1 $f2 
										Let $a2
											Li 0
											Ans
												IfEq $a1 $a2
													Let $a3
														Li 1
														Let $a4
															Li 2
															Let $a5
																Li 0
																Let $f0
																	Restore b1.2791
																	Let $f1
																		Restore b2.2792
																		Let $f2
																			Restore b0.2790
																			Let $a1
																				Restore m.2788
																				Let $a2
																					Restore dirvec.2789
																					Let Tu7135
																						Save $f0 b1.2791
																						Let Tu7134
																							Save $f2 b0.2790
																							Let Tu7133
																								Save $f1 b2.2792
																								Let Tu7132
																									Save $a2 dirvec.2789
																									Let Tu7131
																										Save $a1 m.2788
																										Let $a1
																											CallCls solver_rect_surface.2778 d:$a1 $a2 $a3 $a4 $a5 f:$f0 $f1 $f2 
																											Let $a2
																												Li 0
																												Ans
																													IfEq $a1 $a2
																														Let $a3
																															Li 2
																															Let $a4
																																Li 0
																																Let $a5
																																	Li 1
																																	Let $f0
																																		Restore b2.2792
																																		Let $f1
																																			Restore b0.2790
																																			Let $f2
																																				Restore b1.2791
																																				Let $a1
																																					Restore m.2788
																																					Let $a2
																																						Restore dirvec.2789
																																						Let $a1
																																							CallCls solver_rect_surface.2778 d:$a1 $a2 $a3 $a4 $a5 f:$f0 $f1 $f2 
																																							Let $a2
																																								Li 0
																																								Ans
																																									IfEq $a1 $a2
																																										Ans
																																											Li 0
																																										Ans
																																											Li 3
																														Ans
																															Li 2
													Ans
														Li 1
solver_surface.2793 (args) : $a1 (fargs) : $f0 
	Let Tu7139
		Save $f2 b2.2798
		Let Tu7138
			Save $f1 b1.2797
			Let Tu7137
				Save $f0 b0.2796
				Let Tu7136
					Save $a2 dirvec.2795
					Let $a2
						CallCls o_param_abc.2700 d:$a1 f:
						Let $a1
							Restore dirvec.2795
							Let Tu7140
								Save $a2 abc.5289
								Let $f0
									CallCls veciprod.2659 d:$a1 $a2 f:
									Let Tu7141
										Save $f0 d.5290
										Let $a1
											CallCls min_caml_fispos d:f:$f0 
											Let $a2
												Li 0
												Ans
													IfEq $a1 $a2
														Ans
															Li 0
														Let $a1
															SetL min_caml_solver_dist
															Let $f0
																Restore b0.2796
																Let $f1
																	Restore b1.2797
																	Let $f2
																		Restore b2.2798
																		Let $a2
																			Restore abc.5289
																			Let Tu7142
																				Save $a1 Ta2020.5294
																				Let $f0
																					CallCls veciprod2.2662 d:$a2 f:$f0 $f1 $f2 
																					Let $f0
																						CallCls min_caml_fneg d:f:$f0 
																						Let $f1
																							Restore d.5290
																							Let $f1
																								FReciprocal $f1
																								Let $f0
																									FMul $f0 $f1
																									Let $a1
																										Restore Ta2020.5294
																										Let $f30
																											Stfd $f0 $a1 0
																											Ans
																												Li 1
quadratic.2799 (args) : $a1 (fargs) : $f0 
	Let Tu7146
		Save $f0 v0.2801
		Let Tu7145
			Save $f2 v2.2803
			Let Tu7144
				Save $f1 v1.2802
				Let Tu7143
					Save $a1 m.2800
					Let $f0
						CallCls min_caml_fsqr d:f:$f0 
						Let $a1
							Restore m.2800
							Let Tu7148
								Save $a1 m.2800
								Let Tu7147
									Save $f0 Td1995.5287
									Let $f0
										CallCls o_param_a.2694 d:$a1 f:
										Let $f1
											Restore Td1995.5287
											Let $f0
												FMul $f1 $f0
												Let $f1
													Restore v1.2802
													Let Tu7150
														Save $f1 v1.2802
														Let Tu7149
															Save $f0 Td1997.5283
															Let $f0
																CallCls min_caml_fsqr d:f:$f1 
																Let $a1
																	Restore m.2800
																	Let Tu7152
																		Save $a1 m.2800
																		Let Tu7151
																			Save $f0 Td1998.5285
																			Let $f0
																				CallCls o_param_b.2696 d:$a1 f:
																				Let $f1
																					Restore Td1998.5285
																					Let $f0
																						FMul $f1 $f0
																						Let $f1
																							Restore Td1997.5283
																							Let $f0
																								FAdd $f1 $f0
																								Let $f1
																									Restore v2.2803
																									Let Tu7154
																										Save $f1 v2.2803
																										Let Tu7153
																											Save $f0 Td2001.5279
																											Let $f0
																												CallCls min_caml_fsqr d:f:$f1 
																												Let $a1
																													Restore m.2800
																													Let Tu7156
																														Save $a1 m.2800
																														Let Tu7155
																															Save $f0 Td2002.5281
																															Let $f0
																																CallCls o_param_c.2698 d:$a1 f:
																																Let $f1
																																	Restore Td2002.5281
																																	Let $f0
																																		FMul $f1 $f0
																																		Let $f1
																																			Restore Td2001.5279
																																			Let $f0
																																				FAdd $f1 $f0
																																				Let $a1
																																					Restore m.2800
																																					Let Tu7158
																																						Save $a1 m.2800
																																						Let Tu7157
																																							Save $f0 diag_part.5265
																																							Let $a1
																																								CallCls o_isrot.2692 d:$a1 f:
																																								Let $a2
																																									Li 0
																																									Ans
																																										IfEq $a1 $a2
																																											Let $f0
																																												Restore diag_part.5265
																																												Ans
																																													FMr $f0
																																											Let $f0
																																												Restore v2.2803
																																												Let $f1
																																													Restore v1.2802
																																													Let $f2
																																														FMul $f1 $f0
																																														Let $a1
																																															Restore m.2800
																																															Let Tu7162
																																																Save $f1 v1.2802
																																																Let Tu7161
																																																	Save $a1 m.2800
																																																	Let Tu7160
																																																		Save $f0 v2.2803
																																																		Let Tu7159
																																																			Save $f2 Td2007.5277
																																																			Let $f0
																																																				CallCls o_param_r1.2718 d:$a1 f:
																																																				Let $f1
																																																					Restore Td2007.5277
																																																					Let $f0
																																																						FMul $f1 $f0
																																																						Let $f1
																																																							Restore diag_part.5265
																																																							Let $f0
																																																								FAdd $f1 $f0
																																																								Let $f1
																																																									Restore v0.2801
																																																									Let $f2
																																																										Restore v2.2803
																																																										Let $f2
																																																											FMul $f2 $f1
																																																											Let $a1
																																																												Restore m.2800
																																																												Let Tu7166
																																																													Save $a1 m.2800
																																																													Let Tu7165
																																																														Save $f1 v0.2801
																																																														Let Tu7164
																																																															Save $f0 Td2010.5272
																																																															Let Tu7163
																																																																Save $f2 Td2011.5274
																																																																Let $f0
																																																																	CallCls o_param_r2.2720 d:$a1 f:
																																																																	Let $f1
																																																																		Restore Td2011.5274
																																																																		Let $f0
																																																																			FMul $f1 $f0
																																																																			Let $f1
																																																																				Restore Td2010.5272
																																																																				Let $f0
																																																																					FAdd $f1 $f0
																																																																					Let $f1
																																																																						Restore v1.2802
																																																																						Let $f2
																																																																							Restore v0.2801
																																																																							Let $f1
																																																																								FMul $f2 $f1
																																																																								Let $a1
																																																																									Restore m.2800
																																																																									Let Tu7168
																																																																										Save $f0 Td2014.5268
																																																																										Let Tu7167
																																																																											Save $f1 Td2015.5270
																																																																											Let $f0
																																																																												CallCls o_param_r3.2722 d:$a1 f:
																																																																												Let $f1
																																																																													Restore Td2015.5270
																																																																													Let $f0
																																																																														FMul $f1 $f0
																																																																														Let $f1
																																																																															Restore Td2014.5268
																																																																															Ans
																																																																																FAdd $f1 $f0
bilinear.2804 (args) : $a1 (fargs) : $f0 
	Let $f6
		FMul $f0 $f3
		Let Tu7176
			Save $f3 w0.2809
			Let Tu7175
				Save $f0 v0.2806
				Let Tu7174
					Save $f5 w2.2811
					Let Tu7173
						Save $f2 v2.2808
						Let Tu7172
							Save $a1 m.2805
							Let Tu7171
								Save $f4 w1.2810
								Let Tu7170
									Save $f1 v1.2807
									Let Tu7169
										Save $f6 Td1965.5263
										Let $f0
											CallCls o_param_a.2694 d:$a1 f:
											Let $f1
												Restore Td1965.5263
												Let $f0
													FMul $f1 $f0
													Let $f1
														Restore w1.2810
														Let $f2
															Restore v1.2807
															Let $f3
																FMul $f2 $f1
																Let $a1
																	Restore m.2805
																	Let Tu7181
																		Save $f2 v1.2807
																		Let Tu7180
																			Save $f1 w1.2810
																			Let Tu7179
																				Save $a1 m.2805
																				Let Tu7178
																					Save $f0 Td1967.5259
																					Let Tu7177
																						Save $f3 Td1968.5261
																						Let $f0
																							CallCls o_param_b.2696 d:$a1 f:
																							Let $f1
																								Restore Td1968.5261
																								Let $f0
																									FMul $f1 $f0
																									Let $f1
																										Restore Td1967.5259
																										Let $f0
																											FAdd $f1 $f0
																											Let $f1
																												Restore w2.2811
																												Let $f2
																													Restore v2.2808
																													Let $f3
																														FMul $f2 $f1
																														Let $a1
																															Restore m.2805
																															Let Tu7186
																																Save $f1 w2.2811
																																Let Tu7185
																																	Save $f2 v2.2808
																																	Let Tu7184
																																		Save $a1 m.2805
																																		Let Tu7183
																																			Save $f0 Td1971.5255
																																			Let Tu7182
																																				Save $f3 Td1972.5257
																																				Let $f0
																																					CallCls o_param_c.2698 d:$a1 f:
																																					Let $f1
																																						Restore Td1972.5257
																																						Let $f0
																																							FMul $f1 $f0
																																							Let $f1
																																								Restore Td1971.5255
																																								Let $f0
																																									FAdd $f1 $f0
																																									Let $a1
																																										Restore m.2805
																																										Let Tu7188
																																											Save $a1 m.2805
																																											Let Tu7187
																																												Save $f0 diag_part.5234
																																												Let $a1
																																													CallCls o_isrot.2692 d:$a1 f:
																																													Let $a2
																																														Li 0
																																														Ans
																																															IfEq $a1 $a2
																																																Let $f0
																																																	Restore diag_part.5234
																																																	Ans
																																																		FMr $f0
																																																Let $f0
																																																	Restore w1.2810
																																																	Let $f1
																																																		Restore v2.2808
																																																		Let $f2
																																																			FMul $f1 $f0
																																																			Let $f3
																																																				Restore w2.2811
																																																				Let $f4
																																																					Restore v1.2807
																																																					Let $f5
																																																						FMul $f4 $f3
																																																						Let $f2
																																																							FAdd $f2 $f5
																																																							Let $a1
																																																								Restore m.2805
																																																								Let Tu7194
																																																									Save $f4 v1.2807
																																																									Let Tu7193
																																																										Save $f0 w1.2810
																																																										Let Tu7192
																																																											Save $a1 m.2805
																																																											Let Tu7191
																																																												Save $f1 v2.2808
																																																												Let Tu7190
																																																													Save $f3 w2.2811
																																																													Let Tu7189
																																																														Save $f2 Td1979.5251
																																																														Let $f0
																																																															CallCls o_param_r1.2718 d:$a1 f:
																																																															Let $f1
																																																																Restore Td1979.5251
																																																																Let $f0
																																																																	FMul $f1 $f0
																																																																	Let $f1
																																																																		Restore w2.2811
																																																																		Let $f2
																																																																			Restore v0.2806
																																																																			Let $f1
																																																																				FMul $f2 $f1
																																																																				Let $f3
																																																																					Restore w0.2809
																																																																					Let $f4
																																																																						Restore v2.2808
																																																																						Let $f4
																																																																							FMul $f4 $f3
																																																																							Let $f1
																																																																								FAdd $f1 $f4
																																																																								Let $a1
																																																																									Restore m.2805
																																																																									Let Tu7199
																																																																										Save $a1 m.2805
																																																																										Let Tu7198
																																																																											Save $f3 w0.2809
																																																																											Let Tu7197
																																																																												Save $f2 v0.2806
																																																																												Let Tu7196
																																																																													Save $f0 Td1981.5245
																																																																													Let Tu7195
																																																																														Save $f1 Td1984.5247
																																																																														Let $f0
																																																																															CallCls o_param_r2.2720 d:$a1 f:
																																																																															Let $f1
																																																																																Restore Td1984.5247
																																																																																Let $f0
																																																																																	FMul $f1 $f0
																																																																																	Let $f1
																																																																																		Restore Td1981.5245
																																																																																		Let $f0
																																																																																			FAdd $f1 $f0
																																																																																			Let $f1
																																																																																				Restore w1.2810
																																																																																				Let $f2
																																																																																					Restore v0.2806
																																																																																					Let $f1
																																																																																						FMul $f2 $f1
																																																																																						Let $f2
																																																																																							Restore w0.2809
																																																																																							Let $f3
																																																																																								Restore v1.2807
																																																																																								Let $f2
																																																																																									FMul $f3 $f2
																																																																																									Let $f1
																																																																																										FAdd $f1 $f2
																																																																																										Let $a1
																																																																																											Restore m.2805
																																																																																											Let Tu7201
																																																																																												Save $f0 Td1987.5239
																																																																																												Let Tu7200
																																																																																													Save $f1 Td1990.5241
																																																																																													Let $f0
																																																																																														CallCls o_param_r3.2722 d:$a1 f:
																																																																																														Let $f1
																																																																																															Restore Td1990.5241
																																																																																															Let $f0
																																																																																																FMul $f1 $f0
																																																																																																Let $f1
																																																																																																	Restore Td1987.5239
																																																																																																	Let $f0
																																																																																																		FAdd $f1 $f0
																																																																																																		Let $f0
																																																																																																			CallCls min_caml_fhalf d:f:$f0 
																																																																																																			Let $f1
																																																																																																				Restore diag_part.5234
																																																																																																				Ans
																																																																																																					FAdd $f1 $f0
solver_second.2812 (args) : $a1 (fargs) : $f0 
	Let $f3
		Lfd $a2 0
		Let $f4
			Lfd $a2 8
			Let $f5
				Lfd $a2 16
				Let Tu7206
					Save $f2 b2.2817
					Let Tu7205
						Save $f1 b1.2816
						Let Tu7204
							Save $f0 b0.2815
							Let Tu7203
								Save $a1 m.2813
								Let Tu7202
									Save $a2 dirvec.2814
									Let $f0
										CallCls quadratic.2799 d:$a1 f:$f3 $f4 $f5 
										Let Tu7207
											Save $f0 aa.5198
											Let $a1
												CallCls min_caml_fiszero d:f:$f0 
												Let $a2
													Li 0
													Ans
														IfEq $a1 $a2
															Let $a1
																Restore dirvec.2814
																Let $f0
																	Lfd $a1 0
																	Let $f1
																		Lfd $a1 8
																		Let $f2
																			Lfd $a1 16
																			Let $f3
																				Restore b0.2815
																				Let $f4
																					Restore b1.2816
																					Let $f5
																						Restore b2.2817
																						Let $a1
																							Restore m.2813
																							Let Tu7211
																								Save $f5 b2.2817
																								Let Tu7210
																									Save $f4 b1.2816
																									Let Tu7209
																										Save $f3 b0.2815
																										Let Tu7208
																											Save $a1 m.2813
																											Let $f0
																												CallCls bilinear.2804 d:$a1 f:$f0 $f1 $f2 $f3 $f4 $f5 
																												Let $f1
																													Restore b0.2815
																													Let $f2
																														Restore b1.2816
																														Let $f3
																															Restore b2.2817
																															Let $a1
																																Restore m.2813
																																Let Tu7213
																																	Save $f0 bb.5201
																																	Let Tu7212
																																		Save $a1 m.2813
																																		Let $f0
																																			CallCls quadratic.2799 d:$a1 f:$f1 $f2 $f3 
																																			Let $a1
																																				Restore m.2813
																																				Let Tu7215
																																					Save $a1 m.2813
																																					Let Tu7214
																																						Save $f0 cc0.5202
																																						Let $a1
																																							CallCls o_form.2686 d:$a1 f:
																																							Let $a2
																																								Li 3
																																								Let $f0
																																									IfEq $a1 $a2
																																										Let $f0
																																											FLi l.6346
																																											Let $f1
																																												Restore cc0.5202
																																												Ans
																																													FSub $f1 $f0
																																										Let $f0
																																											Restore cc0.5202
																																											Ans
																																												FMr $f0
																																									Let $f1
																																										Restore bb.5201
																																										Let Tu7217
																																											Save $f1 bb.5201
																																											Let Tu7216
																																												Save $f0 cc.5203
																																												Let $f0
																																													CallCls min_caml_fsqr d:f:$f1 
																																													Let $f1
																																														Restore cc.5203
																																														Let $f2
																																															Restore aa.5198
																																															Let $f1
																																																FMul $f2 $f1
																																																Let $f0
																																																	FSub $f0 $f1
																																																	Let Tu7219
																																																		Save $f2 aa.5198
																																																		Let Tu7218
																																																			Save $f0 d.5204
																																																			Let $a1
																																																				CallCls min_caml_fispos d:f:$f0 
																																																				Let $a2
																																																					Li 0
																																																					Ans
																																																						IfEq $a1 $a2
																																																							Ans
																																																								Li 0
																																																							Let $f0
																																																								Restore d.5204
																																																								Let $f0
																																																									CallCls min_caml_sqrt d:f:$f0 
																																																									Let $a1
																																																										Restore m.2813
																																																										Let Tu7220
																																																											Save $f0 sd.5207
																																																											Let $a1
																																																												CallCls o_isinvert.2690 d:$a1 f:
																																																												Let $a2
																																																													Li 0
																																																													Let $f0
																																																														IfEq $a1 $a2
																																																															Let $f0
																																																																Restore sd.5207
																																																																Ans
																																																																	CallCls min_caml_fneg d:f:$f0 
																																																															Let $f0
																																																																Restore sd.5207
																																																																Ans
																																																																	FMr $f0
																																																														Let $a1
																																																															SetL min_caml_solver_dist
																																																															Let $f1
																																																																Restore bb.5201
																																																																Let $f0
																																																																	FSub $f0 $f1
																																																																	Let $f1
																																																																		Restore aa.5198
																																																																		Let $f1
																																																																			FReciprocal $f1
																																																																			Let $f0
																																																																				FMul $f0 $f1
																																																																				Let $f30
																																																																					Stfd $f0 $a1 0
																																																																					Ans
																																																																						Li 1
															Ans
																Li 0
solver.2818 (args) : $a1 (fargs) : 
	Let $a4
		SetL min_caml_objects
		Let $a1
			Slw $a1 2
			Let $a1
				Lwz $a4 $a1
				Let $f0
					Lfd $a3 0
					Let Tu7224
						Save $a2 dirvec.2820
						Let Tu7223
							Save $a1 m.5181
							Let Tu7222
								Save $a3 org.2821
								Let Tu7221
									Save $f0 Td1927.5194
									Let $f0
										CallCls o_param_x.2702 d:$a1 f:
										Let $f1
											Restore Td1927.5194
											Let $f0
												FSub $f1 $f0
												Let $a1
													Restore org.2821
													Let $f1
														Lfd $a1 8
														Let $a2
															Restore m.5181
															Let Tu7228
																Save $f0 b0.5182
																Let Tu7227
																	Save $a2 m.5181
																	Let Tu7226
																		Save $a1 org.2821
																		Let Tu7225
																			Save $f1 Td1930.5191
																			Let $f0
																				CallCls o_param_y.2704 d:$a2 f:
																				Let $f1
																					Restore Td1930.5191
																					Let $f0
																						FSub $f1 $f0
																						Let $a1
																							Restore org.2821
																							Let $f1
																								Lfd $a1 16
																								Let $a1
																									Restore m.5181
																									Let Tu7231
																										Save $f0 b1.5183
																										Let Tu7230
																											Save $a1 m.5181
																											Let Tu7229
																												Save $f1 Td1933.5188
																												Let $f0
																													CallCls o_param_z.2706 d:$a1 f:
																													Let $f1
																														Restore Td1933.5188
																														Let $f0
																															FSub $f1 $f0
																															Let $a1
																																Restore m.5181
																																Let Tu7233
																																	Save $f0 b2.5184
																																	Let Tu7232
																																		Save $a1 m.5181
																																		Let $a1
																																			CallCls o_form.2686 d:$a1 f:
																																			Let $a2
																																				Li 1
																																				Ans
																																					IfEq $a1 $a2
																																						Let $f0
																																							Restore b0.5182
																																							Let $f1
																																								Restore b1.5183
																																								Let $f2
																																									Restore b2.5184
																																									Let $a1
																																										Restore m.5181
																																										Let $a2
																																											Restore dirvec.2820
																																											Ans
																																												CallCls solver_rect.2787 d:$a1 $a2 f:$f0 $f1 $f2 
																																						Let $a2
																																							Li 2
																																							Ans
																																								IfEq $a1 $a2
																																									Let $f0
																																										Restore b0.5182
																																										Let $f1
																																											Restore b1.5183
																																											Let $f2
																																												Restore b2.5184
																																												Let $a1
																																													Restore m.5181
																																													Let $a2
																																														Restore dirvec.2820
																																														Ans
																																															CallCls solver_surface.2793 d:$a1 $a2 f:$f0 $f1 $f2 
																																									Let $f0
																																										Restore b0.5182
																																										Let $f1
																																											Restore b1.5183
																																											Let $f2
																																												Restore b2.5184
																																												Let $a1
																																													Restore m.5181
																																													Let $a2
																																														Restore dirvec.2820
																																														Ans
																																															CallCls solver_second.2812 d:$a1 $a2 f:$f0 $f1 $f2 
solver_rect_fast.2822 (args) : $a1 (fargs) : $f0 
	Let $f3
		Lfd $a3 0
		Let $f3
			FSub $f3 $f0
			Let $f4
				Lfd $a3 8
				Let $f3
					FMul $f3 $f4
					Let $f4
						Lfd $a2 8
						Let $f4
							FMul $f3 $f4
							Let $f4
								FAdd $f4 $f1
								Let Tu7240
									Save $f0 b0.2826
									Let Tu7239
										Save $f1 b1.2827
										Let Tu7238
											Save $a3 dconst.2825
											Let Tu7237
												Save $f2 b2.2828
												Let Tu7236
													Save $f3 d0.5088
													Let Tu7235
														Save $a2 v.2824
														Let Tu7234
															Save $a1 m.2823
															Let $f0
																CallCls min_caml_fabs d:f:$f4 
																Let $a1
																	Restore m.2823
																	Let Tu7242
																		Save $a1 m.2823
																		Let Tu7241
																			Save $f0 Td1847.5170
																			Let $f1
																				CallCls o_param_b.2696 d:$a1 f:
																				Let $f0
																					Restore Td1847.5170
																					Let $a1
																						CallCls min_caml_fless d:f:$f0 $f1 
																						Let $a2
																							Li 0
																							Let $a1
																								IfEq $a1 $a2
																									Ans
																										Li 0
																									Let $a1
																										Restore v.2824
																										Let $f0
																											Lfd $a1 16
																											Let $f1
																												Restore d0.5088
																												Let $f0
																													FMul $f1 $f0
																													Let $f2
																														Restore b2.2828
																														Let $f0
																															FAdd $f0 $f2
																															Let Tu7245
																																Save $f1 d0.5088
																																Let Tu7244
																																	Save $f2 b2.2828
																																	Let Tu7243
																																		Save $a1 v.2824
																																		Let $f0
																																			CallCls min_caml_fabs d:f:$f0 
																																			Let $a1
																																				Restore m.2823
																																				Let Tu7247
																																					Save $a1 m.2823
																																					Let Tu7246
																																						Save $f0 Td1855.5164
																																						Let $f1
																																							CallCls o_param_c.2698 d:$a1 f:
																																							Let $f0
																																								Restore Td1855.5164
																																								Let $a1
																																									CallCls min_caml_fless d:f:$f0 $f1 
																																									Let $a2
																																										Li 0
																																										Ans
																																											IfEq $a1 $a2
																																												Ans
																																													Li 0
																																												Let $a1
																																													Restore dconst.2825
																																													Let $f0
																																														Lfd $a1 8
																																														Let Tu7248
																																															Save $a1 dconst.2825
																																															Let $a1
																																																CallCls min_caml_fiszero d:f:$f0 
																																																Let $a2
																																																	Li 0
																																																	Ans
																																																		IfEq $a1 $a2
																																																			Ans
																																																				Li 1
																																																			Ans
																																																				Li 0
																								Let $a2
																									Li 0
																									Ans
																										IfEq $a1 $a2
																											Let $a1
																												Restore dconst.2825
																												Let $f0
																													Lfd $a1 16
																													Let $f1
																														Restore b1.2827
																														Let $f0
																															FSub $f0 $f1
																															Let $f2
																																Lfd $a1 24
																																Let $f0
																																	FMul $f0 $f2
																																	Let $a2
																																		Restore v.2824
																																		Let $f2
																																			Lfd $a2 0
																																			Let $f2
																																				FMul $f0 $f2
																																				Let $f3
																																					Restore b0.2826
																																					Let $f2
																																						FAdd $f2 $f3
																																						Let Tu7253
																																							Save $f1 b1.2827
																																							Let Tu7252
																																								Save $f3 b0.2826
																																								Let Tu7251
																																									Save $a1 dconst.2825
																																									Let Tu7250
																																										Save $f0 d1.5094
																																										Let Tu7249
																																											Save $a2 v.2824
																																											Let $f0
																																												CallCls min_caml_fabs d:f:$f2 
																																												Let $a1
																																													Restore m.2823
																																													Let Tu7255
																																														Save $a1 m.2823
																																														Let Tu7254
																																															Save $f0 Td1874.5145
																																															Let $f1
																																																CallCls o_param_a.2694 d:$a1 f:
																																																Let $f0
																																																	Restore Td1874.5145
																																																	Let $a1
																																																		CallCls min_caml_fless d:f:$f0 $f1 
																																																		Let $a2
																																																			Li 0
																																																			Let $a1
																																																				IfEq $a1 $a2
																																																					Ans
																																																						Li 0
																																																					Let $a1
																																																						Restore v.2824
																																																						Let $f0
																																																							Lfd $a1 16
																																																							Let $f1
																																																								Restore d1.5094
																																																								Let $f0
																																																									FMul $f1 $f0
																																																									Let $f2
																																																										Restore b2.2828
																																																										Let $f0
																																																											FAdd $f0 $f2
																																																											Let Tu7258
																																																												Save $f1 d1.5094
																																																												Let Tu7257
																																																													Save $a1 v.2824
																																																													Let Tu7256
																																																														Save $f2 b2.2828
																																																														Let $f0
																																																															CallCls min_caml_fabs d:f:$f0 
																																																															Let $a1
																																																																Restore m.2823
																																																																Let Tu7260
																																																																	Save $a1 m.2823
																																																																	Let Tu7259
																																																																		Save $f0 Td1882.5139
																																																																		Let $f1
																																																																			CallCls o_param_c.2698 d:$a1 f:
																																																																			Let $f0
																																																																				Restore Td1882.5139
																																																																				Let $a1
																																																																					CallCls min_caml_fless d:f:$f0 $f1 
																																																																					Let $a2
																																																																						Li 0
																																																																						Ans
																																																																							IfEq $a1 $a2
																																																																								Ans
																																																																									Li 0
																																																																								Let $a1
																																																																									Restore dconst.2825
																																																																									Let $f0
																																																																										Lfd $a1 24
																																																																										Let Tu7261
																																																																											Save $a1 dconst.2825
																																																																											Let $a1
																																																																												CallCls min_caml_fiszero d:f:$f0 
																																																																												Let $a2
																																																																													Li 0
																																																																													Ans
																																																																														IfEq $a1 $a2
																																																																															Ans
																																																																																Li 1
																																																																															Ans
																																																																																Li 0
																																																				Let $a2
																																																					Li 0
																																																					Ans
																																																						IfEq $a1 $a2
																																																							Let $a1
																																																								Restore dconst.2825
																																																								Let $f0
																																																									Lfd $a1 32
																																																									Let $f1
																																																										Restore b2.2828
																																																										Let $f0
																																																											FSub $f0 $f1
																																																											Let $f1
																																																												Lfd $a1 40
																																																												Let $f0
																																																													FMul $f0 $f1
																																																													Let $a2
																																																														Restore v.2824
																																																														Let $f1
																																																															Lfd $a2 0
																																																															Let $f1
																																																																FMul $f0 $f1
																																																																Let $f2
																																																																	Restore b0.2826
																																																																	Let $f1
																																																																		FAdd $f1 $f2
																																																																		Let Tu7264
																																																																			Save $a1 dconst.2825
																																																																			Let Tu7263
																																																																				Save $f0 d2.5100
																																																																				Let Tu7262
																																																																					Save $a2 v.2824
																																																																					Let $f0
																																																																						CallCls min_caml_fabs d:f:$f1 
																																																																						Let $a1
																																																																							Restore m.2823
																																																																							Let Tu7266
																																																																								Save $a1 m.2823
																																																																								Let Tu7265
																																																																									Save $f0 Td1901.5120
																																																																									Let $f1
																																																																										CallCls o_param_a.2694 d:$a1 f:
																																																																										Let $f0
																																																																											Restore Td1901.5120
																																																																											Let $a1
																																																																												CallCls min_caml_fless d:f:$f0 $f1 
																																																																												Let $a2
																																																																													Li 0
																																																																													Let $a1
																																																																														IfEq $a1 $a2
																																																																															Ans
																																																																																Li 0
																																																																															Let $a1
																																																																																Restore v.2824
																																																																																Let $f0
																																																																																	Lfd $a1 8
																																																																																	Let $f1
																																																																																		Restore d2.5100
																																																																																		Let $f0
																																																																																			FMul $f1 $f0
																																																																																			Let $f2
																																																																																				Restore b1.2827
																																																																																				Let $f0
																																																																																					FAdd $f0 $f2
																																																																																					Let Tu7267
																																																																																						Save $f1 d2.5100
																																																																																						Let $f0
																																																																																							CallCls min_caml_fabs d:f:$f0 
																																																																																							Let $a1
																																																																																								Restore m.2823
																																																																																								Let Tu7268
																																																																																									Save $f0 Td1909.5114
																																																																																									Let $f1
																																																																																										CallCls o_param_b.2696 d:$a1 f:
																																																																																										Let $f0
																																																																																											Restore Td1909.5114
																																																																																											Let $a1
																																																																																												CallCls min_caml_fless d:f:$f0 $f1 
																																																																																												Let $a2
																																																																																													Li 0
																																																																																													Ans
																																																																																														IfEq $a1 $a2
																																																																																															Ans
																																																																																																Li 0
																																																																																															Let $a1
																																																																																																Restore dconst.2825
																																																																																																Let $f0
																																																																																																	Lfd $a1 40
																																																																																																	Let $a1
																																																																																																		CallCls min_caml_fiszero d:f:$f0 
																																																																																																		Let $a2
																																																																																																			Li 0
																																																																																																			Ans
																																																																																																				IfEq $a1 $a2
																																																																																																					Ans
																																																																																																						Li 1
																																																																																																					Ans
																																																																																																						Li 0
																																																																														Let $a2
																																																																															Li 0
																																																																															Ans
																																																																																IfEq $a1 $a2
																																																																																	Ans
																																																																																		Li 0
																																																																																	Let $a1
																																																																																		SetL min_caml_solver_dist
																																																																																		Let $f0
																																																																																			Restore d2.5100
																																																																																			Let $f30
																																																																																				Stfd $f0 $a1 0
																																																																																				Ans
																																																																																					Li 3
																																																							Let $a1
																																																								SetL min_caml_solver_dist
																																																								Let $f0
																																																									Restore d1.5094
																																																									Let $f30
																																																										Stfd $f0 $a1 0
																																																										Ans
																																																											Li 2
																											Let $a1
																												SetL min_caml_solver_dist
																												Let $f0
																													Restore d0.5088
																													Let $f30
																														Stfd $f0 $a1 0
																														Ans
																															Li 1
solver_surface_fast.2829 (args) : $a1 (fargs) : $f0 
	Let $f3
		Lfd $a2 0
		Let Tu7272
			Save $f2 b2.2834
			Let Tu7271
				Save $f1 b1.2833
				Let Tu7270
					Save $f0 b0.2832
					Let Tu7269
						Save $a2 dconst.2831
						Let $a1
							CallCls min_caml_fisneg d:f:$f3 
							Let $a2
								Li 0
								Ans
									IfEq $a1 $a2
										Ans
											Li 0
										Let $a1
											SetL min_caml_solver_dist
											Let $a2
												Restore dconst.2831
												Let $f0
													Lfd $a2 8
													Let $f1
														Restore b0.2832
														Let $f0
															FMul $f0 $f1
															Let $f1
																Lfd $a2 16
																Let $f2
																	Restore b1.2833
																	Let $f1
																		FMul $f1 $f2
																		Let $f0
																			FAdd $f0 $f1
																			Let $f1
																				Lfd $a2 24
																				Let $f2
																					Restore b2.2834
																					Let $f1
																						FMul $f1 $f2
																						Let $f0
																							FAdd $f0 $f1
																							Let $f30
																								Stfd $f0 $a1 0
																								Ans
																									Li 1
solver_second_fast.2835 (args) : $a1 (fargs) : $f0 
	Let $f3
		Lfd $a2 0
		Let Tu7278
			Save $f3 aa.5028
			Let Tu7277
				Save $a1 m.2836
				Let Tu7276
					Save $f2 b2.2840
					Let Tu7275
						Save $f1 b1.2839
						Let Tu7274
							Save $f0 b0.2838
							Let Tu7273
								Save $a2 dconst.2837
								Let $a1
									CallCls min_caml_fiszero d:f:$f3 
									Let $a2
										Li 0
										Ans
											IfEq $a1 $a2
												Let $a1
													Restore dconst.2837
													Let $f0
														Lfd $a1 8
														Let $f1
															Restore b0.2838
															Let $f0
																FMul $f0 $f1
																Let $f2
																	Lfd $a1 16
																	Let $f3
																		Restore b1.2839
																		Let $f2
																			FMul $f2 $f3
																			Let $f0
																				FAdd $f0 $f2
																				Let $f2
																					Lfd $a1 24
																					Let $f4
																						Restore b2.2840
																						Let $f2
																							FMul $f2 $f4
																							Let $f0
																								FAdd $f0 $f2
																								Let $a2
																									Restore m.2836
																									Let Tu7281
																										Save $a1 dconst.2837
																										Let Tu7280
																											Save $f0 neg_bb.5031
																											Let Tu7279
																												Save $a2 m.2836
																												Let $f0
																													CallCls quadratic.2799 d:$a2 f:$f1 $f3 $f4 
																													Let $a1
																														Restore m.2836
																														Let Tu7283
																															Save $a1 m.2836
																															Let Tu7282
																																Save $f0 cc0.5032
																																Let $a1
																																	CallCls o_form.2686 d:$a1 f:
																																	Let $a2
																																		Li 3
																																		Let $f0
																																			IfEq $a1 $a2
																																				Let $f0
																																					FLi l.6346
																																					Let $f1
																																						Restore cc0.5032
																																						Ans
																																							FSub $f1 $f0
																																				Let $f0
																																					Restore cc0.5032
																																					Ans
																																						FMr $f0
																																			Let $f1
																																				Restore neg_bb.5031
																																				Let Tu7285
																																					Save $f1 neg_bb.5031
																																					Let Tu7284
																																						Save $f0 cc.5033
																																						Let $f0
																																							CallCls min_caml_fsqr d:f:$f1 
																																							Let $f1
																																								Restore cc.5033
																																								Let $f2
																																									Restore aa.5028
																																									Let $f1
																																										FMul $f2 $f1
																																										Let $f0
																																											FSub $f0 $f1
																																											Let Tu7286
																																												Save $f0 d.5034
																																												Let $a1
																																													CallCls min_caml_fispos d:f:$f0 
																																													Let $a2
																																														Li 0
																																														Ans
																																															IfEq $a1 $a2
																																																Ans
																																																	Li 0
																																																Let $a1
																																																	Restore m.2836
																																																	Let $a1
																																																		CallCls o_isinvert.2690 d:$a1 f:
																																																		Let $a2
																																																			Li 0
																																																			Let $f30
																																																				IfEq $a1 $a2
																																																					Let $a1
																																																						SetL min_caml_solver_dist
																																																						Let $f0
																																																							Restore d.5034
																																																							Let Tu7287
																																																								Save $a1 Ta1807.5047
																																																								Let $f0
																																																									CallCls min_caml_sqrt d:f:$f0 
																																																									Let $f1
																																																										Restore neg_bb.5031
																																																										Let $f0
																																																											FSub $f1 $f0
																																																											Let $a1
																																																												Restore dconst.2837
																																																												Let $f1
																																																													Lfd $a1 32
																																																													Let $f0
																																																														FMul $f0 $f1
																																																														Let $a1
																																																															Restore Ta1807.5047
																																																															Ans
																																																																Stfd $f0 $a1 0
																																																					Let $a1
																																																						SetL min_caml_solver_dist
																																																						Let $f0
																																																							Restore d.5034
																																																							Let Tu7288
																																																								Save $a1 Ta1814.5040
																																																								Let $f0
																																																									CallCls min_caml_sqrt d:f:$f0 
																																																									Let $f1
																																																										Restore neg_bb.5031
																																																										Let $f0
																																																											FAdd $f1 $f0
																																																											Let $a1
																																																												Restore dconst.2837
																																																												Let $f1
																																																													Lfd $a1 32
																																																													Let $f0
																																																														FMul $f0 $f1
																																																														Let $a1
																																																															Restore Ta1814.5040
																																																															Ans
																																																																Stfd $f0 $a1 0
																																																				Ans
																																																					Li 1
												Ans
													Li 0
solver_fast.2841 (args) : $a1 (fargs) : 
	Let $a4
		SetL min_caml_objects
		Let $a5
			Slw $a1 2
			Let $a4
				Lwz $a4 $a5
				Let $f0
					Lfd $a3 0
					Let Tu7293
						Save $a1 index.2842
						Let Tu7292
							Save $a2 dirvec.2843
							Let Tu7291
								Save $a4 m.5008
								Let Tu7290
									Save $a3 org.2844
									Let Tu7289
										Save $f0 Td1774.5024
										Let $f0
											CallCls o_param_x.2702 d:$a4 f:
											Let $f1
												Restore Td1774.5024
												Let $f0
													FSub $f1 $f0
													Let $a1
														Restore org.2844
														Let $f1
															Lfd $a1 8
															Let $a2
																Restore m.5008
																Let Tu7297
																	Save $f0 b0.5009
																	Let Tu7296
																		Save $a2 m.5008
																		Let Tu7295
																			Save $a1 org.2844
																			Let Tu7294
																				Save $f1 Td1777.5021
																				Let $f0
																					CallCls o_param_y.2704 d:$a2 f:
																					Let $f1
																						Restore Td1777.5021
																						Let $f0
																							FSub $f1 $f0
																							Let $a1
																								Restore org.2844
																								Let $f1
																									Lfd $a1 16
																									Let $a1
																										Restore m.5008
																										Let Tu7300
																											Save $f0 b1.5010
																											Let Tu7299
																												Save $a1 m.5008
																												Let Tu7298
																													Save $f1 Td1780.5018
																													Let $f0
																														CallCls o_param_z.2706 d:$a1 f:
																														Let $f1
																															Restore Td1780.5018
																															Let $f0
																																FSub $f1 $f0
																																Let $a1
																																	Restore dirvec.2843
																																	Let Tu7302
																																		Save $f0 b2.5011
																																		Let Tu7301
																																			Save $a1 dirvec.2843
																																			Let $a1
																																				CallCls d_const.2747 d:$a1 f:
																																				Let $a2
																																					Restore index.2842
																																					Let $a2
																																						Slw $a2 2
																																						Let $a1
																																							Lwz $a1 $a2
																																							Let $a2
																																								Restore m.5008
																																								Let Tu7304
																																									Save $a1 dconst.5013
																																									Let Tu7303
																																										Save $a2 m.5008
																																										Let $a1
																																											CallCls o_form.2686 d:$a2 f:
																																											Let $a2
																																												Li 1
																																												Ans
																																													IfEq $a1 $a2
																																														Let $a1
																																															Restore dirvec.2843
																																															Let $a2
																																																CallCls d_vec.2745 d:$a1 f:
																																																Let $f0
																																																	Restore b0.5009
																																																	Let $f1
																																																		Restore b1.5010
																																																		Let $f2
																																																			Restore b2.5011
																																																			Let $a1
																																																				Restore m.5008
																																																				Let $a3
																																																					Restore dconst.5013
																																																					Ans
																																																						CallCls solver_rect_fast.2822 d:$a1 $a2 $a3 f:$f0 $f1 $f2 
																																														Let $a2
																																															Li 2
																																															Ans
																																																IfEq $a1 $a2
																																																	Let $f0
																																																		Restore b0.5009
																																																		Let $f1
																																																			Restore b1.5010
																																																			Let $f2
																																																				Restore b2.5011
																																																				Let $a1
																																																					Restore m.5008
																																																					Let $a2
																																																						Restore dconst.5013
																																																						Ans
																																																							CallCls solver_surface_fast.2829 d:$a1 $a2 f:$f0 $f1 $f2 
																																																	Let $f0
																																																		Restore b0.5009
																																																		Let $f1
																																																			Restore b1.5010
																																																			Let $f2
																																																				Restore b2.5011
																																																				Let $a1
																																																					Restore m.5008
																																																					Let $a2
																																																						Restore dconst.5013
																																																						Ans
																																																							CallCls solver_second_fast.2835 d:$a1 $a2 f:$f0 $f1 $f2 
solver_surface_fast2.2845 (args) : $a1 (fargs) : $f0 
	Let $f0
		Lfd $a2 0
		Let Tu7306
			Save $a3 sconst.2848
			Let Tu7305
				Save $a2 dconst.2847
				Let $a1
					CallCls min_caml_fisneg d:f:$f0 
					Let $a2
						Li 0
						Ans
							IfEq $a1 $a2
								Ans
									Li 0
								Let $a1
									SetL min_caml_solver_dist
									Let $a2
										Restore dconst.2847
										Let $f0
											Lfd $a2 0
											Let $a2
												Restore sconst.2848
												Let $f1
													Lfd $a2 24
													Let $f0
														FMul $f0 $f1
														Let $f30
															Stfd $f0 $a1 0
															Ans
																Li 1
solver_second_fast2.2852 (args) : $a1 (fargs) : $f0 
	Let $f3
		Lfd $a2 0
		Let Tu7313
			Save $a1 m.2853
			Let Tu7312
				Save $f3 aa.4957
				Let Tu7311
					Save $a3 sconst.2855
					Let Tu7310
						Save $f2 b2.2858
						Let Tu7309
							Save $f1 b1.2857
							Let Tu7308
								Save $f0 b0.2856
								Let Tu7307
									Save $a2 dconst.2854
									Let $a1
										CallCls min_caml_fiszero d:f:$f3 
										Let $a2
											Li 0
											Ans
												IfEq $a1 $a2
													Let $a1
														Restore dconst.2854
														Let $f0
															Lfd $a1 8
															Let $f1
																Restore b0.2856
																Let $f0
																	FMul $f0 $f1
																	Let $f1
																		Lfd $a1 16
																		Let $f2
																			Restore b1.2857
																			Let $f1
																				FMul $f1 $f2
																				Let $f0
																					FAdd $f0 $f1
																					Let $f1
																						Lfd $a1 24
																						Let $f2
																							Restore b2.2858
																							Let $f1
																								FMul $f1 $f2
																								Let $f0
																									FAdd $f0 $f1
																									Let $a2
																										Restore sconst.2855
																										Let $f1
																											Lfd $a2 24
																											Let Tu7316
																												Save $a1 dconst.2854
																												Let Tu7315
																													Save $f0 neg_bb.4960
																													Let Tu7314
																														Save $f1 cc.4961
																														Let $f0
																															CallCls min_caml_fsqr d:f:$f0 
																															Let $f1
																																Restore cc.4961
																																Let $f2
																																	Restore aa.4957
																																	Let $f1
																																		FMul $f2 $f1
																																		Let $f0
																																			FSub $f0 $f1
																																			Let Tu7317
																																				Save $f0 d.4962
																																				Let $a1
																																					CallCls min_caml_fispos d:f:$f0 
																																					Let $a2
																																						Li 0
																																						Ans
																																							IfEq $a1 $a2
																																								Ans
																																									Li 0
																																								Let $a1
																																									Restore m.2853
																																									Let $a1
																																										CallCls o_isinvert.2690 d:$a1 f:
																																										Let $a2
																																											Li 0
																																											Let $f30
																																												IfEq $a1 $a2
																																													Let $a1
																																														SetL min_caml_solver_dist
																																														Let $f0
																																															Restore d.4962
																																															Let Tu7318
																																																Save $a1 Ta1747.4975
																																																Let $f0
																																																	CallCls min_caml_sqrt d:f:$f0 
																																																	Let $f1
																																																		Restore neg_bb.4960
																																																		Let $f0
																																																			FSub $f1 $f0
																																																			Let $a1
																																																				Restore dconst.2854
																																																				Let $f1
																																																					Lfd $a1 32
																																																					Let $f0
																																																						FMul $f0 $f1
																																																						Let $a1
																																																							Restore Ta1747.4975
																																																							Ans
																																																								Stfd $f0 $a1 0
																																													Let $a1
																																														SetL min_caml_solver_dist
																																														Let $f0
																																															Restore d.4962
																																															Let Tu7319
																																																Save $a1 Ta1754.4968
																																																Let $f0
																																																	CallCls min_caml_sqrt d:f:$f0 
																																																	Let $f1
																																																		Restore neg_bb.4960
																																																		Let $f0
																																																			FAdd $f1 $f0
																																																			Let $a1
																																																				Restore dconst.2854
																																																				Let $f1
																																																					Lfd $a1 32
																																																					Let $f0
																																																						FMul $f0 $f1
																																																						Let $a1
																																																							Restore Ta1754.4968
																																																							Ans
																																																								Stfd $f0 $a1 0
																																												Ans
																																													Li 1
													Ans
														Li 0
solver_fast2.2859 (args) : $a1 (fargs) : 
	Let $a3
		SetL min_caml_objects
		Let $a4
			Slw $a1 2
			Let $a3
				Lwz $a3 $a4
				Let Tu7322
					Save $a3 m.4942
					Let Tu7321
						Save $a1 index.2860
						Let Tu7320
							Save $a2 dirvec.2861
							Let $a1
								CallCls o_param_ctbl.2724 d:$a3 f:
								Let $f0
									Lfd $a1 0
									Let $f1
										Lfd $a1 8
										Let $f2
											Lfd $a1 16
											Let $a2
												Restore dirvec.2861
												Let Tu7327
													Save $a1 sconst.4943
													Let Tu7326
														Save $f2 b2.4946
														Let Tu7325
															Save $f1 b1.4945
															Let Tu7324
																Save $f0 b0.4944
																Let Tu7323
																	Save $a2 dirvec.2861
																	Let $a1
																		CallCls d_const.2747 d:$a2 f:
																		Let $a2
																			Restore index.2860
																			Let $a2
																				Slw $a2 2
																				Let $a1
																					Lwz $a1 $a2
																					Let $a2
																						Restore m.4942
																						Let Tu7329
																							Save $a1 dconst.4948
																							Let Tu7328
																								Save $a2 m.4942
																								Let $a1
																									CallCls o_form.2686 d:$a2 f:
																									Let $a2
																										Li 1
																										Ans
																											IfEq $a1 $a2
																												Let $a1
																													Restore dirvec.2861
																													Let $a2
																														CallCls d_vec.2745 d:$a1 f:
																														Let $f0
																															Restore b0.4944
																															Let $f1
																																Restore b1.4945
																																Let $f2
																																	Restore b2.4946
																																	Let $a1
																																		Restore m.4942
																																		Let $a3
																																			Restore dconst.4948
																																			Ans
																																				CallCls solver_rect_fast.2822 d:$a1 $a2 $a3 f:$f0 $f1 $f2 
																												Let $a2
																													Li 2
																													Ans
																														IfEq $a1 $a2
																															Let $f0
																																Restore b0.4944
																																Let $f1
																																	Restore b1.4945
																																	Let $f2
																																		Restore b2.4946
																																		Let $a1
																																			Restore m.4942
																																			Let $a2
																																				Restore dconst.4948
																																				Let $a3
																																					Restore sconst.4943
																																					Ans
																																						CallCls solver_surface_fast2.2845 d:$a1 $a2 $a3 f:$f0 $f1 $f2 
																															Let $f0
																																Restore b0.4944
																																Let $f1
																																	Restore b1.4945
																																	Let $f2
																																		Restore b2.4946
																																		Let $a1
																																			Restore m.4942
																																			Let $a2
																																				Restore dconst.4948
																																				Let $a3
																																					Restore sconst.4943
																																					Ans
																																						CallCls solver_second_fast2.2852 d:$a1 $a2 $a3 f:$f0 $f1 $f2 
setup_rect_table.2862 (args) : $a1 (fargs) : 
	Let $a3
		Li 6
		Let $f0
			FLi l.6345
			Let Tu7331
				Save $a2 m.2864
				Let Tu7330
					Save $a1 vec.2863
					Let $a1
						CallCls min_caml_create_float_array d:$a3 f:$f0 
						Let $a2
							Restore vec.2863
							Let $f0
								Lfd $a2 0
								Let Tu7333
									Save $a1 const.4873
									Let Tu7332
										Save $a2 vec.2863
										Let $a1
											CallCls min_caml_fiszero d:f:$f0 
											Let $a2
												Li 0
												Let $f30
													IfEq $a1 $a2
														Let $a1
															Restore m.2864
															Let Tu7334
																Save $a1 m.2864
																Let $a1
																	CallCls o_isinvert.2690 d:$a1 f:
																	Let $a2
																		Restore vec.2863
																		Let $f0
																			Lfd $a2 0
																			Let Tu7336
																				Save $a2 vec.2863
																				Let Tu7335
																					Save $a1 Tb1665.4934
																					Let $a2
																						CallCls min_caml_fisneg d:f:$f0 
																						Let $a1
																							Restore Tb1665.4934
																							Let $a1
																								CallCls xor.2627 d:$a1 $a2 f:
																								Let $a2
																									Restore m.2864
																									Let Tu7338
																										Save $a2 m.2864
																										Let Tu7337
																											Save $a1 Tb1669.4932
																											Let $f0
																												CallCls o_param_a.2694 d:$a2 f:
																												Let $a1
																													Restore Tb1669.4932
																													Let $f0
																														CallCls fneg_cond.2632 d:$a1 f:$f0 
																														Let $a1
																															Restore const.4873
																															Let $f30
																																Stfd $f0 $a1 0
																																Let $f0
																																	FLi l.6346
																																	Let $a2
																																		Restore vec.2863
																																		Let $f1
																																			Lfd $a2 0
																																			Let $f1
																																				FReciprocal $f1
																																				Let $f0
																																					FMul $f0 $f1
																																					Ans
																																						Stfd $f0 $a1 8
														Let $f0
															FLi l.6345
															Let $a1
																Restore const.4873
																Ans
																	Stfd $f0 $a1 8
													Let $a2
														Restore vec.2863
														Let $f0
															Lfd $a2 8
															Let Tu7340
																Save $a1 const.4873
																Let Tu7339
																	Save $a2 vec.2863
																	Let $a1
																		CallCls min_caml_fiszero d:f:$f0 
																		Let $a2
																			Li 0
																			Let $f30
																				IfEq $a1 $a2
																					Let $a1
																						Restore m.2864
																						Let Tu7341
																							Save $a1 m.2864
																							Let $a1
																								CallCls o_isinvert.2690 d:$a1 f:
																								Let $a2
																									Restore vec.2863
																									Let $f0
																										Lfd $a2 8
																										Let Tu7343
																											Save $a2 vec.2863
																											Let Tu7342
																												Save $a1 Tb1685.4913
																												Let $a2
																													CallCls min_caml_fisneg d:f:$f0 
																													Let $a1
																														Restore Tb1685.4913
																														Let $a1
																															CallCls xor.2627 d:$a1 $a2 f:
																															Let $a2
																																Restore m.2864
																																Let Tu7345
																																	Save $a2 m.2864
																																	Let Tu7344
																																		Save $a1 Tb1689.4911
																																		Let $f0
																																			CallCls o_param_b.2696 d:$a2 f:
																																			Let $a1
																																				Restore Tb1689.4911
																																				Let $f0
																																					CallCls fneg_cond.2632 d:$a1 f:$f0 
																																					Let $a1
																																						Restore const.4873
																																						Let $f30
																																							Stfd $f0 $a1 16
																																							Let $f0
																																								FLi l.6346
																																								Let $a2
																																									Restore vec.2863
																																									Let $f1
																																										Lfd $a2 8
																																										Let $f1
																																											FReciprocal $f1
																																											Let $f0
																																												FMul $f0 $f1
																																												Ans
																																													Stfd $f0 $a1 24
																					Let $f0
																						FLi l.6345
																						Let $a1
																							Restore const.4873
																							Ans
																								Stfd $f0 $a1 24
																				Let $a2
																					Restore vec.2863
																					Let $f0
																						Lfd $a2 16
																						Let Tu7347
																							Save $a1 const.4873
																							Let Tu7346
																								Save $a2 vec.2863
																								Let $a1
																									CallCls min_caml_fiszero d:f:$f0 
																									Let $a2
																										Li 0
																										Let $f30
																											IfEq $a1 $a2
																												Let $a1
																													Restore m.2864
																													Let Tu7348
																														Save $a1 m.2864
																														Let $a1
																															CallCls o_isinvert.2690 d:$a1 f:
																															Let $a2
																																Restore vec.2863
																																Let $f0
																																	Lfd $a2 16
																																	Let Tu7350
																																		Save $a2 vec.2863
																																		Let Tu7349
																																			Save $a1 Tb1705.4892
																																			Let $a2
																																				CallCls min_caml_fisneg d:f:$f0 
																																				Let $a1
																																					Restore Tb1705.4892
																																					Let $a1
																																						CallCls xor.2627 d:$a1 $a2 f:
																																						Let $a2
																																							Restore m.2864
																																							Let Tu7351
																																								Save $a1 Tb1709.4890
																																								Let $f0
																																									CallCls o_param_c.2698 d:$a2 f:
																																									Let $a1
																																										Restore Tb1709.4890
																																										Let $f0
																																											CallCls fneg_cond.2632 d:$a1 f:$f0 
																																											Let $a1
																																												Restore const.4873
																																												Let $f30
																																													Stfd $f0 $a1 32
																																													Let $f0
																																														FLi l.6346
																																														Let $a2
																																															Restore vec.2863
																																															Let $f1
																																																Lfd $a2 16
																																																Let $f1
																																																	FReciprocal $f1
																																																	Let $f0
																																																		FMul $f0 $f1
																																																		Ans
																																																			Stfd $f0 $a1 40
																												Let $f0
																													FLi l.6345
																													Let $a1
																														Restore const.4873
																														Ans
																															Stfd $f0 $a1 40
																											Ans
																												Mr $a1
setup_surface_table.2865 (args) : $a1 (fargs) : 
	Let $a3
		Li 4
		Let $f0
			FLi l.6345
			Let Tu7353
				Save $a2 m.2867
				Let Tu7352
					Save $a1 vec.2866
					Let $a1
						CallCls min_caml_create_float_array d:$a3 f:$f0 
						Let $a2
							Restore vec.2866
							Let $f0
								Lfd $a2 0
								Let $a3
									Restore m.2867
									Let Tu7357
										Save $a1 const.4829
										Let Tu7356
											Save $a3 m.2867
											Let Tu7355
												Save $a2 vec.2866
												Let Tu7354
													Save $f0 Td1623.4868
													Let $f0
														CallCls o_param_a.2694 d:$a3 f:
														Let $f1
															Restore Td1623.4868
															Let $f0
																FMul $f1 $f0
																Let $a1
																	Restore vec.2866
																	Let $f1
																		Lfd $a1 8
																		Let $a2
																			Restore m.2867
																			Let Tu7361
																				Save $a2 m.2867
																				Let Tu7360
																					Save $a1 vec.2866
																					Let Tu7359
																						Save $f0 Td1625.4863
																						Let Tu7358
																							Save $f1 Td1627.4865
																							Let $f0
																								CallCls o_param_b.2696 d:$a2 f:
																								Let $f1
																									Restore Td1627.4865
																									Let $f0
																										FMul $f1 $f0
																										Let $f1
																											Restore Td1625.4863
																											Let $f0
																												FAdd $f1 $f0
																												Let $a1
																													Restore vec.2866
																													Let $f1
																														Lfd $a1 16
																														Let $a1
																															Restore m.2867
																															Let Tu7364
																																Save $a1 m.2867
																																Let Tu7363
																																	Save $f0 Td1630.4858
																																	Let Tu7362
																																		Save $f1 Td1632.4860
																																		Let $f0
																																			CallCls o_param_c.2698 d:$a1 f:
																																			Let $f1
																																				Restore Td1632.4860
																																				Let $f0
																																					FMul $f1 $f0
																																					Let $f1
																																						Restore Td1630.4858
																																						Let $f0
																																							FAdd $f1 $f0
																																							Let Tu7365
																																								Save $f0 d.4830
																																								Let $a1
																																									CallCls min_caml_fispos d:f:$f0 
																																									Let $a2
																																										Li 0
																																										Let $f30
																																											IfEq $a1 $a2
																																												Let $f0
																																													FLi l.6345
																																													Let $a1
																																														Restore const.4829
																																														Ans
																																															Stfd $f0 $a1 0
																																												Let $f0
																																													FLi l.6347
																																													Let $f1
																																														Restore d.4830
																																														Let $f2
																																															FReciprocal $f1
																																															Let $f0
																																																FMul $f0 $f2
																																																Let $a1
																																																	Restore const.4829
																																																	Let $f30
																																																		Stfd $f0 $a1 0
																																																		Let $a2
																																																			Restore m.2867
																																																			Let Tu7368
																																																				Save $a2 m.2867
																																																				Let Tu7367
																																																					Save $a1 const.4829
																																																					Let Tu7366
																																																						Save $f1 d.4830
																																																						Let $f0
																																																							CallCls o_param_a.2694 d:$a2 f:
																																																							Let $f1
																																																								Restore d.4830
																																																								Let $f2
																																																									FReciprocal $f1
																																																									Let $f0
																																																										FMul $f0 $f2
																																																										Let Tu7369
																																																											Save $f1 d.4830
																																																											Let $f0
																																																												CallCls min_caml_fneg d:f:$f0 
																																																												Let $a1
																																																													Restore const.4829
																																																													Let $f30
																																																														Stfd $f0 $a1 8
																																																														Let $a2
																																																															Restore m.2867
																																																															Let Tu7371
																																																																Save $a2 m.2867
																																																																Let Tu7370
																																																																	Save $a1 const.4829
																																																																	Let $f0
																																																																		CallCls o_param_b.2696 d:$a2 f:
																																																																		Let $f1
																																																																			Restore d.4830
																																																																			Let $f2
																																																																				FReciprocal $f1
																																																																				Let $f0
																																																																					FMul $f0 $f2
																																																																					Let Tu7372
																																																																						Save $f1 d.4830
																																																																						Let $f0
																																																																							CallCls min_caml_fneg d:f:$f0 
																																																																							Let $a1
																																																																								Restore const.4829
																																																																								Let $f30
																																																																									Stfd $f0 $a1 16
																																																																									Let $a2
																																																																										Restore m.2867
																																																																										Let Tu7373
																																																																											Save $a1 const.4829
																																																																											Let $f0
																																																																												CallCls o_param_c.2698 d:$a2 f:
																																																																												Let $f1
																																																																													Restore d.4830
																																																																													Let $f1
																																																																														FReciprocal $f1
																																																																														Let $f0
																																																																															FMul $f0 $f1
																																																																															Let $f0
																																																																																CallCls min_caml_fneg d:f:$f0 
																																																																																Let $a1
																																																																																	Restore const.4829
																																																																																	Ans
																																																																																		Stfd $f0 $a1 24
																																											Ans
																																												Mr $a1
setup_second_table.2868 (args) : $a1 (fargs) : 
	Let $a3
		Li 5
		Let $f0
			FLi l.6345
			Let Tu7375
				Save $a2 m.2870
				Let Tu7374
					Save $a1 v.2869
					Let $a1
						CallCls min_caml_create_float_array d:$a3 f:$f0 
						Let $a2
							Restore v.2869
							Let $f0
								Lfd $a2 0
								Let $f1
									Lfd $a2 8
									Let $f2
										Lfd $a2 16
										Let $a3
											Restore m.2870
											Let Tu7378
												Save $a1 const.4749
												Let Tu7377
													Save $a3 m.2870
													Let Tu7376
														Save $a2 v.2869
														Let $f0
															CallCls quadratic.2799 d:$a3 f:$f0 $f1 $f2 
															Let $a1
																Restore v.2869
																Let $f1
																	Lfd $a1 0
																	Let $a2
																		Restore m.2870
																		Let Tu7382
																			Save $f0 aa.4750
																			Let Tu7381
																				Save $a2 m.2870
																				Let Tu7380
																					Save $a1 v.2869
																					Let Tu7379
																						Save $f1 Td1561.4818
																						Let $f0
																							CallCls o_param_a.2694 d:$a2 f:
																							Let $f1
																								Restore Td1561.4818
																								Let $f0
																									FMul $f1 $f0
																									Let $f0
																										CallCls min_caml_fneg d:f:$f0 
																										Let $a1
																											Restore v.2869
																											Let $f1
																												Lfd $a1 8
																												Let $a2
																													Restore m.2870
																													Let Tu7386
																														Save $f0 c1.4751
																														Let Tu7385
																															Save $a2 m.2870
																															Let Tu7384
																																Save $a1 v.2869
																																Let Tu7383
																																	Save $f1 Td1565.4814
																																	Let $f0
																																		CallCls o_param_b.2696 d:$a2 f:
																																		Let $f1
																																			Restore Td1565.4814
																																			Let $f0
																																				FMul $f1 $f0
																																				Let $f0
																																					CallCls min_caml_fneg d:f:$f0 
																																					Let $a1
																																						Restore v.2869
																																						Let $f1
																																							Lfd $a1 16
																																							Let $a2
																																								Restore m.2870
																																								Let Tu7390
																																									Save $a1 v.2869
																																									Let Tu7389
																																										Save $f0 c2.4752
																																										Let Tu7388
																																											Save $a2 m.2870
																																											Let Tu7387
																																												Save $f1 Td1569.4810
																																												Let $f0
																																													CallCls o_param_c.2698 d:$a2 f:
																																													Let $f1
																																														Restore Td1569.4810
																																														Let $f0
																																															FMul $f1 $f0
																																															Let $f0
																																																CallCls min_caml_fneg d:f:$f0 
																																																Let $a1
																																																	Restore const.4749
																																																	Let $f1
																																																		Restore aa.4750
																																																		Let $f30
																																																			Stfd $f1 $a1 0
																																																			Let $a2
																																																				Restore m.2870
																																																				Let Tu7394
																																																					Save $f1 aa.4750
																																																					Let Tu7393
																																																						Save $a2 m.2870
																																																						Let Tu7392
																																																							Save $f0 c3.4753
																																																							Let Tu7391
																																																								Save $a1 const.4749
																																																								Let $a1
																																																									CallCls o_isrot.2692 d:$a2 f:
																																																									Let $a2
																																																										Li 0
																																																										Let $f30
																																																											IfEq $a1 $a2
																																																												Let $a1
																																																													Restore const.4749
																																																													Let $f0
																																																														Restore c1.4751
																																																														Let $f30
																																																															Stfd $f0 $a1 8
																																																															Let $f0
																																																																Restore c2.4752
																																																																Let $f30
																																																																	Stfd $f0 $a1 16
																																																																	Let $f0
																																																																		Restore c3.4753
																																																																		Ans
																																																																			Stfd $f0 $a1 24
																																																												Let $a1
																																																													Restore v.2869
																																																													Let $f0
																																																														Lfd $a1 16
																																																														Let $a2
																																																															Restore m.2870
																																																															Let Tu7397
																																																																Save $a2 m.2870
																																																																Let Tu7396
																																																																	Save $a1 v.2869
																																																																	Let Tu7395
																																																																		Save $f0 Td1580.4800
																																																																		Let $f0
																																																																			CallCls o_param_r2.2720 d:$a2 f:
																																																																			Let $f1
																																																																				Restore Td1580.4800
																																																																				Let $f0
																																																																					FMul $f1 $f0
																																																																					Let $a1
																																																																						Restore v.2869
																																																																						Let $f1
																																																																							Lfd $a1 8
																																																																							Let $a2
																																																																								Restore m.2870
																																																																								Let Tu7401
																																																																									Save $a2 m.2870
																																																																									Let Tu7400
																																																																										Save $a1 v.2869
																																																																										Let Tu7399
																																																																											Save $f0 Td1582.4795
																																																																											Let Tu7398
																																																																												Save $f1 Td1584.4797
																																																																												Let $f0
																																																																													CallCls o_param_r3.2722 d:$a2 f:
																																																																													Let $f1
																																																																														Restore Td1584.4797
																																																																														Let $f0
																																																																															FMul $f1 $f0
																																																																															Let $f1
																																																																																Restore Td1582.4795
																																																																																Let $f0
																																																																																	FAdd $f1 $f0
																																																																																	Let $f0
																																																																																		CallCls min_caml_fhalf d:f:$f0 
																																																																																		Let $f1
																																																																																			Restore c1.4751
																																																																																			Let $f0
																																																																																				FSub $f1 $f0
																																																																																				Let $a1
																																																																																					Restore const.4749
																																																																																					Let $f30
																																																																																						Stfd $f0 $a1 8
																																																																																						Let $a2
																																																																																							Restore v.2869
																																																																																							Let $f0
																																																																																								Lfd $a2 16
																																																																																								Let $a3
																																																																																									Restore m.2870
																																																																																									Let Tu7405
																																																																																										Save $a1 const.4749
																																																																																										Let Tu7404
																																																																																											Save $a3 m.2870
																																																																																											Let Tu7403
																																																																																												Save $a2 v.2869
																																																																																												Let Tu7402
																																																																																													Save $f0 Td1592.4788
																																																																																													Let $f0
																																																																																														CallCls o_param_r1.2718 d:$a3 f:
																																																																																														Let $f1
																																																																																															Restore Td1592.4788
																																																																																															Let $f0
																																																																																																FMul $f1 $f0
																																																																																																Let $a1
																																																																																																	Restore v.2869
																																																																																																	Let $f1
																																																																																																		Lfd $a1 0
																																																																																																		Let $a2
																																																																																																			Restore m.2870
																																																																																																			Let Tu7409
																																																																																																				Save $a2 m.2870
																																																																																																				Let Tu7408
																																																																																																					Save $a1 v.2869
																																																																																																					Let Tu7407
																																																																																																						Save $f0 Td1594.4783
																																																																																																						Let Tu7406
																																																																																																							Save $f1 Td1596.4785
																																																																																																							Let $f0
																																																																																																								CallCls o_param_r3.2722 d:$a2 f:
																																																																																																								Let $f1
																																																																																																									Restore Td1596.4785
																																																																																																									Let $f0
																																																																																																										FMul $f1 $f0
																																																																																																										Let $f1
																																																																																																											Restore Td1594.4783
																																																																																																											Let $f0
																																																																																																												FAdd $f1 $f0
																																																																																																												Let $f0
																																																																																																													CallCls min_caml_fhalf d:f:$f0 
																																																																																																													Let $f1
																																																																																																														Restore c2.4752
																																																																																																														Let $f0
																																																																																																															FSub $f1 $f0
																																																																																																															Let $a1
																																																																																																																Restore const.4749
																																																																																																																Let $f30
																																																																																																																	Stfd $f0 $a1 16
																																																																																																																	Let $a2
																																																																																																																		Restore v.2869
																																																																																																																		Let $f0
																																																																																																																			Lfd $a2 8
																																																																																																																			Let $a3
																																																																																																																				Restore m.2870
																																																																																																																				Let Tu7413
																																																																																																																					Save $a1 const.4749
																																																																																																																					Let Tu7412
																																																																																																																						Save $a3 m.2870
																																																																																																																						Let Tu7411
																																																																																																																							Save $a2 v.2869
																																																																																																																							Let Tu7410
																																																																																																																								Save $f0 Td1604.4776
																																																																																																																								Let $f0
																																																																																																																									CallCls o_param_r1.2718 d:$a3 f:
																																																																																																																									Let $f1
																																																																																																																										Restore Td1604.4776
																																																																																																																										Let $f0
																																																																																																																											FMul $f1 $f0
																																																																																																																											Let $a1
																																																																																																																												Restore v.2869
																																																																																																																												Let $f1
																																																																																																																													Lfd $a1 0
																																																																																																																													Let $a1
																																																																																																																														Restore m.2870
																																																																																																																														Let Tu7415
																																																																																																																															Save $f0 Td1606.4771
																																																																																																																															Let Tu7414
																																																																																																																																Save $f1 Td1608.4773
																																																																																																																																Let $f0
																																																																																																																																	CallCls o_param_r2.2720 d:$a1 f:
																																																																																																																																	Let $f1
																																																																																																																																		Restore Td1608.4773
																																																																																																																																		Let $f0
																																																																																																																																			FMul $f1 $f0
																																																																																																																																			Let $f1
																																																																																																																																				Restore Td1606.4771
																																																																																																																																				Let $f0
																																																																																																																																					FAdd $f1 $f0
																																																																																																																																					Let $f0
																																																																																																																																						CallCls min_caml_fhalf d:f:$f0 
																																																																																																																																						Let $f1
																																																																																																																																							Restore c3.4753
																																																																																																																																							Let $f0
																																																																																																																																								FSub $f1 $f0
																																																																																																																																								Let $a1
																																																																																																																																									Restore const.4749
																																																																																																																																									Ans
																																																																																																																																										Stfd $f0 $a1 24
																																																											Let $f0
																																																												Restore aa.4750
																																																												Let Tu7417
																																																													Save $a1 const.4749
																																																													Let Tu7416
																																																														Save $f0 aa.4750
																																																														Let $a1
																																																															CallCls min_caml_fiszero d:f:$f0 
																																																															Let $a2
																																																																Li 0
																																																																Let $f30
																																																																	IfEq $a1 $a2
																																																																		Let $f0
																																																																			FLi l.6346
																																																																			Let $f1
																																																																				Restore aa.4750
																																																																				Let $f1
																																																																					FReciprocal $f1
																																																																					Let $f0
																																																																						FMul $f0 $f1
																																																																						Let $a1
																																																																							Restore const.4749
																																																																							Ans
																																																																								Stfd $f0 $a1 32
																																																																		Ans
																																																																			Nop
																																																																	Let $a1
																																																																		Restore const.4749
																																																																		Ans
																																																																			Mr $a1
iter_setup_dirvec_constants.2871 (args) : $a1 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfLE $a3 $a2
				Let $a3
					SetL min_caml_objects
					Let $a4
						Slw $a2 2
						Let $a3
							Lwz $a3 $a4
							Let Tu7421
								Save $a2 index.2873
								Let Tu7420
									Save $a3 m.4736
									Let Tu7419
										Save $a1 dirvec.2872
										Let $a1
											CallCls d_const.2747 d:$a1 f:
											Let $a2
												Restore dirvec.2872
												Let Tu7423
													Save $a2 dirvec.2872
													Let Tu7422
														Save $a1 dconst.4737
														Let $a1
															CallCls d_vec.2745 d:$a2 f:
															Let $a2
																Restore m.4736
																Let Tu7425
																	Save $a2 m.4736
																	Let Tu7424
																		Save $a1 v.4738
																		Let $a1
																			CallCls o_form.2686 d:$a2 f:
																			Let $a2
																				Li 1
																				Let $f30
																					IfEq $a1 $a2
																						Let $a1
																							Restore v.4738
																							Let $a2
																								Restore m.4736
																								Let $a1
																									CallCls setup_rect_table.2862 d:$a1 $a2 f:
																									Let $a2
																										Restore index.2873
																										Let $a3
																											Slw $a2 2
																											Let $a4
																												Restore dconst.4737
																												Ans
																													Stw $a1 $a4 $a3
																						Let $a2
																							Li 2
																							Ans
																								IfEq $a1 $a2
																									Let $a1
																										Restore v.4738
																										Let $a2
																											Restore m.4736
																											Let $a1
																												CallCls setup_surface_table.2865 d:$a1 $a2 f:
																												Let $a2
																													Restore index.2873
																													Let $a3
																														Slw $a2 2
																														Let $a4
																															Restore dconst.4737
																															Ans
																																Stw $a1 $a4 $a3
																									Let $a1
																										Restore v.4738
																										Let $a2
																											Restore m.4736
																											Let $a1
																												CallCls setup_second_table.2868 d:$a1 $a2 f:
																												Let $a2
																													Restore index.2873
																													Let $a3
																														Slw $a2 2
																														Let $a4
																															Restore dconst.4737
																															Ans
																																Stw $a1 $a4 $a3
																					Let $a2
																						Sub $a2 1
																						Let $a1
																							Restore dirvec.2872
																							Ans
																								CallCls iter_setup_dirvec_constants.2871 d:$a1 $a2 f:
				Ans
					Nop
setup_dirvec_constants.2874 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_n_objects
		Let $a2
			Lwz $a2 0
			Let $a2
				Sub $a2 1
				Ans
					CallCls iter_setup_dirvec_constants.2871 d:$a1 $a2 f:
setup_startp_constants.2876 (args) : $a1 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfLE $a3 $a2
				Let $a3
					SetL min_caml_objects
					Let $a4
						Slw $a2 2
						Let $a3
							Lwz $a3 $a4
							Let Tu7430
								Save $a2 index.2878
								Let Tu7429
									Save $a1 p.2877
									Let Tu7428
										Save $a3 obj.4683
										Let $a1
											CallCls o_param_ctbl.2724 d:$a3 f:
											Let $a2
												Restore obj.4683
												Let Tu7432
													Save $a1 sconst.4684
													Let Tu7431
														Save $a2 obj.4683
														Let $a1
															CallCls o_form.2686 d:$a2 f:
															Let $a2
																Restore p.2877
																Let $f0
																	Lfd $a2 0
																	Let $a3
																		Restore obj.4683
																		Let Tu7436
																			Save $a1 m_shape.4685
																			Let Tu7435
																				Save $a3 obj.4683
																				Let Tu7434
																					Save $a2 p.2877
																					Let Tu7433
																						Save $f0 Td1502.4726
																						Let $f0
																							CallCls o_param_x.2702 d:$a3 f:
																							Let $f1
																								Restore Td1502.4726
																								Let $f0
																									FSub $f1 $f0
																									Let $a1
																										Restore sconst.4684
																										Let $f30
																											Stfd $f0 $a1 0
																											Let $a2
																												Restore p.2877
																												Let $f0
																													Lfd $a2 8
																													Let $a3
																														Restore obj.4683
																														Let Tu7440
																															Save $a3 obj.4683
																															Let Tu7439
																																Save $a2 p.2877
																																Let Tu7438
																																	Save $a1 sconst.4684
																																	Let Tu7437
																																		Save $f0 Td1507.4721
																																		Let $f0
																																			CallCls o_param_y.2704 d:$a3 f:
																																			Let $f1
																																				Restore Td1507.4721
																																				Let $f0
																																					FSub $f1 $f0
																																					Let $a1
																																						Restore sconst.4684
																																						Let $f30
																																							Stfd $f0 $a1 8
																																							Let $a2
																																								Restore p.2877
																																								Let $f0
																																									Lfd $a2 16
																																									Let $a3
																																										Restore obj.4683
																																										Let Tu7444
																																											Save $a2 p.2877
																																											Let Tu7443
																																												Save $a3 obj.4683
																																												Let Tu7442
																																													Save $a1 sconst.4684
																																													Let Tu7441
																																														Save $f0 Td1512.4716
																																														Let $f0
																																															CallCls o_param_z.2706 d:$a3 f:
																																															Let $f1
																																																Restore Td1512.4716
																																																Let $f0
																																																	FSub $f1 $f0
																																																	Let $a1
																																																		Restore sconst.4684
																																																		Let $f30
																																																			Stfd $f0 $a1 16
																																																			Let $a2
																																																				Li 2
																																																				Let $a3
																																																					Restore m_shape.4685
																																																					Let $f30
																																																						IfEq $a3 $a2
																																																							Let $a2
																																																								Restore obj.4683
																																																								Let Tu7450
																																																									Save $a1 sconst.4684
																																																									Let $a1
																																																										CallCls o_param_abc.2700 d:$a2 f:
																																																										Let $a2
																																																											Restore sconst.4684
																																																											Let $f0
																																																												Lfd $a2 0
																																																												Let $f1
																																																													Lfd $a2 8
																																																													Let $f2
																																																														Lfd $a2 16
																																																														Let Tu7451
																																																															Save $a2 sconst.4684
																																																															Let $f0
																																																																CallCls veciprod2.2662 d:$a1 f:$f0 $f1 $f2 
																																																																Let $a1
																																																																	Restore sconst.4684
																																																																	Ans
																																																																		Stfd $f0 $a1 24
																																																							Let $a2
																																																								Li 2
																																																								Ans
																																																									IfLE $a3 $a2
																																																										Ans
																																																											Nop
																																																										Let $f0
																																																											Lfd $a1 0
																																																											Let $f1
																																																												Lfd $a1 8
																																																												Let $f2
																																																													Lfd $a1 16
																																																													Let $a2
																																																														Restore obj.4683
																																																														Let Tu7453
																																																															Save $a1 sconst.4684
																																																															Let Tu7452
																																																																Save $a3 m_shape.4685
																																																																Let $f0
																																																																	CallCls quadratic.2799 d:$a2 f:$f0 $f1 $f2 
																																																																	Let $a1
																																																																		Li 3
																																																																		Let $a2
																																																																			Restore m_shape.4685
																																																																			Let $f0
																																																																				IfEq $a2 $a1
																																																																					Let $f1
																																																																						FLi l.6346
																																																																						Ans
																																																																							FSub $f0 $f1
																																																																					Ans
																																																																						FMr $f0
																																																																				Let $a1
																																																																					Restore sconst.4684
																																																																					Ans
																																																																						Stfd $f0 $a1 24
																																																						Let $a1
																																																							Restore index.2878
																																																							Let $a2
																																																								Sub $a1 1
																																																								Let $a1
																																																									Restore p.2877
																																																									Ans
																																																										CallCls setup_startp_constants.2876 d:$a1 $a2 f:
				Ans
					Nop
setup_startp.2879 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_startp_fast
		Let Tu7455
			Save $a1 p.2880
			Let $f30
				CallCls veccpy.2648 d:$a2 $a1 f:
				Let $a1
					SetL min_caml_n_objects
					Let $a1
						Lwz $a1 0
						Let $a2
							Sub $a1 1
							Let $a1
								Restore p.2880
								Ans
									CallCls setup_startp_constants.2876 d:$a1 $a2 f:
is_rect_outside.2881 (args) : $a1 (fargs) : $f0 
	Let Tu7458
		Save $f2 p2.2885
		Let Tu7457
			Save $f1 p1.2884
			Let Tu7456
				Save $a1 m.2882
				Let $f0
					CallCls min_caml_fabs d:f:$f0 
					Let $a1
						Restore m.2882
						Let Tu7460
							Save $a1 m.2882
							Let Tu7459
								Save $f0 Td1478.4673
								Let $f1
									CallCls o_param_a.2694 d:$a1 f:
									Let $f0
										Restore Td1478.4673
										Let $a1
											CallCls min_caml_fless d:f:$f0 $f1 
											Let $a2
												Li 0
												Let $a1
													IfEq $a1 $a2
														Ans
															Li 0
														Let $f0
															Restore p1.2884
															Let $f0
																CallCls min_caml_fabs d:f:$f0 
																Let $a1
																	Restore m.2882
																	Let Tu7462
																		Save $a1 m.2882
																		Let Tu7461
																			Save $f0 Td1482.4671
																			Let $f1
																				CallCls o_param_b.2696 d:$a1 f:
																				Let $f0
																					Restore Td1482.4671
																					Let $a1
																						CallCls min_caml_fless d:f:$f0 $f1 
																						Let $a2
																							Li 0
																							Ans
																								IfEq $a1 $a2
																									Ans
																										Li 0
																									Let $f0
																										Restore p2.2885
																										Let $f0
																											CallCls min_caml_fabs d:f:$f0 
																											Let $a1
																												Restore m.2882
																												Let Tu7464
																													Save $a1 m.2882
																													Let Tu7463
																														Save $f0 Td1486.4669
																														Let $f1
																															CallCls o_param_c.2698 d:$a1 f:
																															Let $f0
																																Restore Td1486.4669
																																Ans
																																	CallCls min_caml_fless d:f:$f0 $f1 
													Let $a2
														Li 0
														Ans
															IfEq $a1 $a2
																Let $a1
																	Restore m.2882
																	Let $a1
																		CallCls o_isinvert.2690 d:$a1 f:
																		Let $a2
																			Li 0
																			Ans
																				IfEq $a1 $a2
																					Ans
																						Li 1
																					Ans
																						Li 0
																Let $a1
																	Restore m.2882
																	Ans
																		CallCls o_isinvert.2690 d:$a1 f:
is_plane_outside.2886 (args) : $a1 (fargs) : $f0 
	Let Tu7468
		Save $a1 m.2887
		Let Tu7467
			Save $f2 p2.2890
			Let Tu7466
				Save $f1 p1.2889
				Let Tu7465
					Save $f0 p0.2888
					Let $a1
						CallCls o_param_abc.2700 d:$a1 f:
						Let $f0
							Restore p0.2888
							Let $f1
								Restore p1.2889
								Let $f2
									Restore p2.2890
									Let $f0
										CallCls veciprod2.2662 d:$a1 f:$f0 $f1 $f2 
										Let $a1
											Restore m.2887
											Let Tu7469
												Save $f0 w.4655
												Let $a1
													CallCls o_isinvert.2690 d:$a1 f:
													Let $f0
														Restore w.4655
														Let Tu7470
															Save $a1 Tb1474.4658
															Let $a2
																CallCls min_caml_fisneg d:f:$f0 
																Let $a1
																	Restore Tb1474.4658
																	Let $a1
																		CallCls xor.2627 d:$a1 $a2 f:
																		Let $a2
																			Li 0
																			Ans
																				IfEq $a1 $a2
																					Ans
																						Li 1
																					Ans
																						Li 0
is_second_outside.2891 (args) : $a1 (fargs) : $f0 
	Let Tu7471
		Save $a1 m.2892
		Let $f0
			CallCls quadratic.2799 d:$a1 f:$f0 $f1 $f2 
			Let $a1
				Restore m.2892
				Let Tu7473
					Save $a1 m.2892
					Let Tu7472
						Save $f0 w.4646
						Let $a1
							CallCls o_form.2686 d:$a1 f:
							Let $a2
								Li 3
								Let $f0
									IfEq $a1 $a2
										Let $f0
											FLi l.6346
											Let $f1
												Restore w.4646
												Ans
													FSub $f1 $f0
										Let $f0
											Restore w.4646
											Ans
												FMr $f0
									Let $a1
										Restore m.2892
										Let Tu7474
											Save $f0 w2.4647
											Let $a1
												CallCls o_isinvert.2690 d:$a1 f:
												Let $f0
													Restore w2.4647
													Let Tu7475
														Save $a1 Tb1469.4650
														Let $a2
															CallCls min_caml_fisneg d:f:$f0 
															Let $a1
																Restore Tb1469.4650
																Let $a1
																	CallCls xor.2627 d:$a1 $a2 f:
																	Let $a2
																		Li 0
																		Ans
																			IfEq $a1 $a2
																				Ans
																					Li 1
																				Ans
																					Li 0
is_outside.2896 (args) : $a1 (fargs) : $f0 
	Let Tu7479
		Save $f2 q2.2900
		Let Tu7478
			Save $f1 q1.2899
			Let Tu7477
				Save $a1 m.2897
				Let Tu7476
					Save $f0 q0.2898
					Let $f0
						CallCls o_param_x.2702 d:$a1 f:
						Let $f1
							Restore q0.2898
							Let $f0
								FSub $f1 $f0
								Let $a1
									Restore m.2897
									Let Tu7481
										Save $f0 p0.4637
										Let Tu7480
											Save $a1 m.2897
											Let $f0
												CallCls o_param_y.2704 d:$a1 f:
												Let $f1
													Restore q1.2899
													Let $f0
														FSub $f1 $f0
														Let $a1
															Restore m.2897
															Let Tu7483
																Save $f0 p1.4638
																Let Tu7482
																	Save $a1 m.2897
																	Let $f0
																		CallCls o_param_z.2706 d:$a1 f:
																		Let $f1
																			Restore q2.2900
																			Let $f0
																				FSub $f1 $f0
																				Let $a1
																					Restore m.2897
																					Let Tu7485
																						Save $f0 p2.4639
																						Let Tu7484
																							Save $a1 m.2897
																							Let $a1
																								CallCls o_form.2686 d:$a1 f:
																								Let $a2
																									Li 1
																									Ans
																										IfEq $a1 $a2
																											Let $f0
																												Restore p0.4637
																												Let $f1
																													Restore p1.4638
																													Let $f2
																														Restore p2.4639
																														Let $a1
																															Restore m.2897
																															Ans
																																CallCls is_rect_outside.2881 d:$a1 f:$f0 $f1 $f2 
																											Let $a2
																												Li 2
																												Ans
																													IfEq $a1 $a2
																														Let $f0
																															Restore p0.4637
																															Let $f1
																																Restore p1.4638
																																Let $f2
																																	Restore p2.4639
																																	Let $a1
																																		Restore m.2897
																																		Ans
																																			CallCls is_plane_outside.2886 d:$a1 f:$f0 $f1 $f2 
																														Let $f0
																															Restore p0.4637
																															Let $f1
																																Restore p1.4638
																																Let $f2
																																	Restore p2.4639
																																	Let $a1
																																		Restore m.2897
																																		Ans
																																			CallCls is_second_outside.2891 d:$a1 f:$f0 $f1 $f2 
check_all_inside.2901 (args) : $a1 (fargs) : $f0 
	Let $a3
		Slw $a1 2
		Let $a3
			Lwz $a2 $a3
			Let $a4
				Li -1
				Ans
					IfEq $a3 $a4
						Ans
							Li 1
						Let $a4
							SetL min_caml_objects
							Let $a3
								Slw $a3 2
								Let $a3
									Lwz $a4 $a3
									Let Tu7490
										Save $f2 q2.2906
										Let Tu7489
											Save $f1 q1.2905
											Let Tu7488
												Save $f0 q0.2904
												Let Tu7487
													Save $a2 iand.2903
													Let Tu7486
														Save $a1 ofs.2902
														Let $a1
															CallCls is_outside.2896 d:$a3 f:$f0 $f1 $f2 
															Let $a2
																Li 0
																Ans
																	IfEq $a1 $a2
																		Let $a1
																			Restore ofs.2902
																			Let $a1
																				Add $a1 1
																				Let $f0
																					Restore q0.2904
																					Let $f1
																						Restore q1.2905
																						Let $f2
																							Restore q2.2906
																							Let $a2
																								Restore iand.2903
																								Ans
																									CallCls check_all_inside.2901 d:$a1 $a2 f:$f0 $f1 $f2 
																		Ans
																			Li 0
shadow_check_and_group.2907 (args) : $a1 (fargs) : 
	Let $a3
		Slw $a1 2
		Let $a3
			Lwz $a2 $a3
			Let $a4
				Li -1
				Ans
					IfEq $a3 $a4
						Ans
							Li 0
						Let $a3
							Slw $a1 2
							Let $a3
								Lwz $a2 $a3
								Let $a4
									SetL min_caml_light_dirvec
									Let $a5
										SetL min_caml_intersection_point
										Let Tu7493
											Save $a2 and_group.2909
											Let Tu7492
												Save $a1 iand_ofs.2908
												Let Tu7491
													Save $a3 obj.4579
													Let $a1
														CallCls solver_fast.2841 d:$a3 $a4 $a5 f:
														Let $a2
															SetL min_caml_solver_dist
															Let $f0
																Lfd $a2 0
																Let $a2
																	Li 0
																	Let Tu7495
																		Save $f0 t0p.4581
																		Let $a1
																			IfEq $a1 $a2
																				Ans
																					Li 0
																				Let $f1
																					FLi l.6661
																					Let Tu7494
																						Save $f0 t0p.4581
																						Ans
																							CallCls min_caml_fless d:f:$f0 $f1 
																			Let $a2
																				Li 0
																				Ans
																					IfEq $a1 $a2
																						Let $a1
																							SetL min_caml_objects
																							Let $a2
																								Restore obj.4579
																								Let $a2
																									Slw $a2 2
																									Let $a1
																										Lwz $a1 $a2
																										Let $a1
																											CallCls o_isinvert.2690 d:$a1 f:
																											Let $a2
																												Li 0
																												Ans
																													IfEq $a1 $a2
																														Ans
																															Li 0
																														Let $a1
																															Restore iand_ofs.2908
																															Let $a1
																																Add $a1 1
																																Let $a2
																																	Restore and_group.2909
																																	Ans
																																		CallCls shadow_check_and_group.2907 d:$a1 $a2 f:
																						Let $f0
																							FLi l.6662
																							Let $f1
																								Restore t0p.4581
																								Let $f0
																									FAdd $f1 $f0
																									Let $a1
																										SetL min_caml_light
																										Let $f1
																											Lfd $a1 0
																											Let $f1
																												FMul $f1 $f0
																												Let $a1
																													SetL min_caml_intersection_point
																													Let $f2
																														Lfd $a1 0
																														Let $f1
																															FAdd $f1 $f2
																															Let $a1
																																SetL min_caml_light
																																Let $f2
																																	Lfd $a1 8
																																	Let $f2
																																		FMul $f2 $f0
																																		Let $a1
																																			SetL min_caml_intersection_point
																																			Let $f3
																																				Lfd $a1 8
																																				Let $f2
																																					FAdd $f2 $f3
																																					Let $a1
																																						SetL min_caml_light
																																						Let $f3
																																							Lfd $a1 16
																																							Let $f0
																																								FMul $f3 $f0
																																								Let $a1
																																									SetL min_caml_intersection_point
																																									Let $f3
																																										Lfd $a1 16
																																										Let $f0
																																											FAdd $f0 $f3
																																											Let $a1
																																												Li 0
																																												Let $a2
																																													Restore and_group.2909
																																													Let Tu7496
																																														Save $a2 and_group.2909
																																														Let $a1
																																															CallCls check_all_inside.2901 d:$a1 $a2 f:$f1 $f2 $f0 
																																															Let $a2
																																																Li 0
																																																Ans
																																																	IfEq $a1 $a2
																																																		Let $a1
																																																			Restore iand_ofs.2908
																																																			Let $a1
																																																				Add $a1 1
																																																				Let $a2
																																																					Restore and_group.2909
																																																					Ans
																																																						CallCls shadow_check_and_group.2907 d:$a1 $a2 f:
																																																		Ans
																																																			Li 1
shadow_check_one_or_group.2910 (args) : $a1 (fargs) : 
	Let $a3
		Slw $a1 2
		Let $a3
			Lwz $a2 $a3
			Let $a4
				Li -1
				Ans
					IfEq $a3 $a4
						Ans
							Li 0
						Let $a4
							SetL min_caml_and_net
							Let $a3
								Slw $a3 2
								Let $a3
									Lwz $a4 $a3
									Let $a4
										Li 0
										Let Tu7498
											Save $a2 or_group.2912
											Let Tu7497
												Save $a1 ofs.2911
												Let $a1
													CallCls shadow_check_and_group.2907 d:$a4 $a3 f:
													Let $a2
														Li 0
														Ans
															IfEq $a1 $a2
																Let $a1
																	Restore ofs.2911
																	Let $a1
																		Add $a1 1
																		Let $a2
																			Restore or_group.2912
																			Ans
																				CallCls shadow_check_one_or_group.2910 d:$a1 $a2 f:
																Ans
																	Li 1
shadow_check_one_or_matrix.2913 (args) : $a1 (fargs) : 
	Let $a3
		Slw $a1 2
		Let $a3
			Lwz $a2 $a3
			Let $a4
				Lwz $a3 0
				Let $a5
					Li -1
					Ans
						IfEq $a4 $a5
							Ans
								Li 0
							Let $a5
								Li 99
								Let Tu7505
									Save $a3 head.4539
									Let Tu7504
										Save $a2 or_matrix.2915
										Let Tu7503
											Save $a1 ofs.2914
											Let $a1
												IfEq $a4 $a5
													Ans
														Li 1
													Let $a5
														SetL min_caml_light_dirvec
														Let $a6
															SetL min_caml_intersection_point
															Let Tu7501
																Save $a2 or_matrix.2915
																Let Tu7500
																	Save $a1 ofs.2914
																	Let Tu7499
																		Save $a3 head.4539
																		Let $a1
																			CallCls solver_fast.2841 d:$a4 $a5 $a6 f:
																			Let $a2
																				Li 0
																				Ans
																					IfEq $a1 $a2
																						Ans
																							Li 0
																						Let $a1
																							SetL min_caml_solver_dist
																							Let $f0
																								Lfd $a1 0
																								Let $f1
																									FLi l.6675
																									Let $a1
																										CallCls min_caml_fless d:f:$f0 $f1 
																										Let $a2
																											Li 0
																											Ans
																												IfEq $a1 $a2
																													Ans
																														Li 0
																													Let $a1
																														Li 1
																														Let $a2
																															Restore head.4539
																															Let Tu7502
																																Save $a2 head.4539
																																Let $a1
																																	CallCls shadow_check_one_or_group.2910 d:$a1 $a2 f:
																																	Let $a2
																																		Li 0
																																		Ans
																																			IfEq $a1 $a2
																																				Ans
																																					Li 0
																																				Ans
																																					Li 1
												Let $a2
													Li 0
													Ans
														IfEq $a1 $a2
															Let $a1
																Restore ofs.2914
																Let $a1
																	Add $a1 1
																	Let $a2
																		Restore or_matrix.2915
																		Ans
																			CallCls shadow_check_one_or_matrix.2913 d:$a1 $a2 f:
															Let $a1
																Li 1
																Let $a2
																	Restore head.4539
																	Let $a1
																		CallCls shadow_check_one_or_group.2910 d:$a1 $a2 f:
																		Let $a2
																			Li 0
																			Ans
																				IfEq $a1 $a2
																					Let $a1
																						Restore ofs.2914
																						Let $a1
																							Add $a1 1
																							Let $a2
																								Restore or_matrix.2915
																								Ans
																									CallCls shadow_check_one_or_matrix.2913 d:$a1 $a2 f:
																					Ans
																						Li 1
solve_each_element.2916 (args) : $a1 (fargs) : 
	Let $a4
		Slw $a1 2
		Let $a4
			Lwz $a2 $a4
			Let $a5
				Li -1
				Ans
					IfEq $a4 $a5
						Ans
							Nop
						Let $a5
							SetL min_caml_startp
							Let Tu7510
								Save $a3 dirvec.2919
								Let Tu7509
									Save $a2 and_group.2918
									Let Tu7508
										Save $a1 iand_ofs.2917
										Let Tu7507
											Save $a4 iobj.4477
											Let $a1
												CallCls solver.2818 d:$a4 $a3 $a5 f:
												Let $a2
													Li 0
													Ans
														IfEq $a1 $a2
															Let $a1
																SetL min_caml_objects
																Let $a2
																	Restore iobj.4477
																	Let $a2
																		Slw $a2 2
																		Let $a1
																			Lwz $a1 $a2
																			Let $a1
																				CallCls o_isinvert.2690 d:$a1 f:
																				Let $a2
																					Li 0
																					Ans
																						IfEq $a1 $a2
																							Ans
																								Nop
																							Let $a1
																								Restore iand_ofs.2917
																								Let $a1
																									Add $a1 1
																									Let $a2
																										Restore and_group.2918
																										Let $a3
																											Restore dirvec.2919
																											Ans
																												CallCls solve_each_element.2916 d:$a1 $a2 $a3 f:
															Let $a2
																SetL min_caml_solver_dist
																Let $f1
																	Lfd $a2 0
																	Let $f0
																		FLi l.6345
																		Let Tu7512
																			Save $a1 t0.4479
																			Let Tu7511
																				Save $f1 t0p.4481
																				Let $a1
																					CallCls min_caml_fless d:f:$f0 $f1 
																					Let $a2
																						Li 0
																						Let $f30
																							IfEq $a1 $a2
																								Ans
																									Nop
																								Let $a1
																									SetL min_caml_tmin
																									Let $f1
																										Lfd $a1 0
																										Let $f0
																											Restore t0p.4481
																											Let Tu7513
																												Save $f0 t0p.4481
																												Let $a1
																													CallCls min_caml_fless d:f:$f0 $f1 
																													Let $a2
																														Li 0
																														Ans
																															IfEq $a1 $a2
																																Ans
																																	Nop
																																Let $f0
																																	FLi l.6662
																																	Let $f1
																																		Restore t0p.4481
																																		Let $f0
																																			FAdd $f1 $f0
																																			Let $a1
																																				Restore dirvec.2919
																																				Let $f1
																																					Lfd $a1 0
																																					Let $f1
																																						FMul $f1 $f0
																																						Let $a2
																																							SetL min_caml_startp
																																							Let $f2
																																								Lfd $a2 0
																																								Let $f1
																																									FAdd $f1 $f2
																																									Let $f2
																																										Lfd $a1 8
																																										Let $f2
																																											FMul $f2 $f0
																																											Let $a2
																																												SetL min_caml_startp
																																												Let $f3
																																													Lfd $a2 8
																																													Let $f2
																																														FAdd $f2 $f3
																																														Let $f3
																																															Lfd $a1 16
																																															Let $f3
																																																FMul $f3 $f0
																																																Let $a2
																																																	SetL min_caml_startp
																																																	Let $f4
																																																		Lfd $a2 16
																																																		Let $f3
																																																			FAdd $f3 $f4
																																																			Let $a2
																																																				Li 0
																																																				Let $a3
																																																					Restore and_group.2918
																																																					Let Tu7519
																																																						Save $a1 dirvec.2919
																																																						Let Tu7518
																																																							Save $a3 and_group.2918
																																																							Let Tu7517
																																																								Save $f3 q2.4492
																																																								Let Tu7516
																																																									Save $f2 q1.4491
																																																									Let Tu7515
																																																										Save $f1 q0.4490
																																																										Let Tu7514
																																																											Save $f0 t.4489
																																																											Let $a1
																																																												CallCls check_all_inside.2901 d:$a2 $a3 f:$f1 $f2 $f3 
																																																												Let $a2
																																																													Li 0
																																																													Ans
																																																														IfEq $a1 $a2
																																																															Ans
																																																																Nop
																																																															Let $a1
																																																																SetL min_caml_tmin
																																																																Let $f0
																																																																	Restore t.4489
																																																																	Let $f30
																																																																		Stfd $f0 $a1 0
																																																																		Let $a1
																																																																			SetL min_caml_intersection_point
																																																																			Let $f0
																																																																				Restore q0.4490
																																																																				Let $f1
																																																																					Restore q1.4491
																																																																					Let $f2
																																																																						Restore q2.4492
																																																																						Let $f30
																																																																							CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																																																							Let $a1
																																																																								SetL min_caml_intersected_object_id
																																																																								Let $a2
																																																																									Restore iobj.4477
																																																																									Let $f30
																																																																										Stw $a2 $a1 0
																																																																										Let $a1
																																																																											SetL min_caml_intsec_rectside
																																																																											Let $a2
																																																																												Restore t0.4479
																																																																												Ans
																																																																													Stw $a2 $a1 0
																							Let $a1
																								Restore iand_ofs.2917
																								Let $a1
																									Add $a1 1
																									Let $a2
																										Restore and_group.2918
																										Let $a3
																											Restore dirvec.2919
																											Ans
																												CallCls solve_each_element.2916 d:$a1 $a2 $a3 f:
solve_one_or_network.2920 (args) : $a1 (fargs) : 
	Let $a4
		Slw $a1 2
		Let $a4
			Lwz $a2 $a4
			Let $a5
				Li -1
				Ans
					IfEq $a4 $a5
						Ans
							Nop
						Let $a5
							SetL min_caml_and_net
							Let $a4
								Slw $a4 2
								Let $a4
									Lwz $a5 $a4
									Let $a5
										Li 0
										Let Tu7523
											Save $a3 dirvec.2923
											Let Tu7522
												Save $a2 or_group.2922
												Let Tu7521
													Save $a1 ofs.2921
													Let $f30
														CallCls solve_each_element.2916 d:$a5 $a4 $a3 f:
														Let $a1
															Restore ofs.2921
															Let $a1
																Add $a1 1
																Let $a2
																	Restore or_group.2922
																	Let $a3
																		Restore dirvec.2923
																		Ans
																			CallCls solve_one_or_network.2920 d:$a1 $a2 $a3 f:
trace_or_matrix.2924 (args) : $a1 (fargs) : 
	Let $a4
		Slw $a1 2
		Let $a4
			Lwz $a2 $a4
			Let $a5
				Lwz $a4 0
				Let $a6
					Li -1
					Ans
						IfEq $a5 $a6
							Ans
								Nop
							Let $a6
								Li 99
								Let Tu7535
									Save $a3 dirvec.2927
									Let Tu7534
										Save $a2 or_network.2926
										Let Tu7533
											Save $a1 ofs.2925
											Let $f30
												IfEq $a5 $a6
													Let $a5
														Li 1
														Let Tu7527
															Save $a3 dirvec.2927
															Let Tu7526
																Save $a2 or_network.2926
																Let Tu7525
																	Save $a1 ofs.2925
																	Ans
																		CallCls solve_one_or_network.2920 d:$a5 $a4 $a3 f:
													Let $a6
														SetL min_caml_startp
														Let Tu7531
															Save $a2 or_network.2926
															Let Tu7530
																Save $a1 ofs.2925
																Let Tu7529
																	Save $a3 dirvec.2927
																	Let Tu7528
																		Save $a4 head.4446
																		Let $a1
																			CallCls solver.2818 d:$a5 $a3 $a6 f:
																			Let $a2
																				Li 0
																				Ans
																					IfEq $a1 $a2
																						Ans
																							Nop
																						Let $a1
																							SetL min_caml_solver_dist
																							Let $f0
																								Lfd $a1 0
																								Let $a1
																									SetL min_caml_tmin
																									Let $f1
																										Lfd $a1 0
																										Let $a1
																											CallCls min_caml_fless d:f:$f0 $f1 
																											Let $a2
																												Li 0
																												Ans
																													IfEq $a1 $a2
																														Ans
																															Nop
																														Let $a1
																															Li 1
																															Let $a2
																																Restore head.4446
																																Let $a3
																																	Restore dirvec.2927
																																	Let Tu7532
																																		Save $a3 dirvec.2927
																																		Ans
																																			CallCls solve_one_or_network.2920 d:$a1 $a2 $a3 f:
												Let $a1
													Restore ofs.2925
													Let $a1
														Add $a1 1
														Let $a2
															Restore or_network.2926
															Let $a3
																Restore dirvec.2927
																Ans
																	CallCls trace_or_matrix.2924 d:$a1 $a2 $a3 f:
judge_intersection.2928 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_tmin
		Let $f0
			FLi l.6695
			Let $f30
				Stfd $f0 $a2 0
				Let $a2
					Li 0
					Let $a3
						SetL min_caml_or_net
						Let $a3
							Lwz $a3 0
							Let $f30
								CallCls trace_or_matrix.2924 d:$a2 $a3 $a1 f:
								Let $a1
									SetL min_caml_tmin
									Let $f1
										Lfd $a1 0
										Let $f0
											FLi l.6675
											Let Tu7536
												Save $f1 t.4432
												Let $a1
													CallCls min_caml_fless d:f:$f0 $f1 
													Let $a2
														Li 0
														Ans
															IfEq $a1 $a2
																Ans
																	Li 0
																Let $f1
																	FLi l.6699
																	Let $f0
																		Restore t.4432
																		Ans
																			CallCls min_caml_fless d:f:$f0 $f1 
solve_each_element_fast.2930 (args) : $a1 (fargs) : 
	Let Tu7540
		Save $a3 dirvec.2933
		Let Tu7539
			Save $a2 and_group.2932
			Let Tu7538
				Save $a1 iand_ofs.2931
				Let $a1
					CallCls d_vec.2745 d:$a3 f:
					Let $a2
						Restore iand_ofs.2931
						Let $a3
							Slw $a2 2
							Let $a4
								Restore and_group.2932
								Let $a3
									Lwz $a4 $a3
									Let $a5
										Li -1
										Ans
											IfEq $a3 $a5
												Ans
													Nop
												Let $a5
													Restore dirvec.2933
													Let Tu7545
														Save $a1 vec.4368
														Let Tu7544
															Save $a5 dirvec.2933
															Let Tu7543
																Save $a4 and_group.2932
																Let Tu7542
																	Save $a2 iand_ofs.2931
																	Let Tu7541
																		Save $a3 iobj.4369
																		Let $a1
																			CallCls solver_fast2.2859 d:$a3 $a5 f:
																			Let $a2
																				Li 0
																				Ans
																					IfEq $a1 $a2
																						Let $a1
																							SetL min_caml_objects
																							Let $a2
																								Restore iobj.4369
																								Let $a2
																									Slw $a2 2
																									Let $a1
																										Lwz $a1 $a2
																										Let $a1
																											CallCls o_isinvert.2690 d:$a1 f:
																											Let $a2
																												Li 0
																												Ans
																													IfEq $a1 $a2
																														Ans
																															Nop
																														Let $a1
																															Restore iand_ofs.2931
																															Let $a1
																																Add $a1 1
																																Let $a2
																																	Restore and_group.2932
																																	Let $a3
																																		Restore dirvec.2933
																																		Ans
																																			CallCls solve_each_element_fast.2930 d:$a1 $a2 $a3 f:
																						Let $a2
																							SetL min_caml_solver_dist
																							Let $f1
																								Lfd $a2 0
																								Let $f0
																									FLi l.6345
																									Let Tu7547
																										Save $a1 t0.4371
																										Let Tu7546
																											Save $f1 t0p.4373
																											Let $a1
																												CallCls min_caml_fless d:f:$f0 $f1 
																												Let $a2
																													Li 0
																													Let $f30
																														IfEq $a1 $a2
																															Ans
																																Nop
																															Let $a1
																																SetL min_caml_tmin
																																Let $f1
																																	Lfd $a1 0
																																	Let $f0
																																		Restore t0p.4373
																																		Let Tu7548
																																			Save $f0 t0p.4373
																																			Let $a1
																																				CallCls min_caml_fless d:f:$f0 $f1 
																																				Let $a2
																																					Li 0
																																					Ans
																																						IfEq $a1 $a2
																																							Ans
																																								Nop
																																							Let $f0
																																								FLi l.6662
																																								Let $f1
																																									Restore t0p.4373
																																									Let $f0
																																										FAdd $f1 $f0
																																										Let $a1
																																											Restore vec.4368
																																											Let $f1
																																												Lfd $a1 0
																																												Let $f1
																																													FMul $f1 $f0
																																													Let $a2
																																														SetL min_caml_startp_fast
																																														Let $f2
																																															Lfd $a2 0
																																															Let $f1
																																																FAdd $f1 $f2
																																																Let $f2
																																																	Lfd $a1 8
																																																	Let $f2
																																																		FMul $f2 $f0
																																																		Let $a2
																																																			SetL min_caml_startp_fast
																																																			Let $f3
																																																				Lfd $a2 8
																																																				Let $f2
																																																					FAdd $f2 $f3
																																																					Let $f3
																																																						Lfd $a1 16
																																																						Let $f3
																																																							FMul $f3 $f0
																																																							Let $a1
																																																								SetL min_caml_startp_fast
																																																								Let $f4
																																																									Lfd $a1 16
																																																									Let $f3
																																																										FAdd $f3 $f4
																																																										Let $a1
																																																											Li 0
																																																											Let $a2
																																																												Restore and_group.2932
																																																												Let Tu7553
																																																													Save $a2 and_group.2932
																																																													Let Tu7552
																																																														Save $f3 q2.4384
																																																														Let Tu7551
																																																															Save $f2 q1.4383
																																																															Let Tu7550
																																																																Save $f1 q0.4382
																																																																Let Tu7549
																																																																	Save $f0 t.4381
																																																																	Let $a1
																																																																		CallCls check_all_inside.2901 d:$a1 $a2 f:$f1 $f2 $f3 
																																																																		Let $a2
																																																																			Li 0
																																																																			Ans
																																																																				IfEq $a1 $a2
																																																																					Ans
																																																																						Nop
																																																																					Let $a1
																																																																						SetL min_caml_tmin
																																																																						Let $f0
																																																																							Restore t.4381
																																																																							Let $f30
																																																																								Stfd $f0 $a1 0
																																																																								Let $a1
																																																																									SetL min_caml_intersection_point
																																																																									Let $f0
																																																																										Restore q0.4382
																																																																										Let $f1
																																																																											Restore q1.4383
																																																																											Let $f2
																																																																												Restore q2.4384
																																																																												Let $f30
																																																																													CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																																																													Let $a1
																																																																														SetL min_caml_intersected_object_id
																																																																														Let $a2
																																																																															Restore iobj.4369
																																																																															Let $f30
																																																																																Stw $a2 $a1 0
																																																																																Let $a1
																																																																																	SetL min_caml_intsec_rectside
																																																																																	Let $a2
																																																																																		Restore t0.4371
																																																																																		Ans
																																																																																			Stw $a2 $a1 0
																														Let $a1
																															Restore iand_ofs.2931
																															Let $a1
																																Add $a1 1
																																Let $a2
																																	Restore and_group.2932
																																	Let $a3
																																		Restore dirvec.2933
																																		Ans
																																			CallCls solve_each_element_fast.2930 d:$a1 $a2 $a3 f:
solve_one_or_network_fast.2934 (args) : $a1 (fargs) : 
	Let $a4
		Slw $a1 2
		Let $a4
			Lwz $a2 $a4
			Let $a5
				Li -1
				Ans
					IfEq $a4 $a5
						Ans
							Nop
						Let $a5
							SetL min_caml_and_net
							Let $a4
								Slw $a4 2
								Let $a4
									Lwz $a5 $a4
									Let $a5
										Li 0
										Let Tu7557
											Save $a3 dirvec.2937
											Let Tu7556
												Save $a2 or_group.2936
												Let Tu7555
													Save $a1 ofs.2935
													Let $f30
														CallCls solve_each_element_fast.2930 d:$a5 $a4 $a3 f:
														Let $a1
															Restore ofs.2935
															Let $a1
																Add $a1 1
																Let $a2
																	Restore or_group.2936
																	Let $a3
																		Restore dirvec.2937
																		Ans
																			CallCls solve_one_or_network_fast.2934 d:$a1 $a2 $a3 f:
trace_or_matrix_fast.2938 (args) : $a1 (fargs) : 
	Let $a4
		Slw $a1 2
		Let $a4
			Lwz $a2 $a4
			Let $a5
				Lwz $a4 0
				Let $a6
					Li -1
					Ans
						IfEq $a5 $a6
							Ans
								Nop
							Let $a6
								Li 99
								Let Tu7569
									Save $a3 dirvec.2941
									Let Tu7568
										Save $a2 or_network.2940
										Let Tu7567
											Save $a1 ofs.2939
											Let $f30
												IfEq $a5 $a6
													Let $a5
														Li 1
														Let Tu7561
															Save $a3 dirvec.2941
															Let Tu7560
																Save $a2 or_network.2940
																Let Tu7559
																	Save $a1 ofs.2939
																	Ans
																		CallCls solve_one_or_network_fast.2934 d:$a5 $a4 $a3 f:
													Let Tu7565
														Save $a2 or_network.2940
														Let Tu7564
															Save $a1 ofs.2939
															Let Tu7563
																Save $a3 dirvec.2941
																Let Tu7562
																	Save $a4 head.4338
																	Let $a1
																		CallCls solver_fast2.2859 d:$a5 $a3 f:
																		Let $a2
																			Li 0
																			Ans
																				IfEq $a1 $a2
																					Ans
																						Nop
																					Let $a1
																						SetL min_caml_solver_dist
																						Let $f0
																							Lfd $a1 0
																							Let $a1
																								SetL min_caml_tmin
																								Let $f1
																									Lfd $a1 0
																									Let $a1
																										CallCls min_caml_fless d:f:$f0 $f1 
																										Let $a2
																											Li 0
																											Ans
																												IfEq $a1 $a2
																													Ans
																														Nop
																													Let $a1
																														Li 1
																														Let $a2
																															Restore head.4338
																															Let $a3
																																Restore dirvec.2941
																																Let Tu7566
																																	Save $a3 dirvec.2941
																																	Ans
																																		CallCls solve_one_or_network_fast.2934 d:$a1 $a2 $a3 f:
												Let $a1
													Restore ofs.2939
													Let $a1
														Add $a1 1
														Let $a2
															Restore or_network.2940
															Let $a3
																Restore dirvec.2941
																Ans
																	CallCls trace_or_matrix_fast.2938 d:$a1 $a2 $a3 f:
judge_intersection_fast.2942 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_tmin
		Let $f0
			FLi l.6695
			Let $f30
				Stfd $f0 $a2 0
				Let $a2
					Li 0
					Let $a3
						SetL min_caml_or_net
						Let $a3
							Lwz $a3 0
							Let $f30
								CallCls trace_or_matrix_fast.2938 d:$a2 $a3 $a1 f:
								Let $a1
									SetL min_caml_tmin
									Let $f1
										Lfd $a1 0
										Let $f0
											FLi l.6675
											Let Tu7570
												Save $f1 t.4324
												Let $a1
													CallCls min_caml_fless d:f:$f0 $f1 
													Let $a2
														Li 0
														Ans
															IfEq $a1 $a2
																Ans
																	Li 0
																Let $f1
																	FLi l.6699
																	Let $f0
																		Restore t.4324
																		Ans
																			CallCls min_caml_fless d:f:$f0 $f1 
get_nvector_rect.2944 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_intsec_rectside
		Let $a2
			Lwz $a2 0
			Let $a3
				SetL min_caml_nvector
				Let Tu7573
					Save $a1 dirvec.2945
					Let Tu7572
						Save $a2 rectside.4309
						Let $f30
							CallCls vecbzero.2646 d:$a3 f:
							Let $a1
								SetL min_caml_nvector
								Let $a2
									Restore rectside.4309
									Let $a3
										Sub $a2 1
										Let $a2
											Sub $a2 1
											Let $a2
												Slw $a2 3
												Let $a4
													Restore dirvec.2945
													Let $f0
														Lfd $a4 $a2
														Let Tu7575
															Save $a1 Ta1197.4311
															Let Tu7574
																Save $a3 Ti1199.4312
																Let $f0
																	CallCls sgn.2630 d:f:$f0 
																	Let $f0
																		CallCls min_caml_fneg d:f:$f0 
																		Let $a1
																			Restore Ti1199.4312
																			Let $a1
																				Slw $a1 3
																				Let $a2
																					Restore Ta1197.4311
																					Ans
																						Stfd $f0 $a2 $a1
get_nvector_plane.2946 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_nvector
		Let Tu7578
			Save $a1 m.2947
			Let Tu7577
				Save $a2 Ta1182.4305
				Let $f0
					CallCls o_param_a.2694 d:$a1 f:
					Let $f0
						CallCls min_caml_fneg d:f:$f0 
						Let $a1
							Restore Ta1182.4305
							Let $f30
								Stfd $f0 $a1 0
								Let $a1
									SetL min_caml_nvector
									Let $a2
										Restore m.2947
										Let Tu7580
											Save $a2 m.2947
											Let Tu7579
												Save $a1 Ta1186.4301
												Let $f0
													CallCls o_param_b.2696 d:$a2 f:
													Let $f0
														CallCls min_caml_fneg d:f:$f0 
														Let $a1
															Restore Ta1186.4301
															Let $f30
																Stfd $f0 $a1 8
																Let $a1
																	SetL min_caml_nvector
																	Let $a2
																		Restore m.2947
																		Let Tu7581
																			Save $a1 Ta1190.4297
																			Let $f0
																				CallCls o_param_c.2698 d:$a2 f:
																				Let $f0
																					CallCls min_caml_fneg d:f:$f0 
																					Let $a1
																						Restore Ta1190.4297
																						Ans
																							Stfd $f0 $a1 16
get_nvector_second.2948 (args) : $a1 (fargs) : 
	Let $a2
		SetL min_caml_intersection_point
		Let $f0
			Lfd $a2 0
			Let Tu7584
				Save $a1 m.2949
				Let Tu7583
					Save $f0 Td1132.4291
					Let $f0
						CallCls o_param_x.2702 d:$a1 f:
						Let $f1
							Restore Td1132.4291
							Let $f0
								FSub $f1 $f0
								Let $a1
									SetL min_caml_intersection_point
									Let $f1
										Lfd $a1 8
										Let $a1
											Restore m.2949
											Let Tu7587
												Save $f0 p0.4232
												Let Tu7586
													Save $a1 m.2949
													Let Tu7585
														Save $f1 Td1136.4287
														Let $f0
															CallCls o_param_y.2704 d:$a1 f:
															Let $f1
																Restore Td1136.4287
																Let $f0
																	FSub $f1 $f0
																	Let $a1
																		SetL min_caml_intersection_point
																		Let $f1
																			Lfd $a1 16
																			Let $a1
																				Restore m.2949
																				Let Tu7590
																					Save $f0 p1.4233
																					Let Tu7589
																						Save $a1 m.2949
																						Let Tu7588
																							Save $f1 Td1140.4283
																							Let $f0
																								CallCls o_param_z.2706 d:$a1 f:
																								Let $f1
																									Restore Td1140.4283
																									Let $f0
																										FSub $f1 $f0
																										Let $a1
																											Restore m.2949
																											Let Tu7592
																												Save $f0 p2.4234
																												Let Tu7591
																													Save $a1 m.2949
																													Let $f0
																														CallCls o_param_a.2694 d:$a1 f:
																														Let $f1
																															Restore p0.4232
																															Let $f0
																																FMul $f1 $f0
																																Let $a1
																																	Restore m.2949
																																	Let Tu7595
																																		Save $f1 p0.4232
																																		Let Tu7594
																																			Save $f0 d0.4235
																																			Let Tu7593
																																				Save $a1 m.2949
																																				Let $f0
																																					CallCls o_param_b.2696 d:$a1 f:
																																					Let $f1
																																						Restore p1.4233
																																						Let $f0
																																							FMul $f1 $f0
																																							Let $a1
																																								Restore m.2949
																																								Let Tu7598
																																									Save $f1 p1.4233
																																									Let Tu7597
																																										Save $f0 d1.4236
																																										Let Tu7596
																																											Save $a1 m.2949
																																											Let $f0
																																												CallCls o_param_c.2698 d:$a1 f:
																																												Let $f1
																																													Restore p2.4234
																																													Let $f0
																																														FMul $f1 $f0
																																														Let $a1
																																															Restore m.2949
																																															Let Tu7601
																																																Save $f1 p2.4234
																																																Let Tu7600
																																																	Save $a1 m.2949
																																																	Let Tu7599
																																																		Save $f0 d2.4237
																																																		Let $a1
																																																			CallCls o_isrot.2692 d:$a1 f:
																																																			Let $a2
																																																				Li 0
																																																				Let $f30
																																																					IfEq $a1 $a2
																																																						Let $a1
																																																							SetL min_caml_nvector
																																																							Let $f0
																																																								Restore d0.4235
																																																								Let $f30
																																																									Stfd $f0 $a1 0
																																																									Let $a1
																																																										SetL min_caml_nvector
																																																										Let $f0
																																																											Restore d1.4236
																																																											Let $f30
																																																												Stfd $f0 $a1 8
																																																												Let $a1
																																																													SetL min_caml_nvector
																																																													Let $f0
																																																														Restore d2.4237
																																																														Ans
																																																															Stfd $f0 $a1 16
																																																						Let $a1
																																																							SetL min_caml_nvector
																																																							Let $a2
																																																								Restore m.2949
																																																								Let Tu7603
																																																									Save $a1 Ta1153.4263
																																																									Let Tu7602
																																																										Save $a2 m.2949
																																																										Let $f0
																																																											CallCls o_param_r3.2722 d:$a2 f:
																																																											Let $f1
																																																												Restore p1.4233
																																																												Let $f0
																																																													FMul $f1 $f0
																																																													Let $a1
																																																														Restore m.2949
																																																														Let Tu7606
																																																															Save $f1 p1.4233
																																																															Let Tu7605
																																																																Save $a1 m.2949
																																																																Let Tu7604
																																																																	Save $f0 Td1156.4268
																																																																	Let $f0
																																																																		CallCls o_param_r2.2720 d:$a1 f:
																																																																		Let $f1
																																																																			Restore p2.4234
																																																																			Let $f0
																																																																				FMul $f1 $f0
																																																																				Let $f2
																																																																					Restore Td1156.4268
																																																																					Let $f0
																																																																						FAdd $f2 $f0
																																																																						Let Tu7607
																																																																							Save $f1 p2.4234
																																																																							Let $f0
																																																																								CallCls min_caml_fhalf d:f:$f0 
																																																																								Let $f1
																																																																									Restore d0.4235
																																																																									Let $f0
																																																																										FAdd $f1 $f0
																																																																										Let $a1
																																																																											Restore Ta1153.4263
																																																																											Let $f30
																																																																												Stfd $f0 $a1 0
																																																																												Let $a1
																																																																													SetL min_caml_nvector
																																																																													Let $a2
																																																																														Restore m.2949
																																																																														Let Tu7609
																																																																															Save $a1 Ta1162.4254
																																																																															Let Tu7608
																																																																																Save $a2 m.2949
																																																																																Let $f0
																																																																																	CallCls o_param_r3.2722 d:$a2 f:
																																																																																	Let $f1
																																																																																		Restore p0.4232
																																																																																		Let $f0
																																																																																			FMul $f1 $f0
																																																																																			Let $a1
																																																																																				Restore m.2949
																																																																																				Let Tu7612
																																																																																					Save $f1 p0.4232
																																																																																					Let Tu7611
																																																																																						Save $a1 m.2949
																																																																																						Let Tu7610
																																																																																							Save $f0 Td1165.4259
																																																																																							Let $f0
																																																																																								CallCls o_param_r1.2718 d:$a1 f:
																																																																																								Let $f1
																																																																																									Restore p2.4234
																																																																																									Let $f0
																																																																																										FMul $f1 $f0
																																																																																										Let $f1
																																																																																											Restore Td1165.4259
																																																																																											Let $f0
																																																																																												FAdd $f1 $f0
																																																																																												Let $f0
																																																																																													CallCls min_caml_fhalf d:f:$f0 
																																																																																													Let $f1
																																																																																														Restore d1.4236
																																																																																														Let $f0
																																																																																															FAdd $f1 $f0
																																																																																															Let $a1
																																																																																																Restore Ta1162.4254
																																																																																																Let $f30
																																																																																																	Stfd $f0 $a1 8
																																																																																																	Let $a1
																																																																																																		SetL min_caml_nvector
																																																																																																		Let $a2
																																																																																																			Restore m.2949
																																																																																																			Let Tu7614
																																																																																																				Save $a1 Ta1171.4245
																																																																																																				Let Tu7613
																																																																																																					Save $a2 m.2949
																																																																																																					Let $f0
																																																																																																						CallCls o_param_r2.2720 d:$a2 f:
																																																																																																						Let $f1
																																																																																																							Restore p0.4232
																																																																																																							Let $f0
																																																																																																								FMul $f1 $f0
																																																																																																								Let $a1
																																																																																																									Restore m.2949
																																																																																																									Let Tu7616
																																																																																																										Save $a1 m.2949
																																																																																																										Let Tu7615
																																																																																																											Save $f0 Td1174.4250
																																																																																																											Let $f0
																																																																																																												CallCls o_param_r1.2718 d:$a1 f:
																																																																																																												Let $f1
																																																																																																													Restore p1.4233
																																																																																																													Let $f0
																																																																																																														FMul $f1 $f0
																																																																																																														Let $f1
																																																																																																															Restore Td1174.4250
																																																																																																															Let $f0
																																																																																																																FAdd $f1 $f0
																																																																																																																Let $f0
																																																																																																																	CallCls min_caml_fhalf d:f:$f0 
																																																																																																																	Let $f1
																																																																																																																		Restore d2.4237
																																																																																																																		Let $f0
																																																																																																																			FAdd $f1 $f0
																																																																																																																			Let $a1
																																																																																																																				Restore Ta1171.4245
																																																																																																																				Ans
																																																																																																																					Stfd $f0 $a1 16
																																																					Let $a1
																																																						SetL min_caml_nvector
																																																						Let $a2
																																																							Restore m.2949
																																																							Let Tu7617
																																																								Save $a1 Ta1180.4239
																																																								Let $a2
																																																									CallCls o_isinvert.2690 d:$a2 f:
																																																									Let $a1
																																																										Restore Ta1180.4239
																																																										Ans
																																																											CallCls vecunit_sgn.2656 d:$a1 $a2 f:
get_nvector.2950 (args) : $a1 (fargs) : 
	Let Tu7620
		Save $a1 m.2951
		Let Tu7619
			Save $a2 dirvec.2952
			Let $a1
				CallCls o_form.2686 d:$a1 f:
				Let $a2
					Li 1
					Ans
						IfEq $a1 $a2
							Let $a1
								Restore dirvec.2952
								Ans
									CallCls get_nvector_rect.2944 d:$a1 f:
							Let $a2
								Li 2
								Ans
									IfEq $a1 $a2
										Let $a1
											Restore m.2951
											Ans
												CallCls get_nvector_plane.2946 d:$a1 f:
										Let $a1
											Restore m.2951
											Ans
												CallCls get_nvector_second.2948 d:$a1 f:
utexture.2953 (args) : $a1 (fargs) : 
	Let Tu7623
		Save $a2 p.2955
		Let Tu7622
			Save $a1 m.2954
			Let $a1
				CallCls o_texturetype.2684 d:$a1 f:
				Let $a2
					SetL min_caml_texture_color
					Let $a3
						Restore m.2954
						Let Tu7626
							Save $a1 m_tex.4060
							Let Tu7625
								Save $a3 m.2954
								Let Tu7624
									Save $a2 Ta989.4226
									Let $f0
										CallCls o_color_red.2712 d:$a3 f:
										Let $a1
											Restore Ta989.4226
											Let $f30
												Stfd $f0 $a1 0
												Let $a1
													SetL min_caml_texture_color
													Let $a2
														Restore m.2954
														Let Tu7628
															Save $a2 m.2954
															Let Tu7627
																Save $a1 Ta992.4223
																Let $f0
																	CallCls o_color_green.2714 d:$a2 f:
																	Let $a1
																		Restore Ta992.4223
																		Let $f30
																			Stfd $f0 $a1 8
																			Let $a1
																				SetL min_caml_texture_color
																				Let $a2
																					Restore m.2954
																					Let Tu7630
																						Save $a2 m.2954
																						Let Tu7629
																							Save $a1 Ta995.4220
																							Let $f0
																								CallCls o_color_blue.2716 d:$a2 f:
																								Let $a1
																									Restore Ta995.4220
																									Let $f30
																										Stfd $f0 $a1 16
																										Let $a1
																											Li 1
																											Let $a2
																												Restore m_tex.4060
																												Ans
																													IfEq $a2 $a1
																														Let $a1
																															Restore p.2955
																															Let $f0
																																Lfd $a1 0
																																Let $a2
																																	Restore m.2954
																																	Let Tu7780
																																		Save $a2 m.2954
																																		Let Tu7779
																																			Save $a1 p.2955
																																			Let Tu7778
																																				Save $f0 Td1000.4217
																																				Let $f0
																																					CallCls o_param_x.2702 d:$a2 f:
																																					Let $f1
																																						Restore Td1000.4217
																																						Let $f0
																																							FSub $f1 $f0
																																							Let $f1
																																								FLi l.6762
																																								Let $f1
																																									FMul $f0 $f1
																																									Let Tu7781
																																										Save $f0 w1.4190
																																										Let $f0
																																											CallCls min_caml_floor d:f:$f1 
																																											Let $f1
																																												FLi l.6763
																																												Let $f0
																																													FMul $f0 $f1
																																													Let $f1
																																														Restore w1.4190
																																														Let $f0
																																															FSub $f1 $f0
																																															Let $f1
																																																FLi l.6754
																																																Let $a1
																																																	CallCls min_caml_fless d:f:$f0 $f1 
																																																	Let $a2
																																																		Restore p.2955
																																																		Let $f0
																																																			Lfd $a2 16
																																																			Let $a2
																																																				Restore m.2954
																																																				Let Tu7783
																																																					Save $a1 flag1.4191
																																																					Let Tu7782
																																																						Save $f0 Td1009.4207
																																																						Let $f0
																																																							CallCls o_param_z.2706 d:$a2 f:
																																																							Let $f1
																																																								Restore Td1009.4207
																																																								Let $f0
																																																									FSub $f1 $f0
																																																									Let $f1
																																																										FLi l.6762
																																																										Let $f1
																																																											FMul $f0 $f1
																																																											Let Tu7784
																																																												Save $f0 w3.4192
																																																												Let $f0
																																																													CallCls min_caml_floor d:f:$f1 
																																																													Let $f1
																																																														FLi l.6763
																																																														Let $f0
																																																															FMul $f0 $f1
																																																															Let $f1
																																																																Restore w3.4192
																																																																Let $f0
																																																																	FSub $f1 $f0
																																																																	Let $f1
																																																																		FLi l.6754
																																																																		Let $a1
																																																																			CallCls min_caml_fless d:f:$f0 $f1 
																																																																			Let $a2
																																																																				SetL min_caml_texture_color
																																																																				Let $a3
																																																																					Li 0
																																																																					Let $a4
																																																																						Restore flag1.4191
																																																																						Let $f0
																																																																							IfEq $a4 $a3
																																																																								Let $a3
																																																																									Li 0
																																																																									Ans
																																																																										IfEq $a1 $a3
																																																																											Ans
																																																																												FLi l.6749
																																																																											Ans
																																																																												FLi l.6345
																																																																								Let $a3
																																																																									Li 0
																																																																									Ans
																																																																										IfEq $a1 $a3
																																																																											Ans
																																																																												FLi l.6345
																																																																											Ans
																																																																												FLi l.6749
																																																																							Ans
																																																																								Stfd $f0 $a2 8
																														Let $a1
																															Li 2
																															Ans
																																IfEq $a2 $a1
																																	Let $a1
																																		Restore p.2955
																																		Let $f0
																																			Lfd $a1 8
																																			Let $f1
																																				FLi l.6758
																																				Let $f0
																																					FMul $f0 $f1
																																					Let $f0
																																						CallCls min_caml_sin d:f:$f0 
																																						Let $f0
																																							CallCls min_caml_fsqr d:f:$f0 
																																							Let $a1
																																								SetL min_caml_texture_color
																																								Let $f1
																																									FLi l.6749
																																									Let $f1
																																										FMul $f1 $f0
																																										Let $f30
																																											Stfd $f1 $a1 0
																																											Let $a1
																																												SetL min_caml_texture_color
																																												Let $f1
																																													FLi l.6749
																																													Let $f2
																																														FLi l.6346
																																														Let $f0
																																															FSub $f2 $f0
																																															Let $f0
																																																FMul $f1 $f0
																																																Ans
																																																	Stfd $f0 $a1 8
																																	Let $a1
																																		Li 3
																																		Ans
																																			IfEq $a2 $a1
																																				Let $a1
																																					Restore p.2955
																																					Let $f0
																																						Lfd $a1 0
																																						Let $a2
																																							Restore m.2954
																																							Let Tu7787
																																								Save $a2 m.2954
																																								Let Tu7786
																																									Save $a1 p.2955
																																									Let Tu7785
																																										Save $f0 Td1041.4170
																																										Let $f0
																																											CallCls o_param_x.2702 d:$a2 f:
																																											Let $f1
																																												Restore Td1041.4170
																																												Let $f0
																																													FSub $f1 $f0
																																													Let $a1
																																														Restore p.2955
																																														Let $f1
																																															Lfd $a1 16
																																															Let $a1
																																																Restore m.2954
																																																Let Tu7789
																																																	Save $f0 w1.4141
																																																	Let Tu7788
																																																		Save $f1 Td1044.4167
																																																		Let $f0
																																																			CallCls o_param_z.2706 d:$a1 f:
																																																			Let $f1
																																																				Restore Td1044.4167
																																																				Let $f0
																																																					FSub $f1 $f0
																																																					Let $f1
																																																						Restore w1.4141
																																																						Let Tu7790
																																																							Save $f0 w3.4142
																																																							Let $f0
																																																								CallCls min_caml_fsqr d:f:$f1 
																																																								Let $f1
																																																									Restore w3.4142
																																																									Let Tu7791
																																																										Save $f0 Td1046.4165
																																																										Let $f0
																																																											CallCls min_caml_fsqr d:f:$f1 
																																																											Let $f1
																																																												Restore Td1046.4165
																																																												Let $f0
																																																													FAdd $f1 $f0
																																																													Let $f0
																																																														CallCls min_caml_sqrt d:f:$f0 
																																																														Let $f1
																																																															FLi l.6754
																																																															Let $f1
																																																																FReciprocal $f1
																																																																Let $f0
																																																																	FMul $f0 $f1
																																																																	Let Tu7792
																																																																		Save $f0 w2.4143
																																																																		Let $f0
																																																																			CallCls min_caml_floor d:f:$f0 
																																																																			Let $f1
																																																																				Restore w2.4143
																																																																				Let $f0
																																																																					FSub $f1 $f0
																																																																					Let $f1
																																																																						FLi l.6745
																																																																						Let $f0
																																																																							FMul $f0 $f1
																																																																							Let $f0
																																																																								CallCls min_caml_cos d:f:$f0 
																																																																								Let $f0
																																																																									CallCls min_caml_fsqr d:f:$f0 
																																																																									Let $a1
																																																																										SetL min_caml_texture_color
																																																																										Let $f1
																																																																											FLi l.6749
																																																																											Let $f1
																																																																												FMul $f0 $f1
																																																																												Let $f30
																																																																													Stfd $f1 $a1 8
																																																																													Let $a1
																																																																														SetL min_caml_texture_color
																																																																														Let $f1
																																																																															FLi l.6346
																																																																															Let $f0
																																																																																FSub $f1 $f0
																																																																																Let $f1
																																																																																	FLi l.6749
																																																																																	Let $f0
																																																																																		FMul $f0 $f1
																																																																																		Ans
																																																																																			Stfd $f0 $a1 16
																																				Let $a1
																																					Li 4
																																					Ans
																																						IfEq $a2 $a1
																																							Let $a1
																																								Restore p.2955
																																								Let $f0
																																									Lfd $a1 0
																																									Let $a2
																																										Restore m.2954
																																										Let Tu7795
																																											Save $a1 p.2955
																																											Let Tu7794
																																												Save $a2 m.2954
																																												Let Tu7793
																																													Save $f0 Td1068.4138
																																													Let $f0
																																														CallCls o_param_x.2702 d:$a2 f:
																																														Let $f1
																																															Restore Td1068.4138
																																															Let $f0
																																																FSub $f1 $f0
																																																Let $a1
																																																	Restore m.2954
																																																	Let Tu7797
																																																		Save $a1 m.2954
																																																		Let Tu7796
																																																			Save $f0 Td1070.4135
																																																			Let $f0
																																																				CallCls o_param_a.2694 d:$a1 f:
																																																				Let $f0
																																																					CallCls min_caml_sqrt d:f:$f0 
																																																					Let $f1
																																																						Restore Td1070.4135
																																																						Let $f0
																																																							FMul $f1 $f0
																																																							Let $a1
																																																								Restore p.2955
																																																								Let $f1
																																																									Lfd $a1 16
																																																									Let $a2
																																																										Restore m.2954
																																																										Let Tu7801
																																																											Save $a1 p.2955
																																																											Let Tu7800
																																																												Save $f0 w1.4068
																																																												Let Tu7799
																																																													Save $a2 m.2954
																																																													Let Tu7798
																																																														Save $f1 Td1074.4132
																																																														Let $f0
																																																															CallCls o_param_z.2706 d:$a2 f:
																																																															Let $f1
																																																																Restore Td1074.4132
																																																																Let $f0
																																																																	FSub $f1 $f0
																																																																	Let $a1
																																																																		Restore m.2954
																																																																		Let Tu7803
																																																																			Save $a1 m.2954
																																																																			Let Tu7802
																																																																				Save $f0 Td1076.4129
																																																																				Let $f0
																																																																					CallCls o_param_c.2698 d:$a1 f:
																																																																					Let $f0
																																																																						CallCls min_caml_sqrt d:f:$f0 
																																																																						Let $f1
																																																																							Restore Td1076.4129
																																																																							Let $f0
																																																																								FMul $f1 $f0
																																																																								Let $f1
																																																																									Restore w1.4068
																																																																									Let Tu7805
																																																																										Save $f1 w1.4068
																																																																										Let Tu7804
																																																																											Save $f0 w3.4069
																																																																											Let $f0
																																																																												CallCls min_caml_fsqr d:f:$f1 
																																																																												Let $f1
																																																																													Restore w3.4069
																																																																													Let Tu7807
																																																																														Save $f1 w3.4069
																																																																														Let Tu7806
																																																																															Save $f0 Td1079.4127
																																																																															Let $f0
																																																																																CallCls min_caml_fsqr d:f:$f1 
																																																																																Let $f1
																																																																																	Restore Td1079.4127
																																																																																	Let $f0
																																																																																		FAdd $f1 $f0
																																																																																		Let $f1
																																																																																			Restore w1.4068
																																																																																			Let Tu7809
																																																																																				Save $f0 w4.4070
																																																																																				Let Tu7808
																																																																																					Save $f1 w1.4068
																																																																																					Let $f0
																																																																																						CallCls min_caml_fabs d:f:$f1 
																																																																																						Let $f1
																																																																																							FLi l.6742
																																																																																							Let $a1
																																																																																								CallCls min_caml_fless d:f:$f0 $f1 
																																																																																								Let $a2
																																																																																									Li 0
																																																																																									Let $f0
																																																																																										IfEq $a1 $a2
																																																																																											Let $f0
																																																																																												Restore w1.4068
																																																																																												Let $f0
																																																																																													FReciprocal $f0
																																																																																													Let $f1
																																																																																														Restore w3.4069
																																																																																														Let $f0
																																																																																															FMul $f1 $f0
																																																																																															Let $f0
																																																																																																CallCls min_caml_fabs d:f:$f0 
																																																																																																Let $f0
																																																																																																	CallCls min_caml_atan d:f:$f0 
																																																																																																	Let $f1
																																																																																																		FLi l.6744
																																																																																																		Let $f0
																																																																																																			FMul $f0 $f1
																																																																																																			Let $f1
																																																																																																				FLi l.6745
																																																																																																				Let $f1
																																																																																																					FReciprocal $f1
																																																																																																					Ans
																																																																																																						FMul $f0 $f1
																																																																																											Ans
																																																																																												FLi l.6743
																																																																																										Let Tu7810
																																																																																											Save $f0 w7.4071
																																																																																											Let $f0
																																																																																												CallCls min_caml_floor d:f:$f0 
																																																																																												Let $f1
																																																																																													Restore w7.4071
																																																																																													Let $f0
																																																																																														FSub $f1 $f0
																																																																																														Let $a1
																																																																																															Restore p.2955
																																																																																															Let $f1
																																																																																																Lfd $a1 8
																																																																																																Let $a1
																																																																																																	Restore m.2954
																																																																																																	Let Tu7813
																																																																																																		Save $f0 w9.4072
																																																																																																		Let Tu7812
																																																																																																			Save $a1 m.2954
																																																																																																			Let Tu7811
																																																																																																				Save $f1 Td1094.4111
																																																																																																				Let $f0
																																																																																																					CallCls o_param_y.2704 d:$a1 f:
																																																																																																					Let $f1
																																																																																																						Restore Td1094.4111
																																																																																																						Let $f0
																																																																																																							FSub $f1 $f0
																																																																																																							Let $a1
																																																																																																								Restore m.2954
																																																																																																								Let Tu7814
																																																																																																									Save $f0 Td1096.4108
																																																																																																									Let $f0
																																																																																																										CallCls o_param_b.2696 d:$a1 f:
																																																																																																										Let $f0
																																																																																																											CallCls min_caml_sqrt d:f:$f0 
																																																																																																											Let $f1
																																																																																																												Restore Td1096.4108
																																																																																																												Let $f0
																																																																																																													FMul $f1 $f0
																																																																																																													Let $f1
																																																																																																														Restore w4.4070
																																																																																																														Let Tu7816
																																																																																																															Save $f0 w2.4073
																																																																																																															Let Tu7815
																																																																																																																Save $f1 w4.4070
																																																																																																																Let $f0
																																																																																																																	CallCls min_caml_fabs d:f:$f1 
																																																																																																																	Let $f1
																																																																																																																		FLi l.6742
																																																																																																																		Let $a1
																																																																																																																			CallCls min_caml_fless d:f:$f0 $f1 
																																																																																																																			Let $a2
																																																																																																																				Li 0
																																																																																																																				Let $f0
																																																																																																																					IfEq $a1 $a2
																																																																																																																						Let $f0
																																																																																																																							Restore w4.4070
																																																																																																																							Let $f0
																																																																																																																								FReciprocal $f0
																																																																																																																								Let $f1
																																																																																																																									Restore w2.4073
																																																																																																																									Let $f0
																																																																																																																										FMul $f1 $f0
																																																																																																																										Let $f0
																																																																																																																											CallCls min_caml_fabs d:f:$f0 
																																																																																																																											Let $f0
																																																																																																																												CallCls min_caml_atan d:f:$f0 
																																																																																																																												Let $f1
																																																																																																																													FLi l.6744
																																																																																																																													Let $f0
																																																																																																																														FMul $f0 $f1
																																																																																																																														Let $f1
																																																																																																																															FLi l.6745
																																																																																																																															Let $f1
																																																																																																																																FReciprocal $f1
																																																																																																																																Ans
																																																																																																																																	FMul $f0 $f1
																																																																																																																						Ans
																																																																																																																							FLi l.6743
																																																																																																																					Let Tu7817
																																																																																																																						Save $f0 w8.4074
																																																																																																																						Let $f0
																																																																																																																							CallCls min_caml_floor d:f:$f0 
																																																																																																																							Let $f1
																																																																																																																								Restore w8.4074
																																																																																																																								Let $f0
																																																																																																																									FSub $f1 $f0
																																																																																																																									Let $f1
																																																																																																																										FLi l.6747
																																																																																																																										Let $f2
																																																																																																																											FLi l.6748
																																																																																																																											Let $f3
																																																																																																																												Restore w9.4072
																																																																																																																												Let $f2
																																																																																																																													FSub $f2 $f3
																																																																																																																													Let Tu7819
																																																																																																																														Save $f0 w10.4075
																																																																																																																														Let Tu7818
																																																																																																																															Save $f1 Td1111.4091
																																																																																																																															Let $f0
																																																																																																																																CallCls min_caml_fsqr d:f:$f2 
																																																																																																																																Let $f1
																																																																																																																																	Restore Td1111.4091
																																																																																																																																	Let $f0
																																																																																																																																		FSub $f1 $f0
																																																																																																																																		Let $f1
																																																																																																																																			FLi l.6748
																																																																																																																																			Let $f2
																																																																																																																																				Restore w10.4075
																																																																																																																																				Let $f1
																																																																																																																																					FSub $f1 $f2
																																																																																																																																					Let Tu7820
																																																																																																																																						Save $f0 Td1115.4087
																																																																																																																																						Let $f0
																																																																																																																																							CallCls min_caml_fsqr d:f:$f1 
																																																																																																																																							Let $f1
																																																																																																																																								Restore Td1115.4087
																																																																																																																																								Let $f0
																																																																																																																																									FSub $f1 $f0
																																																																																																																																									Let Tu7821
																																																																																																																																										Save $f0 w11.4076
																																																																																																																																										Let $a1
																																																																																																																																											CallCls min_caml_fisneg d:f:$f0 
																																																																																																																																											Let $a2
																																																																																																																																												Li 0
																																																																																																																																												Let $f0
																																																																																																																																													IfEq $a1 $a2
																																																																																																																																														Let $f0
																																																																																																																																															Restore w11.4076
																																																																																																																																															Ans
																																																																																																																																																FMr $f0
																																																																																																																																														Ans
																																																																																																																																															FLi l.6345
																																																																																																																																													Let $a1
																																																																																																																																														SetL min_caml_texture_color
																																																																																																																																														Let $f1
																																																																																																																																															FLi l.6749
																																																																																																																																															Let $f0
																																																																																																																																																FMul $f1 $f0
																																																																																																																																																Let $f1
																																																																																																																																																	FLi l.6750
																																																																																																																																																	Let $f1
																																																																																																																																																		FReciprocal $f1
																																																																																																																																																		Let $f0
																																																																																																																																																			FMul $f0 $f1
																																																																																																																																																			Ans
																																																																																																																																																				Stfd $f0 $a1 16
																																							Ans
																																								Nop
add_light.2956 (args) : (fargs) : $f0 
	Let Tu7825
		Save $f2 hilight_scale.2959
		Let Tu7824
			Save $f1 hilight.2958
			Let Tu7823
				Save $f0 bright.2957
				Let $a1
					CallCls min_caml_fispos d:f:$f0 
					Let $a2
						Li 0
						Let $f30
							IfEq $a1 $a2
								Ans
									Nop
								Let $a1
									SetL min_caml_rgb
									Let $a2
										SetL min_caml_texture_color
										Let $f0
											Restore bright.2957
											Ans
												CallCls vecaccum.2667 d:$a1 $a2 f:$f0 
							Let $f0
								Restore hilight.2958
								Let Tu7826
									Save $f0 hilight.2958
									Let $a1
										CallCls min_caml_fispos d:f:$f0 
										Let $a2
											Li 0
											Ans
												IfEq $a1 $a2
													Ans
														Nop
													Let $f0
														Restore hilight.2958
														Let $f0
															CallCls min_caml_fsqr d:f:$f0 
															Let $f0
																CallCls min_caml_fsqr d:f:$f0 
																Let $f1
																	Restore hilight_scale.2959
																	Let $f0
																		FMul $f0 $f1
																		Let $a1
																			SetL min_caml_rgb
																			Let $a2
																				SetL min_caml_rgb
																				Let $f1
																					Lfd $a2 0
																					Let $f1
																						FAdd $f1 $f0
																						Let $f30
																							Stfd $f1 $a1 0
																							Let $a1
																								SetL min_caml_rgb
																								Let $a2
																									SetL min_caml_rgb
																									Let $f1
																										Lfd $a2 8
																										Let $f1
																											FAdd $f1 $f0
																											Let $f30
																												Stfd $f1 $a1 8
																												Let $a1
																													SetL min_caml_rgb
																													Let $a2
																														SetL min_caml_rgb
																														Let $f1
																															Lfd $a2 16
																															Let $f0
																																FAdd $f1 $f0
																																Ans
																																	Stfd $f0 $a1 16
trace_reflections.2960 (args) : $a1 (fargs) : $f0 
	Let $a3
		Li 0
		Ans
			IfLE $a3 $a1
				Let $a3
					SetL min_caml_reflections
					Let $a4
						Slw $a1 2
						Let $a3
							Lwz $a3 $a4
							Let Tu7832
								Save $a1 index.2961
								Let Tu7831
									Save $f1 hilight_scale.2963
									Let Tu7830
										Save $a2 dirvec.2964
										Let Tu7829
											Save $f0 diffuse.2962
											Let Tu7828
												Save $a3 rinfo.3998
												Let $a1
													CallCls r_dvec.2751 d:$a3 f:
													Let Tu7833
														Save $a1 dvec.3999
														Let $a1
															CallCls judge_intersection_fast.2942 d:$a1 f:
															Let $a2
																Li 0
																Let $f30
																	IfEq $a1 $a2
																		Ans
																			Nop
																		Let $a1
																			SetL min_caml_intersected_object_id
																			Let $a1
																				Lwz $a1 0
																				Let $a1
																					ShiftL2 $a1
																					Let $a2
																						SetL min_caml_intsec_rectside
																						Let $a2
																							Lwz $a2 0
																							Let $a1
																								Add $a1 $a2
																								Let $a2
																									Restore rinfo.3998
																									Let Tu7835
																										Save $a2 rinfo.3998
																										Let Tu7834
																											Save $a1 surface_id.4005
																											Let $a1
																												CallCls r_surface_id.2749 d:$a2 f:
																												Let $a2
																													Restore surface_id.4005
																													Ans
																														IfEq $a2 $a1
																															Let $a1
																																Li 0
																																Let $a2
																																	SetL min_caml_or_net
																																	Let $a2
																																		Lwz $a2 0
																																		Let $a1
																																			CallCls shadow_check_one_or_matrix.2913 d:$a1 $a2 f:
																																			Let $a2
																																				Li 0
																																				Ans
																																					IfEq $a1 $a2
																																						Let $a1
																																							SetL min_caml_nvector
																																							Let $a2
																																								Restore dvec.3999
																																								Let Tu7845
																																									Save $a2 dvec.3999
																																									Let Tu7844
																																										Save $a1 Ta956.4016
																																										Let $a2
																																											CallCls d_vec.2745 d:$a2 f:
																																											Let $a1
																																												Restore Ta956.4016
																																												Let $f0
																																													CallCls veciprod.2659 d:$a1 $a2 f:
																																													Let $a1
																																														Restore rinfo.3998
																																														Let Tu7846
																																															Save $f0 p.4009
																																															Let $f0
																																																CallCls r_bright.2753 d:$a1 f:
																																																Let $f1
																																																	Restore diffuse.2962
																																																	Let $f2
																																																		FMul $f0 $f1
																																																		Let $f3
																																																			Restore p.4009
																																																			Let $f2
																																																				FMul $f2 $f3
																																																				Let $a1
																																																					Restore dvec.3999
																																																					Let Tu7849
																																																						Save $f1 diffuse.2962
																																																						Let Tu7848
																																																							Save $f2 bright.4011
																																																							Let Tu7847
																																																								Save $f0 scale.4010
																																																								Let $a2
																																																									CallCls d_vec.2745 d:$a1 f:
																																																									Let $a1
																																																										Restore dirvec.2964
																																																										Let Tu7850
																																																											Save $a1 dirvec.2964
																																																											Let $f0
																																																												CallCls veciprod.2659 d:$a1 $a2 f:
																																																												Let $f1
																																																													Restore scale.4010
																																																													Let $f1
																																																														FMul $f1 $f0
																																																														Let $f0
																																																															Restore bright.4011
																																																															Let $f2
																																																																Restore hilight_scale.2963
																																																																Let Tu7851
																																																																	Save $f2 hilight_scale.2963
																																																																	Ans
																																																																		CallCls add_light.2956 d:f:$f0 $f1 $f2 
																																						Ans
																																							Nop
																															Ans
																																Nop
																	Let $a1
																		Restore index.2961
																		Let $a1
																			Sub $a1 1
																			Let $f0
																				Restore diffuse.2962
																				Let $f1
																					Restore hilight_scale.2963
																					Let $a2
																						Restore dirvec.2964
																						Ans
																							CallCls trace_reflections.2960 d:$a1 $a2 f:$f0 $f1 
				Ans
					Nop
trace_ray.2965 (args) : $a1 (fargs) : $f0 
	Let $a4
		Li 4
		Ans
			IfLE $a1 $a4
				Let Tu7857
					Save $f1 dist.2970
					Let Tu7856
						Save $a3 pixel.2969
						Let Tu7855
							Save $f0 energy.2967
							Let Tu7854
								Save $a1 nref.2966
								Let Tu7853
									Save $a2 dirvec.2968
									Let $a1
										CallCls p_surface_ids.2730 d:$a3 f:
										Let $a2
											Restore dirvec.2968
											Let Tu7859
												Save $a2 dirvec.2968
												Let Tu7858
													Save $a1 surface_ids.3860
													Let $a1
														CallCls judge_intersection.2928 d:$a2 f:
														Let $a2
															Li 0
															Ans
																IfEq $a1 $a2
																	Let $a1
																		Li -1
																		Let $a2
																			Restore nref.2966
																			Let $a3
																				Slw $a2 2
																				Let $a4
																					Restore surface_ids.3860
																					Let $f30
																						Stw $a1 $a4 $a3
																						Let $a1
																							Li 0
																							Ans
																								IfEq $a2 $a1
																									Ans
																										Nop
																									Let $a2
																										SetL min_caml_light
																										Let $a1
																											Restore dirvec.2968
																											Let $f0
																												CallCls veciprod.2659 d:$a1 $a2 f:
																												Let $f0
																													CallCls min_caml_fneg d:f:$f0 
																													Let Tu7860
																														Save $f0 hl.3963
																														Let $a1
																															CallCls min_caml_fispos d:f:$f0 
																															Let $a2
																																Li 0
																																Ans
																																	IfEq $a1 $a2
																																		Ans
																																			Nop
																																		Let $f0
																																			Restore hl.3963
																																			Let Tu7861
																																				Save $f0 hl.3963
																																				Let $f0
																																					CallCls min_caml_fsqr d:f:$f0 
																																					Let $f1
																																						Restore hl.3963
																																						Let $f0
																																							FMul $f0 $f1
																																							Let $f1
																																								Restore energy.2967
																																								Let $f0
																																									FMul $f0 $f1
																																									Let $a1
																																										SetL min_caml_beam
																																										Let $f1
																																											Lfd $a1 0
																																											Let $f0
																																												FMul $f0 $f1
																																												Let $a1
																																													SetL min_caml_rgb
																																													Let $a2
																																														SetL min_caml_rgb
																																														Let $f1
																																															Lfd $a2 0
																																															Let $f1
																																																FAdd $f1 $f0
																																																Let $f30
																																																	Stfd $f1 $a1 0
																																																	Let $a1
																																																		SetL min_caml_rgb
																																																		Let $a2
																																																			SetL min_caml_rgb
																																																			Let $f1
																																																				Lfd $a2 8
																																																				Let $f1
																																																					FAdd $f1 $f0
																																																					Let $f30
																																																						Stfd $f1 $a1 8
																																																						Let $a1
																																																							SetL min_caml_rgb
																																																							Let $a2
																																																								SetL min_caml_rgb
																																																								Let $f1
																																																									Lfd $a2 16
																																																									Let $f0
																																																										FAdd $f1 $f0
																																																										Ans
																																																											Stfd $f0 $a1 16
																	Let $a1
																		SetL min_caml_intersected_object_id
																		Let $a1
																			Lwz $a1 0
																			Let $a2
																				SetL min_caml_objects
																				Let $a3
																					Slw $a1 2
																					Let $a2
																						Lwz $a2 $a3
																						Let Tu7863
																							Save $a1 obj_id.3863
																							Let Tu7862
																								Save $a2 obj.3864
																								Let $a1
																									CallCls o_reflectiontype.2688 d:$a2 f:
																									Let $a2
																										Restore obj.3864
																										Let Tu7865
																											Save $a1 m_surface.3865
																											Let Tu7864
																												Save $a2 obj.3864
																												Let $f0
																													CallCls o_diffuse.2708 d:$a2 f:
																													Let $f1
																														Restore energy.2967
																														Let $f0
																															FMul $f0 $f1
																															Let $a1
																																Restore obj.3864
																																Let $a2
																																	Restore dirvec.2968
																																	Let Tu7869
																																		Save $f1 energy.2967
																																		Let Tu7868
																																			Save $a2 dirvec.2968
																																			Let Tu7867
																																				Save $f0 diffuse.3866
																																				Let Tu7866
																																					Save $a1 obj.3864
																																					Let $f30
																																						CallCls get_nvector.2950 d:$a1 $a2 f:
																																						Let $a1
																																							SetL min_caml_startp
																																							Let $a2
																																								SetL min_caml_intersection_point
																																								Let $f30
																																									CallCls veccpy.2648 d:$a1 $a2 f:
																																									Let $a2
																																										SetL min_caml_intersection_point
																																										Let $a1
																																											Restore obj.3864
																																											Let Tu7870
																																												Save $a1 obj.3864
																																												Let $f30
																																													CallCls utexture.2953 d:$a1 $a2 f:
																																													Let $a1
																																														Restore obj_id.3863
																																														Let $a1
																																															ShiftL2 $a1
																																															Let $a2
																																																SetL min_caml_intsec_rectside
																																																Let $a2
																																																	Lwz $a2 0
																																																	Let $a1
																																																		Add $a1 $a2
																																																		Let $a2
																																																			Restore nref.2966
																																																			Let $a3
																																																				Slw $a2 2
																																																				Let $a4
																																																					Restore surface_ids.3860
																																																					Let $f30
																																																						Stw $a1 $a4 $a3
																																																						Let $a1
																																																							Restore pixel.2969
																																																							Let Tu7873
																																																								Save $a4 surface_ids.3860
																																																								Let Tu7872
																																																									Save $a1 pixel.2969
																																																									Let Tu7871
																																																										Save $a2 nref.2966
																																																										Let $a1
																																																											CallCls p_intersection_points.2728 d:$a1 f:
																																																											Let $a2
																																																												Restore nref.2966
																																																												Let $a3
																																																													Slw $a2 2
																																																													Let $a1
																																																														Lwz $a1 $a3
																																																														Let $a3
																																																															SetL min_caml_intersection_point
																																																															Let Tu7874
																																																																Save $a2 nref.2966
																																																																Let $f30
																																																																	CallCls veccpy.2648 d:$a1 $a3 f:
																																																																	Let $a1
																																																																		Restore pixel.2969
																																																																		Let Tu7875
																																																																			Save $a1 pixel.2969
																																																																			Let $a1
																																																																				CallCls p_calc_diffuse.2732 d:$a1 f:
																																																																				Let $a2
																																																																					Restore obj.3864
																																																																					Let Tu7877
																																																																						Save $a2 obj.3864
																																																																						Let Tu7876
																																																																							Save $a1 calc_diffuse.3873
																																																																							Let $f0
																																																																								CallCls o_diffuse.2708 d:$a2 f:
																																																																								Let $f1
																																																																									FLi l.6748
																																																																									Let $a1
																																																																										CallCls min_caml_fless d:f:$f0 $f1 
																																																																										Let $a2
																																																																											Li 0
																																																																											Let $f30
																																																																												IfEq $a1 $a2
																																																																													Let $a1
																																																																														Li 1
																																																																														Let $a2
																																																																															Restore nref.2966
																																																																															Let $a3
																																																																																Slw $a2 2
																																																																																Let $a4
																																																																																	Restore calc_diffuse.3873
																																																																																	Let $f30
																																																																																		Stw $a1 $a4 $a3
																																																																																		Let $a1
																																																																																			Restore pixel.2969
																																																																																			Let Tu7879
																																																																																				Save $a1 pixel.2969
																																																																																				Let Tu7878
																																																																																					Save $a2 nref.2966
																																																																																					Let $a1
																																																																																						CallCls p_energy.2734 d:$a1 f:
																																																																																						Let $a2
																																																																																							Restore nref.2966
																																																																																							Let $a3
																																																																																								Slw $a2 2
																																																																																								Let $a3
																																																																																									Lwz $a1 $a3
																																																																																									Let $a4
																																																																																										SetL min_caml_texture_color
																																																																																										Let Tu7881
																																																																																											Save $a1 energya.3930
																																																																																											Let Tu7880
																																																																																												Save $a2 nref.2966
																																																																																												Let $f30
																																																																																													CallCls veccpy.2648 d:$a3 $a4 f:
																																																																																													Let $a1
																																																																																														Restore nref.2966
																																																																																														Let $a2
																																																																																															Slw $a1 2
																																																																																															Let $a3
																																																																																																Restore energya.3930
																																																																																																Let $a2
																																																																																																	Lwz $a3 $a2
																																																																																																	Let $f0
																																																																																																		FLi l.6346
																																																																																																		Let $f1
																																																																																																			FLi l.6785
																																																																																																			Let $f1
																																																																																																				FReciprocal $f1
																																																																																																				Let $f0
																																																																																																					FMul $f0 $f1
																																																																																																					Let $f1
																																																																																																						Restore diffuse.3866
																																																																																																						Let $f0
																																																																																																							FMul $f0 $f1
																																																																																																							Let Tu7883
																																																																																																								Save $f1 diffuse.3866
																																																																																																								Let Tu7882
																																																																																																									Save $a1 nref.2966
																																																																																																									Let $f30
																																																																																																										CallCls vecscale.2677 d:$a2 f:$f0 
																																																																																																										Let $a1
																																																																																																											Restore pixel.2969
																																																																																																											Let Tu7884
																																																																																																												Save $a1 pixel.2969
																																																																																																												Let $a1
																																																																																																													CallCls p_nvectors.2743 d:$a1 f:
																																																																																																													Let $a2
																																																																																																														Restore nref.2966
																																																																																																														Let $a3
																																																																																																															Slw $a2 2
																																																																																																															Let $a1
																																																																																																																Lwz $a1 $a3
																																																																																																																Let $a3
																																																																																																																	SetL min_caml_nvector
																																																																																																																	Let Tu7885
																																																																																																																		Save $a2 nref.2966
																																																																																																																		Ans
																																																																																																																			CallCls veccpy.2648 d:$a1 $a3 f:
																																																																													Let $a1
																																																																														Li 0
																																																																														Let $a2
																																																																															Restore nref.2966
																																																																															Let $a3
																																																																																Slw $a2 2
																																																																																Let $a4
																																																																																	Restore calc_diffuse.3873
																																																																																	Ans
																																																																																		Stw $a1 $a4 $a3
																																																																												Let $f0
																																																																													FLi l.6787
																																																																													Let $a2
																																																																														SetL min_caml_nvector
																																																																														Let $a1
																																																																															Restore dirvec.2968
																																																																															Let Tu7887
																																																																																Save $a1 dirvec.2968
																																																																																Let Tu7886
																																																																																	Save $f0 Td897.3923
																																																																																	Let $f0
																																																																																		CallCls veciprod.2659 d:$a1 $a2 f:
																																																																																		Let $f1
																																																																																			Restore Td897.3923
																																																																																			Let $f0
																																																																																				FMul $f1 $f0
																																																																																				Let $a2
																																																																																					SetL min_caml_nvector
																																																																																					Let $a1
																																																																																						Restore dirvec.2968
																																																																																						Let Tu7888
																																																																																							Save $a1 dirvec.2968
																																																																																							Let $f30
																																																																																								CallCls vecaccum.2667 d:$a1 $a2 f:$f0 
																																																																																								Let $a1
																																																																																									Restore obj.3864
																																																																																									Let Tu7889
																																																																																										Save $a1 obj.3864
																																																																																										Let $f0
																																																																																											CallCls o_hilight.2710 d:$a1 f:
																																																																																											Let $f1
																																																																																												Restore energy.2967
																																																																																												Let $f0
																																																																																													FMul $f1 $f0
																																																																																													Let $a1
																																																																																														Li 0
																																																																																														Let $a2
																																																																																															SetL min_caml_or_net
																																																																																															Let $a2
																																																																																																Lwz $a2 0
																																																																																																Let Tu7891
																																																																																																	Save $f1 energy.2967
																																																																																																	Let Tu7890
																																																																																																		Save $f0 hilight_scale.3877
																																																																																																		Let $a1
																																																																																																			CallCls shadow_check_one_or_matrix.2913 d:$a1 $a2 f:
																																																																																																			Let $a2
																																																																																																				Li 0
																																																																																																				Let $f30
																																																																																																					IfEq $a1 $a2
																																																																																																						Let $a1
																																																																																																							SetL min_caml_nvector
																																																																																																							Let $a2
																																																																																																								SetL min_caml_light
																																																																																																								Let $f0
																																																																																																									CallCls veciprod.2659 d:$a1 $a2 f:
																																																																																																									Let $f0
																																																																																																										CallCls min_caml_fneg d:f:$f0 
																																																																																																										Let $f1
																																																																																																											Restore diffuse.3866
																																																																																																											Let $f0
																																																																																																												FMul $f0 $f1
																																																																																																												Let $a2
																																																																																																													SetL min_caml_light
																																																																																																													Let $a1
																																																																																																														Restore dirvec.2968
																																																																																																														Let Tu7894
																																																																																																															Save $f1 diffuse.3866
																																																																																																															Let Tu7893
																																																																																																																Save $a1 dirvec.2968
																																																																																																																Let Tu7892
																																																																																																																	Save $f0 bright.3909
																																																																																																																	Let $f0
																																																																																																																		CallCls veciprod.2659 d:$a1 $a2 f:
																																																																																																																		Let $f1
																																																																																																																			CallCls min_caml_fneg d:f:$f0 
																																																																																																																			Let $f0
																																																																																																																				Restore bright.3909
																																																																																																																				Let $f2
																																																																																																																					Restore hilight_scale.3877
																																																																																																																					Let Tu7895
																																																																																																																						Save $f2 hilight_scale.3877
																																																																																																																						Ans
																																																																																																																							CallCls add_light.2956 d:f:$f0 $f1 $f2 
																																																																																																						Ans
																																																																																																							Nop
																																																																																																					Let $a1
																																																																																																						SetL min_caml_intersection_point
																																																																																																						Let $f30
																																																																																																							CallCls setup_startp.2879 d:$a1 f:
																																																																																																							Let $a1
																																																																																																								SetL min_caml_n_reflections
																																																																																																								Let $a1
																																																																																																									Lwz $a1 0
																																																																																																									Let $a1
																																																																																																										Sub $a1 1
																																																																																																										Let $f0
																																																																																																											Restore diffuse.3866
																																																																																																											Let $f1
																																																																																																												Restore hilight_scale.3877
																																																																																																												Let $a2
																																																																																																													Restore dirvec.2968
																																																																																																													Let Tu7896
																																																																																																														Save $a2 dirvec.2968
																																																																																																														Let $f30
																																																																																																															CallCls trace_reflections.2960 d:$a1 $a2 f:$f0 $f1 
																																																																																																															Let $f0
																																																																																																																FLi l.6790
																																																																																																																Let $f1
																																																																																																																	Restore energy.2967
																																																																																																																	Let Tu7897
																																																																																																																		Save $f1 energy.2967
																																																																																																																		Let $a1
																																																																																																																			CallCls min_caml_fless d:f:$f0 $f1 
																																																																																																																			Let $a2
																																																																																																																				Li 0
																																																																																																																				Ans
																																																																																																																					IfEq $a1 $a2
																																																																																																																						Ans
																																																																																																																							Nop
																																																																																																																						Let $a1
																																																																																																																							Li 4
																																																																																																																							Let $a2
																																																																																																																								Restore nref.2966
																																																																																																																								Let $f30
																																																																																																																									IfLE $a1 $a2
																																																																																																																										Ans
																																																																																																																											Nop
																																																																																																																										Let $a1
																																																																																																																											Add $a2 1
																																																																																																																											Let $a3
																																																																																																																												Li -1
																																																																																																																												Let $a1
																																																																																																																													Slw $a1 2
																																																																																																																													Let $a4
																																																																																																																														Restore surface_ids.3860
																																																																																																																														Ans
																																																																																																																															Stw $a3 $a4 $a1
																																																																																																																									Let $a1
																																																																																																																										Li 2
																																																																																																																										Let $a3
																																																																																																																											Restore m_surface.3865
																																																																																																																											Ans
																																																																																																																												IfEq $a3 $a1
																																																																																																																													Let $f0
																																																																																																																														FLi l.6346
																																																																																																																														Let $a1
																																																																																																																															Restore obj.3864
																																																																																																																															Let Tu7901
																																																																																																																																Save $a2 nref.2966
																																																																																																																																Let Tu7900
																																																																																																																																	Save $f0 Td929.3893
																																																																																																																																	Let $f0
																																																																																																																																		CallCls o_diffuse.2708 d:$a1 f:
																																																																																																																																		Let $f1
																																																																																																																																			Restore Td929.3893
																																																																																																																																			Let $f0
																																																																																																																																				FSub $f1 $f0
																																																																																																																																				Let $f1
																																																																																																																																					Restore energy.2967
																																																																																																																																					Let $f0
																																																																																																																																						FMul $f1 $f0
																																																																																																																																						Let $a1
																																																																																																																																							Restore nref.2966
																																																																																																																																							Let $a1
																																																																																																																																								Add $a1 1
																																																																																																																																								Let $a2
																																																																																																																																									SetL min_caml_tmin
																																																																																																																																									Let $f1
																																																																																																																																										Lfd $a2 0
																																																																																																																																										Let $f2
																																																																																																																																											Restore dist.2970
																																																																																																																																											Let $f1
																																																																																																																																												FAdd $f2 $f1
																																																																																																																																												Let $a2
																																																																																																																																													Restore dirvec.2968
																																																																																																																																													Let $a3
																																																																																																																																														Restore pixel.2969
																																																																																																																																														Ans
																																																																																																																																															CallCls trace_ray.2965 d:$a1 $a2 $a3 f:$f0 $f1 
																																																																																																																													Ans
																																																																																																																														Nop
				Ans
					Nop
trace_diffuse_ray.2971 (args) : $a1 (fargs) : $f0 
	Let Tu7904
		Save $f0 energy.2973
		Let Tu7903
			Save $a1 dirvec.2972
			Let $a1
				CallCls judge_intersection_fast.2942 d:$a1 f:
				Let $a2
					Li 0
					Ans
						IfEq $a1 $a2
							Ans
								Nop
							Let $a1
								SetL min_caml_objects
								Let $a2
									SetL min_caml_intersected_object_id
									Let $a2
										Lwz $a2 0
										Let $a2
											Slw $a2 2
											Let $a1
												Lwz $a1 $a2
												Let $a2
													Restore dirvec.2972
													Let Tu7905
														Save $a1 obj.3832
														Let $a2
															CallCls d_vec.2745 d:$a2 f:
															Let $a1
																Restore obj.3832
																Let Tu7906
																	Save $a1 obj.3832
																	Let $f30
																		CallCls get_nvector.2950 d:$a1 $a2 f:
																		Let $a2
																			SetL min_caml_intersection_point
																			Let $a1
																				Restore obj.3832
																				Let Tu7907
																					Save $a1 obj.3832
																					Let $f30
																						CallCls utexture.2953 d:$a1 $a2 f:
																						Let $a1
																							Li 0
																							Let $a2
																								SetL min_caml_or_net
																								Let $a2
																									Lwz $a2 0
																									Let $a1
																										CallCls shadow_check_one_or_matrix.2913 d:$a1 $a2 f:
																										Let $a2
																											Li 0
																											Ans
																												IfEq $a1 $a2
																													Let $a1
																														SetL min_caml_nvector
																														Let $a2
																															SetL min_caml_light
																															Let $f0
																																CallCls veciprod.2659 d:$a1 $a2 f:
																																Let $f0
																																	CallCls min_caml_fneg d:f:$f0 
																																	Let Tu7908
																																		Save $f0 br.3837
																																		Let $a1
																																			CallCls min_caml_fispos d:f:$f0 
																																			Let $a2
																																				Li 0
																																				Let $f0
																																					IfEq $a1 $a2
																																						Ans
																																							FLi l.6345
																																						Let $f0
																																							Restore br.3837
																																							Ans
																																								FMr $f0
																																					Let $a1
																																						SetL min_caml_diffuse_ray
																																						Let $f1
																																							Restore energy.2973
																																							Let $f0
																																								FMul $f1 $f0
																																								Let $a2
																																									Restore obj.3832
																																									Let Tu7910
																																										Save $a1 Ta828.3839
																																										Let Tu7909
																																											Save $f0 Td829.3842
																																											Let $f0
																																												CallCls o_diffuse.2708 d:$a2 f:
																																												Let $f1
																																													Restore Td829.3842
																																													Let $f0
																																														FMul $f1 $f0
																																														Let $a2
																																															SetL min_caml_texture_color
																																															Let $a1
																																																Restore Ta828.3839
																																																Ans
																																																	CallCls vecaccum.2667 d:$a1 $a2 f:$f0 
																													Ans
																														Nop
iter_trace_diffuse_rays.2974 (args) : $a1 (fargs) : 
	Let $a5
		Li 0
		Ans
			IfLE $a5 $a4
				Let $a5
					Slw $a4 2
					Let $a5
						Lwz $a1 $a5
						Let Tu7915
							Save $a3 org.2977
							Let Tu7914
								Save $a1 dirvec_group.2975
								Let Tu7913
									Save $a4 index.2978
									Let Tu7912
										Save $a2 nvector.2976
										Let $a1
											CallCls d_vec.2745 d:$a5 f:
											Let $a2
												Restore nvector.2976
												Let Tu7916
													Save $a2 nvector.2976
													Let $f0
														CallCls veciprod.2659 d:$a1 $a2 f:
														Let Tu7917
															Save $f0 p.3812
															Let $a1
																CallCls min_caml_fisneg d:f:$f0 
																Let $a2
																	Li 0
																	Let $f30
																		IfEq $a1 $a2
																			Let $a1
																				Restore index.2978
																				Let $a2
																					Slw $a1 2
																					Let $a3
																						Restore dirvec_group.2975
																						Let $a2
																							Lwz $a3 $a2
																							Let $f0
																								FLi l.6808
																								Let $f0
																									FReciprocal $f0
																									Let $f1
																										Restore p.3812
																										Let $f0
																											FMul $f1 $f0
																											Let Tu7919
																												Save $a3 dirvec_group.2975
																												Let Tu7918
																													Save $a1 index.2978
																													Ans
																														CallCls trace_diffuse_ray.2971 d:$a2 f:$f0 
																			Let $a1
																				Restore index.2978
																				Let $a2
																					Add $a1 1
																					Let $a2
																						Slw $a2 2
																						Let $a3
																							Restore dirvec_group.2975
																							Let $a2
																								Lwz $a3 $a2
																								Let $f0
																									FLi l.6806
																									Let $f0
																										FReciprocal $f0
																										Let $f1
																											Restore p.3812
																											Let $f0
																												FMul $f1 $f0
																												Let Tu7921
																													Save $a3 dirvec_group.2975
																													Let Tu7920
																														Save $a1 index.2978
																														Ans
																															CallCls trace_diffuse_ray.2971 d:$a2 f:$f0 
																		Let $a1
																			Restore index.2978
																			Let $a4
																				Sub $a1 2
																				Let $a1
																					Restore dirvec_group.2975
																					Let $a2
																						Restore nvector.2976
																						Let $a3
																							Restore org.2977
																							Ans
																								CallCls iter_trace_diffuse_rays.2974 d:$a1 $a2 $a3 $a4 f:
				Ans
					Nop
trace_diffuse_rays.2979 (args) : $a1 (fargs) : 
	Let Tu7925
		Save $a3 org.2982
		Let Tu7924
			Save $a2 nvector.2981
			Let Tu7923
				Save $a1 dirvec_group.2980
				Let $f30
					CallCls setup_startp.2879 d:$a3 f:
					Let $a4
						Li 118
						Let $a1
							Restore dirvec_group.2980
							Let $a2
								Restore nvector.2981
								Let $a3
									Restore org.2982
									Ans
										CallCls iter_trace_diffuse_rays.2974 d:$a1 $a2 $a3 $a4 f:
trace_diffuse_ray_80percent.2983 (args) : $a1 (fargs) : 
	Let $a4
		Li 0
		Let Tu7932
			Save $a3 org.2986
			Let Tu7931
				Save $a2 nvector.2985
				Let Tu7930
					Save $a1 group_id.2984
					Let $f30
						IfEq $a1 $a4
							Ans
								Nop
							Let $a4
								SetL min_caml_dirvecs
								Let $a4
									Lwz $a4 0
									Let Tu7929
										Save $a3 org.2986
										Let Tu7928
											Save $a2 nvector.2985
											Let Tu7927
												Save $a1 group_id.2984
												Ans
													CallCls trace_diffuse_rays.2979 d:$a4 $a2 $a3 f:
						Let $a1
							Li 1
							Let $a2
								Restore group_id.2984
								Let Tu7938
									Save $a2 group_id.2984
									Let $f30
										IfEq $a2 $a1
											Ans
												Nop
											Let $a1
												SetL min_caml_dirvecs
												Let $a1
													Lwz $a1 4
													Let $a3
														Restore nvector.2985
														Let $a4
															Restore org.2986
															Let Tu7937
																Save $a4 org.2986
																Let Tu7936
																	Save $a3 nvector.2985
																	Let Tu7935
																		Save $a2 group_id.2984
																		Ans
																			CallCls trace_diffuse_rays.2979 d:$a1 $a3 $a4 f:
										Let $a1
											Li 2
											Let $a2
												Restore group_id.2984
												Let Tu7944
													Save $a2 group_id.2984
													Let $f30
														IfEq $a2 $a1
															Ans
																Nop
															Let $a1
																SetL min_caml_dirvecs
																Let $a1
																	Lwz $a1 8
																	Let $a3
																		Restore nvector.2985
																		Let $a4
																			Restore org.2986
																			Let Tu7943
																				Save $a4 org.2986
																				Let Tu7942
																					Save $a3 nvector.2985
																					Let Tu7941
																						Save $a2 group_id.2984
																						Ans
																							CallCls trace_diffuse_rays.2979 d:$a1 $a3 $a4 f:
														Let $a1
															Li 3
															Let $a2
																Restore group_id.2984
																Let Tu7950
																	Save $a2 group_id.2984
																	Let $f30
																		IfEq $a2 $a1
																			Ans
																				Nop
																			Let $a1
																				SetL min_caml_dirvecs
																				Let $a1
																					Lwz $a1 12
																					Let $a3
																						Restore nvector.2985
																						Let $a4
																							Restore org.2986
																							Let Tu7949
																								Save $a4 org.2986
																								Let Tu7948
																									Save $a3 nvector.2985
																									Let Tu7947
																										Save $a2 group_id.2984
																										Ans
																											CallCls trace_diffuse_rays.2979 d:$a1 $a3 $a4 f:
																		Let $a1
																			Li 4
																			Let $a2
																				Restore group_id.2984
																				Ans
																					IfEq $a2 $a1
																						Ans
																							Nop
																						Let $a1
																							SetL min_caml_dirvecs
																							Let $a1
																								Lwz $a1 16
																								Let $a2
																									Restore nvector.2985
																									Let $a3
																										Restore org.2986
																										Ans
																											CallCls trace_diffuse_rays.2979 d:$a1 $a2 $a3 f:
calc_diffuse_using_1point.2987 (args) : $a1 (fargs) : 
	Let Tu7953
		Save $a2 nref.2989
		Let Tu7952
			Save $a1 pixel.2988
			Let $a1
				CallCls p_received_ray_20percent.2736 d:$a1 f:
				Let $a2
					Restore pixel.2988
					Let Tu7955
						Save $a1 ray20p.3771
						Let Tu7954
							Save $a2 pixel.2988
							Let $a1
								CallCls p_nvectors.2743 d:$a2 f:
								Let $a2
									Restore pixel.2988
									Let Tu7957
										Save $a1 nvectors.3772
										Let Tu7956
											Save $a2 pixel.2988
											Let $a1
												CallCls p_intersection_points.2728 d:$a2 f:
												Let $a2
													Restore pixel.2988
													Let Tu7959
														Save $a1 intersection_points.3773
														Let Tu7958
															Save $a2 pixel.2988
															Let $a1
																CallCls p_energy.2734 d:$a2 f:
																Let $a2
																	SetL min_caml_diffuse_ray
																	Let $a3
																		Restore nref.2989
																		Let $a4
																			Slw $a3 2
																			Let $a5
																				Restore ray20p.3771
																				Let $a4
																					Lwz $a5 $a4
																					Let Tu7961
																						Save $a1 energya.3774
																						Let Tu7960
																							Save $a3 nref.2989
																							Let $f30
																								CallCls veccpy.2648 d:$a2 $a4 f:
																								Let $a1
																									Restore pixel.2988
																									Let $a1
																										CallCls p_group_id.2738 d:$a1 f:
																										Let $a2
																											Restore nref.2989
																											Let $a3
																												Slw $a2 2
																												Let $a4
																													Restore nvectors.3772
																													Let $a3
																														Lwz $a4 $a3
																														Let $a4
																															Slw $a2 2
																															Let $a5
																																Restore intersection_points.3773
																																Let $a4
																																	Lwz $a5 $a4
																																	Let Tu7962
																																		Save $a2 nref.2989
																																		Let $f30
																																			CallCls trace_diffuse_ray_80percent.2983 d:$a1 $a3 $a4 f:
																																			Let $a1
																																				SetL min_caml_rgb
																																				Let $a2
																																					Restore nref.2989
																																					Let $a2
																																						Slw $a2 2
																																						Let $a3
																																							Restore energya.3774
																																							Let $a2
																																								Lwz $a3 $a2
																																								Let $a3
																																									SetL min_caml_diffuse_ray
																																									Ans
																																										CallCls vecaccumv.2680 d:$a1 $a2 $a3 f:
calc_diffuse_using_5points.2990 (args) : $a1 (fargs) : 
	Let $a6
		Slw $a1 2
		Let $a2
			Lwz $a2 $a6
			Let Tu7967
				Save $a5 nref.2995
				Let Tu7966
					Save $a4 next.2994
					Let Tu7965
						Save $a3 cur.2993
						Let Tu7964
							Save $a1 x.2991
							Let $a1
								CallCls p_received_ray_20percent.2736 d:$a2 f:
								Let $a2
									Restore x.2991
									Let $a3
										Sub $a2 1
										Let $a3
											Slw $a3 2
											Let $a4
												Restore cur.2993
												Let $a3
													Lwz $a4 $a3
													Let Tu7970
														Save $a1 r_up.3737
														Let Tu7969
															Save $a4 cur.2993
															Let Tu7968
																Save $a2 x.2991
																Let $a1
																	CallCls p_received_ray_20percent.2736 d:$a3 f:
																	Let $a2
																		Restore x.2991
																		Let $a3
																			Slw $a2 2
																			Let $a4
																				Restore cur.2993
																				Let $a3
																					Lwz $a4 $a3
																					Let Tu7973
																						Save $a1 r_left.3738
																						Let Tu7972
																							Save $a4 cur.2993
																							Let Tu7971
																								Save $a2 x.2991
																								Let $a1
																									CallCls p_received_ray_20percent.2736 d:$a3 f:
																									Let $a2
																										Restore x.2991
																										Let $a3
																											Add $a2 1
																											Let $a3
																												Slw $a3 2
																												Let $a4
																													Restore cur.2993
																													Let $a3
																														Lwz $a4 $a3
																														Let Tu7976
																															Save $a4 cur.2993
																															Let Tu7975
																																Save $a1 r_center.3739
																																Let Tu7974
																																	Save $a2 x.2991
																																	Let $a1
																																		CallCls p_received_ray_20percent.2736 d:$a3 f:
																																		Let $a2
																																			Restore x.2991
																																			Let $a3
																																				Slw $a2 2
																																				Let $a4
																																					Restore next.2994
																																					Let $a3
																																						Lwz $a4 $a3
																																						Let Tu7978
																																							Save $a2 x.2991
																																							Let Tu7977
																																								Save $a1 r_right.3740
																																								Let $a1
																																									CallCls p_received_ray_20percent.2736 d:$a3 f:
																																									Let $a2
																																										SetL min_caml_diffuse_ray
																																										Let $a3
																																											Restore nref.2995
																																											Let $a4
																																												Slw $a3 2
																																												Let $a5
																																													Restore r_up.3737
																																													Let $a4
																																														Lwz $a5 $a4
																																														Let Tu7980
																																															Save $a1 r_down.3741
																																															Let Tu7979
																																																Save $a3 nref.2995
																																																Let $f30
																																																	CallCls veccpy.2648 d:$a2 $a4 f:
																																																	Let $a1
																																																		SetL min_caml_diffuse_ray
																																																		Let $a2
																																																			Restore nref.2995
																																																			Let $a3
																																																				Slw $a2 2
																																																				Let $a4
																																																					Restore r_left.3738
																																																					Let $a3
																																																						Lwz $a4 $a3
																																																						Let Tu7981
																																																							Save $a2 nref.2995
																																																							Let $f30
																																																								CallCls vecadd.2671 d:$a1 $a3 f:
																																																								Let $a1
																																																									SetL min_caml_diffuse_ray
																																																									Let $a2
																																																										Restore nref.2995
																																																										Let $a3
																																																											Slw $a2 2
																																																											Let $a4
																																																												Restore r_center.3739
																																																												Let $a3
																																																													Lwz $a4 $a3
																																																													Let Tu7982
																																																														Save $a2 nref.2995
																																																														Let $f30
																																																															CallCls vecadd.2671 d:$a1 $a3 f:
																																																															Let $a1
																																																																SetL min_caml_diffuse_ray
																																																																Let $a2
																																																																	Restore nref.2995
																																																																	Let $a3
																																																																		Slw $a2 2
																																																																		Let $a4
																																																																			Restore r_right.3740
																																																																			Let $a3
																																																																				Lwz $a4 $a3
																																																																				Let Tu7983
																																																																					Save $a2 nref.2995
																																																																					Let $f30
																																																																						CallCls vecadd.2671 d:$a1 $a3 f:
																																																																						Let $a1
																																																																							SetL min_caml_diffuse_ray
																																																																							Let $a2
																																																																								Restore nref.2995
																																																																								Let $a3
																																																																									Slw $a2 2
																																																																									Let $a4
																																																																										Restore r_down.3741
																																																																										Let $a3
																																																																											Lwz $a4 $a3
																																																																											Let Tu7984
																																																																												Save $a2 nref.2995
																																																																												Let $f30
																																																																													CallCls vecadd.2671 d:$a1 $a3 f:
																																																																													Let $a1
																																																																														Restore x.2991
																																																																														Let $a1
																																																																															Slw $a1 2
																																																																															Let $a2
																																																																																Restore cur.2993
																																																																																Let $a1
																																																																																	Lwz $a2 $a1
																																																																																	Let $a1
																																																																																		CallCls p_energy.2734 d:$a1 f:
																																																																																		Let $a2
																																																																																			SetL min_caml_rgb
																																																																																			Let $a3
																																																																																				Restore nref.2995
																																																																																				Let $a3
																																																																																					Slw $a3 2
																																																																																					Let $a1
																																																																																						Lwz $a1 $a3
																																																																																						Let $a3
																																																																																							SetL min_caml_diffuse_ray
																																																																																							Ans
																																																																																								CallCls vecaccumv.2680 d:$a2 $a1 $a3 f:
do_without_neighbors.2996 (args) : $a1 (fargs) : 
	Let $a3
		Li 4
		Ans
			IfLE $a2 $a3
				Let Tu7987
					Save $a1 pixel.2997
					Let Tu7986
						Save $a2 nref.2998
						Let $a1
							CallCls p_surface_ids.2730 d:$a1 f:
							Let $a2
								Li 0
								Let $a3
									Restore nref.2998
									Let $a4
										Slw $a3 2
										Let $a1
											Lwz $a1 $a4
											Ans
												IfLE $a2 $a1
													Let $a1
														Restore pixel.2997
														Let Tu7989
															Save $a1 pixel.2997
															Let Tu7988
																Save $a3 nref.2998
																Let $a1
																	CallCls p_calc_diffuse.2732 d:$a1 f:
																	Let $a2
																		Restore nref.2998
																		Let $a3
																			Slw $a2 2
																			Let $a1
																				Lwz $a1 $a3
																				Let $a3
																					Li 0
																					Let Tu7992
																						Save $a2 nref.2998
																						Let $f30
																							IfEq $a1 $a3
																								Ans
																									Nop
																								Let $a1
																									Restore pixel.2997
																									Let Tu7991
																										Save $a1 pixel.2997
																										Let Tu7990
																											Save $a2 nref.2998
																											Ans
																												CallCls calc_diffuse_using_1point.2987 d:$a1 $a2 f:
																							Let $a1
																								Restore nref.2998
																								Let $a2
																									Add $a1 1
																									Let $a1
																										Restore pixel.2997
																										Ans
																											CallCls do_without_neighbors.2996 d:$a1 $a2 f:
													Ans
														Nop
				Ans
					Nop
neighbors_exist.2999 (args) : $a1 (fargs) : 
	Let $a3
		SetL min_caml_image_size
		Let $a3
			Lwz $a3 4
			Let $a4
				Add $a2 1
				Ans
					IfLE $a3 $a4
						Ans
							Li 0
						Let $a3
							Li 0
							Ans
								IfLE $a2 $a3
									Ans
										Li 0
									Let $a2
										SetL min_caml_image_size
										Let $a2
											Lwz $a2 0
											Let $a3
												Add $a1 1
												Ans
													IfLE $a2 $a3
														Ans
															Li 0
														Let $a2
															Li 0
															Ans
																IfLE $a1 $a2
																	Ans
																		Li 0
																	Ans
																		Li 1
get_surface_id.3003 (args) : $a1 (fargs) : 
	Let Tu7993
		Save $a2 index.3005
		Let $a1
			CallCls p_surface_ids.2730 d:$a1 f:
			Let $a2
				Restore index.3005
				Let $a2
					Slw $a2 2
					Ans
						Lwz $a1 $a2
neighbors_are_available.3006 (args) : $a1 (fargs) : 
	Let $a6
		Slw $a1 2
		Let $a6
			Lwz $a3 $a6
			Let Tu7998
				Save $a3 cur.3009
				Let Tu7997
					Save $a4 next.3010
					Let Tu7996
						Save $a5 nref.3011
						Let Tu7995
							Save $a2 prev.3008
							Let Tu7994
								Save $a1 x.3007
								Let $a1
									CallCls get_surface_id.3003 d:$a6 $a5 f:
									Let $a2
										Restore x.3007
										Let $a3
											Slw $a2 2
											Let $a4
												Restore prev.3008
												Let $a3
													Lwz $a4 $a3
													Let $a4
														Restore nref.3011
														Let Tu8001
															Save $a4 nref.3011
															Let Tu8000
																Save $a2 x.3007
																Let Tu7999
																	Save $a1 sid_center.3700
																	Let $a1
																		CallCls get_surface_id.3003 d:$a3 $a4 f:
																		Let $a2
																			Restore sid_center.3700
																			Ans
																				IfEq $a1 $a2
																					Let $a1
																						Restore x.3007
																						Let $a3
																							Slw $a1 2
																							Let $a4
																								Restore next.3010
																								Let $a3
																									Lwz $a4 $a3
																									Let $a4
																										Restore nref.3011
																										Let Tu8015
																											Save $a4 nref.3011
																											Let Tu8014
																												Save $a1 x.3007
																												Let Tu8013
																													Save $a2 sid_center.3700
																													Let $a1
																														CallCls get_surface_id.3003 d:$a3 $a4 f:
																														Let $a2
																															Restore sid_center.3700
																															Ans
																																IfEq $a1 $a2
																																	Let $a1
																																		Restore x.3007
																																		Let $a3
																																			Sub $a1 1
																																			Let $a3
																																				Slw $a3 2
																																				Let $a4
																																					Restore cur.3009
																																					Let $a3
																																						Lwz $a4 $a3
																																						Let $a5
																																							Restore nref.3011
																																							Let Tu8023
																																								Save $a5 nref.3011
																																								Let Tu8022
																																									Save $a4 cur.3009
																																									Let Tu8021
																																										Save $a1 x.3007
																																										Let Tu8020
																																											Save $a2 sid_center.3700
																																											Let $a1
																																												CallCls get_surface_id.3003 d:$a3 $a5 f:
																																												Let $a2
																																													Restore sid_center.3700
																																													Ans
																																														IfEq $a1 $a2
																																															Let $a1
																																																Restore x.3007
																																																Let $a1
																																																	Add $a1 1
																																																	Let $a1
																																																		Slw $a1 2
																																																		Let $a3
																																																			Restore cur.3009
																																																			Let $a1
																																																				Lwz $a3 $a1
																																																				Let $a3
																																																					Restore nref.3011
																																																					Let Tu8024
																																																						Save $a2 sid_center.3700
																																																						Let $a1
																																																							CallCls get_surface_id.3003 d:$a1 $a3 f:
																																																							Let $a2
																																																								Restore sid_center.3700
																																																								Ans
																																																									IfEq $a1 $a2
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
try_exploit_neighbors.3012 (args) : $a1 (fargs) : 
	Let $a7
		Slw $a1 2
		Let $a7
			Lwz $a4 $a7
			Let $a8
				Li 4
				Ans
					IfLE $a6 $a8
						Let $a8
							Li 0
							Let Tu8033
								Save $a2 y.3014
								Let Tu8032
									Save $a7 pixel.3687
									Let Tu8031
										Save $a6 nref.3018
										Let Tu8030
											Save $a5 next.3017
											Let Tu8029
												Save $a4 cur.3016
												Let Tu8028
													Save $a3 prev.3015
													Let Tu8027
														Save $a1 x.3013
														Let Tu8026
															Save $a8 Ti699.3689
															Let $a1
																CallCls get_surface_id.3003 d:$a7 $a6 f:
																Let $a2
																	Restore Ti699.3689
																	Ans
																		IfLE $a2 $a1
																			Let $a1
																				Restore x.3013
																				Let $a2
																					Restore prev.3015
																					Let $a3
																						Restore cur.3016
																						Let $a4
																							Restore next.3017
																							Let $a5
																								Restore nref.3018
																								Let Tu8049
																									Save $a4 next.3017
																									Let Tu8048
																										Save $a2 prev.3015
																										Let Tu8047
																											Save $a5 nref.3018
																											Let Tu8046
																												Save $a3 cur.3016
																												Let Tu8045
																													Save $a1 x.3013
																													Let $a1
																														CallCls neighbors_are_available.3006 d:$a1 $a2 $a3 $a4 $a5 f:
																														Let $a2
																															Li 0
																															Ans
																																IfEq $a1 $a2
																																	Let $a1
																																		Restore x.3013
																																		Let $a1
																																			Slw $a1 2
																																			Let $a2
																																				Restore cur.3016
																																				Let $a1
																																					Lwz $a2 $a1
																																					Let $a2
																																						Restore nref.3018
																																						Ans
																																							CallCls do_without_neighbors.2996 d:$a1 $a2 f:
																																	Let $a1
																																		Restore pixel.3687
																																		Let $a1
																																			CallCls p_calc_diffuse.2732 d:$a1 f:
																																			Let $a5
																																				Restore nref.3018
																																				Let $a2
																																					Slw $a5 2
																																					Let $a1
																																						Lwz $a1 $a2
																																						Let $a2
																																							Li 0
																																							Let Tu8055
																																								Save $a5 nref.3018
																																								Let $f30
																																									IfEq $a1 $a2
																																										Ans
																																											Nop
																																										Let $a1
																																											Restore x.3013
																																											Let $a2
																																												Restore prev.3015
																																												Let $a3
																																													Restore cur.3016
																																													Let $a4
																																														Restore next.3017
																																														Let Tu8054
																																															Save $a4 next.3017
																																															Let Tu8053
																																																Save $a3 cur.3016
																																																Let Tu8052
																																																	Save $a2 prev.3015
																																																	Let Tu8051
																																																		Save $a1 x.3013
																																																		Let Tu8050
																																																			Save $a5 nref.3018
																																																			Ans
																																																				CallCls calc_diffuse_using_5points.2990 d:$a1 $a2 $a3 $a4 $a5 f:
																																									Let $a1
																																										Restore nref.3018
																																										Let $a6
																																											Add $a1 1
																																											Let $a1
																																												Restore x.3013
																																												Let $a2
																																													Restore y.3014
																																													Let $a3
																																														Restore prev.3015
																																														Let $a4
																																															Restore cur.3016
																																															Let $a5
																																																Restore next.3017
																																																Ans
																																																	CallCls try_exploit_neighbors.3012 d:$a1 $a2 $a3 $a4 $a5 $a6 f:
																			Ans
																				Nop
						Ans
							Nop
write_ppm_header.3019 (args) : (fargs) : 
	Let $a1
		Li 80
		Let $f30
			CallCls min_caml_print_char d:$a1 f:
			Let $a1
				Li 51
				Let $f30
					CallCls min_caml_print_char d:$a1 f:
					Let $a1
						Li 10
						Let $f30
							CallCls min_caml_print_char d:$a1 f:
							Let $a1
								SetL min_caml_image_size
								Let $a1
									Lwz $a1 0
									Let $f30
										CallCls min_caml_print_int d:$a1 f:
										Let $a1
											Li 32
											Let $f30
												CallCls min_caml_print_char d:$a1 f:
												Let $a1
													SetL min_caml_image_size
													Let $a1
														Lwz $a1 4
														Let $f30
															CallCls min_caml_print_int d:$a1 f:
															Let $a1
																Li 32
																Let $f30
																	CallCls min_caml_print_char d:$a1 f:
																	Let $a1
																		Li 255
																		Let $f30
																			CallCls min_caml_print_int d:$a1 f:
																			Let $a1
																				Li 10
																				Ans
																					CallCls min_caml_print_char d:$a1 f:
write_rgb_element.3021 (args) : (fargs) : $f0 
	Let $a1
		CallCls min_caml_int_of_float d:f:$f0 
		Let $a2
			Li 255
			Let $a1
				IfLE $a1 $a2
					Let $a2
						Li 0
						Ans
							IfLE $a2 $a1
								Ans
									Mr $a1
								Ans
									Li 0
					Ans
						Li 255
				Ans
					CallCls min_caml_print_int d:$a1 f:
write_rgb.3023 (args) : (fargs) : 
	Let $a1
		SetL min_caml_rgb
		Let $f0
			Lfd $a1 0
			Let $f30
				CallCls write_rgb_element.3021 d:f:$f0 
				Let $a1
					Li 32
					Let $f30
						CallCls min_caml_print_char d:$a1 f:
						Let $a1
							SetL min_caml_rgb
							Let $f0
								Lfd $a1 8
								Let $f30
									CallCls write_rgb_element.3021 d:f:$f0 
									Let $a1
										Li 32
										Let $f30
											CallCls min_caml_print_char d:$a1 f:
											Let $a1
												SetL min_caml_rgb
												Let $f0
													Lfd $a1 16
													Let $f30
														CallCls write_rgb_element.3021 d:f:$f0 
														Let $a1
															Li 10
															Ans
																CallCls min_caml_print_char d:$a1 f:
pretrace_diffuse_rays.3025 (args) : $a1 (fargs) : 
	Let $a3
		Li 4
		Ans
			IfLE $a2 $a3
				Let Tu8061
					Save $a2 nref.3027
					Let Tu8060
						Save $a1 pixel.3026
						Let $a1
							CallCls get_surface_id.3003 d:$a1 $a2 f:
							Let $a2
								Li 0
								Ans
									IfLE $a2 $a1
										Let $a1
											Restore pixel.3026
											Let Tu8062
												Save $a1 pixel.3026
												Let $a1
													CallCls p_calc_diffuse.2732 d:$a1 f:
													Let $a2
														Restore nref.3027
														Let $a3
															Slw $a2 2
															Let $a1
																Lwz $a1 $a3
																Let $a3
																	Li 0
																	Let Tu8072
																		Save $a2 nref.3027
																		Let $f30
																			IfEq $a1 $a3
																				Ans
																					Nop
																				Let $a1
																					Restore pixel.3026
																					Let Tu8064
																						Save $a2 nref.3027
																						Let Tu8063
																							Save $a1 pixel.3026
																							Let $a1
																								CallCls p_group_id.2738 d:$a1 f:
																								Let $a2
																									SetL min_caml_diffuse_ray
																									Let Tu8065
																										Save $a1 group_id.3630
																										Let $f30
																											CallCls vecbzero.2646 d:$a2 f:
																											Let $a1
																												Restore pixel.3026
																												Let Tu8066
																													Save $a1 pixel.3026
																													Let $a1
																														CallCls p_nvectors.2743 d:$a1 f:
																														Let $a2
																															Restore pixel.3026
																															Let Tu8068
																																Save $a2 pixel.3026
																																Let Tu8067
																																	Save $a1 nvectors.3632
																																	Let $a1
																																		CallCls p_intersection_points.2728 d:$a2 f:
																																		Let $a2
																																			SetL min_caml_dirvecs
																																			Let $a3
																																				Restore group_id.3630
																																				Let $a3
																																					Slw $a3 2
																																					Let $a2
																																						Lwz $a2 $a3
																																						Let $a3
																																							Restore nref.3027
																																							Let $a4
																																								Slw $a3 2
																																								Let $a5
																																									Restore nvectors.3632
																																									Let $a4
																																										Lwz $a5 $a4
																																										Let $a5
																																											Slw $a3 2
																																											Let $a1
																																												Lwz $a1 $a5
																																												Let Tu8069
																																													Save $a3 nref.3027
																																													Let $f30
																																														CallCls trace_diffuse_rays.2979 d:$a2 $a4 $a1 f:
																																														Let $a1
																																															Restore pixel.3026
																																															Let Tu8070
																																																Save $a1 pixel.3026
																																																Let $a1
																																																	CallCls p_received_ray_20percent.2736 d:$a1 f:
																																																	Let $a2
																																																		Restore nref.3027
																																																		Let $a3
																																																			Slw $a2 2
																																																			Let $a1
																																																				Lwz $a1 $a3
																																																				Let $a3
																																																					SetL min_caml_diffuse_ray
																																																					Let Tu8071
																																																						Save $a2 nref.3027
																																																						Ans
																																																							CallCls veccpy.2648 d:$a1 $a3 f:
																			Let $a1
																				Restore nref.3027
																				Let $a2
																					Add $a1 1
																					Let $a1
																						Restore pixel.3026
																						Ans
																							CallCls pretrace_diffuse_rays.3025 d:$a1 $a2 f:
										Ans
											Nop
				Ans
					Nop
pretrace_pixels.3028 (args) : $a1 (fargs) : $f0 
	Let $a4
		Li 0
		Ans
			IfLE $a4 $a2
				Let $a4
					SetL min_caml_scan_pitch
					Let $f3
						Lfd $a4 0
						Let $a4
							SetL min_caml_image_center
							Let $a4
								Lwz $a4 0
								Let $a4
									Sub $a2 $a4
									Let Tu8080
										Save $a3 group_id.3031
										Let Tu8079
											Save $a1 line.3029
											Let Tu8078
												Save $a2 x.3030
												Let Tu8077
													Save $f2 lc2.3034
													Let Tu8076
														Save $f1 lc1.3033
														Let Tu8075
															Save $f0 lc0.3032
															Let Tu8074
																Save $f3 Td609.3613
																Let $f0
																	CallCls min_caml_float_of_int d:$a4 f:
																	Let $f1
																		Restore Td609.3613
																		Let $f0
																			FMul $f1 $f0
																			Let $a1
																				SetL min_caml_ptrace_dirvec
																				Let $a2
																					SetL min_caml_screenx_dir
																					Let $f1
																						Lfd $a2 0
																						Let $f1
																							FMul $f0 $f1
																							Let $f2
																								Restore lc0.3032
																								Let $f1
																									FAdd $f1 $f2
																									Let $f30
																										Stfd $f1 $a1 0
																										Let $a1
																											SetL min_caml_ptrace_dirvec
																											Let $a2
																												SetL min_caml_screenx_dir
																												Let $f1
																													Lfd $a2 8
																													Let $f1
																														FMul $f0 $f1
																														Let $f3
																															Restore lc1.3033
																															Let $f1
																																FAdd $f1 $f3
																																Let $f30
																																	Stfd $f1 $a1 8
																																	Let $a1
																																		SetL min_caml_ptrace_dirvec
																																		Let $a2
																																			SetL min_caml_screenx_dir
																																			Let $f1
																																				Lfd $a2 16
																																				Let $f0
																																					FMul $f0 $f1
																																					Let $f1
																																						Restore lc2.3034
																																						Let $f0
																																							FAdd $f0 $f1
																																							Let $f30
																																								Stfd $f0 $a1 16
																																								Let $a1
																																									SetL min_caml_ptrace_dirvec
																																									Let $a2
																																										Li 0
																																										Let Tu8083
																																											Save $f1 lc2.3034
																																											Let Tu8082
																																												Save $f3 lc1.3033
																																												Let Tu8081
																																													Save $f2 lc0.3032
																																													Let $f30
																																														CallCls vecunit_sgn.2656 d:$a1 $a2 f:
																																														Let $a1
																																															SetL min_caml_rgb
																																															Let $f30
																																																CallCls vecbzero.2646 d:$a1 f:
																																																Let $a1
																																																	SetL min_caml_startp
																																																	Let $a2
																																																		SetL min_caml_viewpoint
																																																		Let $f30
																																																			CallCls veccpy.2648 d:$a1 $a2 f:
																																																			Let $a1
																																																				Li 0
																																																				Let $f0
																																																					FLi l.6346
																																																					Let $a2
																																																						SetL min_caml_ptrace_dirvec
																																																						Let $a3
																																																							Restore x.3030
																																																							Let $a4
																																																								Slw $a3 2
																																																								Let $a5
																																																									Restore line.3029
																																																									Let $a4
																																																										Lwz $a5 $a4
																																																										Let $f1
																																																											FLi l.6345
																																																											Let Tu8085
																																																												Save $a5 line.3029
																																																												Let Tu8084
																																																													Save $a3 x.3030
																																																													Let $f30
																																																														CallCls trace_ray.2965 d:$a1 $a2 $a4 f:$f0 $f1 
																																																														Let $a1
																																																															Restore x.3030
																																																															Let $a2
																																																																Slw $a1 2
																																																																Let $a3
																																																																	Restore line.3029
																																																																	Let $a2
																																																																		Lwz $a3 $a2
																																																																		Let Tu8087
																																																																			Save $a3 line.3029
																																																																			Let Tu8086
																																																																				Save $a1 x.3030
																																																																				Let $a1
																																																																					CallCls p_rgb.2726 d:$a2 f:
																																																																					Let $a2
																																																																						SetL min_caml_rgb
																																																																						Let $f30
																																																																							CallCls veccpy.2648 d:$a1 $a2 f:
																																																																							Let $a1
																																																																								Restore x.3030
																																																																								Let $a2
																																																																									Slw $a1 2
																																																																									Let $a3
																																																																										Restore line.3029
																																																																										Let $a2
																																																																											Lwz $a3 $a2
																																																																											Let $a4
																																																																												Restore group_id.3031
																																																																												Let Tu8090
																																																																													Save $a4 group_id.3031
																																																																													Let Tu8089
																																																																														Save $a3 line.3029
																																																																														Let Tu8088
																																																																															Save $a1 x.3030
																																																																															Let $f30
																																																																																CallCls p_set_group_id.2740 d:$a2 $a4 f:
																																																																																Let $a1
																																																																																	Restore x.3030
																																																																																	Let $a2
																																																																																		Slw $a1 2
																																																																																		Let $a3
																																																																																			Restore line.3029
																																																																																			Let $a2
																																																																																				Lwz $a3 $a2
																																																																																				Let $a4
																																																																																					Li 0
																																																																																					Let Tu8092
																																																																																						Save $a3 line.3029
																																																																																						Let Tu8091
																																																																																							Save $a1 x.3030
																																																																																							Let $f30
																																																																																								CallCls pretrace_diffuse_rays.3025 d:$a2 $a4 f:
																																																																																								Let $a1
																																																																																									Restore x.3030
																																																																																									Let $a1
																																																																																										Sub $a1 1
																																																																																										Let $a2
																																																																																											Li 1
																																																																																											Let $a3
																																																																																												Restore group_id.3031
																																																																																												Let Tu8093
																																																																																													Save $a1 Ti653.3572
																																																																																													Let $a3
																																																																																														CallCls add_mod5.2635 d:$a3 $a2 f:
																																																																																														Let $f0
																																																																																															Restore lc0.3032
																																																																																															Let $f1
																																																																																																Restore lc1.3033
																																																																																																Let $f2
																																																																																																	Restore lc2.3034
																																																																																																	Let $a1
																																																																																																		Restore line.3029
																																																																																																		Let $a2
																																																																																																			Restore Ti653.3572
																																																																																																			Ans
																																																																																																				CallCls pretrace_pixels.3028 d:$a1 $a2 $a3 f:$f0 $f1 $f2 
				Ans
					Nop
pretrace_line.3035 (args) : $a1 (fargs) : 
	Let $a4
		SetL min_caml_scan_pitch
		Let $f0
			Lfd $a4 0
			Let $a4
				SetL min_caml_image_center
				Let $a4
					Lwz $a4 4
					Let $a2
						Sub $a2 $a4
						Let Tu8097
							Save $a3 group_id.3038
							Let Tu8096
								Save $a1 line.3036
								Let Tu8095
									Save $f0 Td574.3552
									Let $f0
										CallCls min_caml_float_of_int d:$a2 f:
										Let $f1
											Restore Td574.3552
											Let $f0
												FMul $f1 $f0
												Let $a1
													SetL min_caml_screeny_dir
													Let $f1
														Lfd $a1 0
														Let $f1
															FMul $f0 $f1
															Let $a1
																SetL min_caml_screenz_dir
																Let $f2
																	Lfd $a1 0
																	Let $f1
																		FAdd $f1 $f2
																		Let $a1
																			SetL min_caml_screeny_dir
																			Let $f2
																				Lfd $a1 8
																				Let $f2
																					FMul $f0 $f2
																					Let $a1
																						SetL min_caml_screenz_dir
																						Let $f3
																							Lfd $a1 8
																							Let $f2
																								FAdd $f2 $f3
																								Let $a1
																									SetL min_caml_screeny_dir
																									Let $f3
																										Lfd $a1 16
																										Let $f0
																											FMul $f0 $f3
																											Let $a1
																												SetL min_caml_screenz_dir
																												Let $f3
																													Lfd $a1 16
																													Let $f0
																														FAdd $f0 $f3
																														Let $a1
																															SetL min_caml_image_size
																															Let $a1
																																Lwz $a1 0
																																Let $a2
																																	Sub $a1 1
																																	Let $a1
																																		Restore line.3036
																																		Let $a3
																																			Restore group_id.3038
																																			Ans
																																				CallCls pretrace_pixels.3028 d:$a1 $a2 $a3 f:$f1 $f2 $f0 
scan_pixel.3039 (args) : $a1 (fargs) : 
	Let $a6
		SetL min_caml_image_size
		Let $a6
			Lwz $a6 0
			Ans
				IfLE $a6 $a1
					Ans
						Nop
					Let $a6
						SetL min_caml_rgb
						Let $a7
							Slw $a1 2
							Let $a7
								Lwz $a4 $a7
								Let Tu8104
									Save $a3 prev.3042
									Let Tu8103
										Save $a4 cur.3043
										Let Tu8102
											Save $a5 next.3044
											Let Tu8101
												Save $a2 y.3041
												Let Tu8100
													Save $a1 x.3040
													Let Tu8099
														Save $a6 Ta561.3517
														Let $a2
															CallCls p_rgb.2726 d:$a7 f:
															Let $a1
																Restore Ta561.3517
																Let $f30
																	CallCls veccpy.2648 d:$a1 $a2 f:
																	Let $a1
																		Restore x.3040
																		Let $a2
																			Restore y.3041
																			Let $a3
																				Restore next.3044
																				Let Tu8107
																					Save $a3 next.3044
																					Let Tu8106
																						Save $a2 y.3041
																						Let Tu8105
																							Save $a1 x.3040
																							Let $a1
																								CallCls neighbors_exist.2999 d:$a1 $a2 $a3 f:
																								Let $a2
																									Li 0
																									Let $f30
																										IfEq $a1 $a2
																											Let $a1
																												Restore x.3040
																												Let $a2
																													Slw $a1 2
																													Let $a3
																														Restore cur.3043
																														Let $a2
																															Lwz $a3 $a2
																															Let $a4
																																Li 0
																																Let Tu8109
																																	Save $a3 cur.3043
																																	Let Tu8108
																																		Save $a1 x.3040
																																		Ans
																																			CallCls do_without_neighbors.2996 d:$a2 $a4 f:
																											Let $a6
																												Li 0
																												Let $a1
																													Restore x.3040
																													Let $a2
																														Restore y.3041
																														Let $a3
																															Restore prev.3042
																															Let $a4
																																Restore cur.3043
																																Let $a5
																																	Restore next.3044
																																	Let Tu8114
																																		Save $a5 next.3044
																																		Let Tu8113
																																			Save $a4 cur.3043
																																			Let Tu8112
																																				Save $a3 prev.3042
																																				Let Tu8111
																																					Save $a2 y.3041
																																					Let Tu8110
																																						Save $a1 x.3040
																																						Ans
																																							CallCls try_exploit_neighbors.3012 d:$a1 $a2 $a3 $a4 $a5 $a6 f:
																										Let $f30
																											Nop
																											Let $f30
																												CallCls write_rgb.3023 d:f:
																												Let $a1
																													Restore x.3040
																													Let $a1
																														Add $a1 1
																														Let $a2
																															Restore y.3041
																															Let $a3
																																Restore prev.3042
																																Let $a4
																																	Restore cur.3043
																																	Let $a5
																																		Restore next.3044
																																		Ans
																																			CallCls scan_pixel.3039 d:$a1 $a2 $a3 $a4 $a5 f:
scan_line.3045 (args) : $a1 (fargs) : 
	Let $a6
		SetL min_caml_image_size
		Let $a6
			Lwz $a6 4
			Ans
				IfLE $a6 $a1
					Ans
						Nop
					Let $a6
						SetL min_caml_image_size
						Let $a6
							Lwz $a6 4
							Let $a6
								Sub $a6 1
								Let Tu8125
									Save $a5 group_id.3050
									Let Tu8124
										Save $a4 next.3049
										Let Tu8123
											Save $a3 cur.3048
											Let Tu8122
												Save $a2 prev.3047
												Let Tu8121
													Save $a1 y.3046
													Let $f30
														IfLE $a6 $a1
															Ans
																Nop
															Let $a6
																Add $a1 1
																Let Tu8120
																	Save $a5 group_id.3050
																	Let Tu8119
																		Save $a4 next.3049
																		Let Tu8118
																			Save $a3 cur.3048
																			Let Tu8117
																				Save $a2 prev.3047
																				Let Tu8116
																					Save $a1 y.3046
																					Ans
																						CallCls pretrace_line.3035 d:$a4 $a6 $a5 f:
														Let $a1
															Li 0
															Let $a2
																Restore y.3046
																Let $a3
																	Restore prev.3047
																	Let $a4
																		Restore cur.3048
																		Let $a5
																			Restore next.3049
																			Let Tu8129
																				Save $a3 prev.3047
																				Let Tu8128
																					Save $a5 next.3049
																					Let Tu8127
																						Save $a4 cur.3048
																						Let Tu8126
																							Save $a2 y.3046
																							Let $f30
																								CallCls scan_pixel.3039 d:$a1 $a2 $a3 $a4 $a5 f:
																								Let $a1
																									Restore y.3046
																									Let $a1
																										Add $a1 1
																										Let $a2
																											Li 2
																											Let $a3
																												Restore group_id.3050
																												Let Tu8130
																													Save $a1 Ti555.3491
																													Let $a5
																														CallCls add_mod5.2635 d:$a3 $a2 f:
																														Let $a1
																															Restore Ti555.3491
																															Let $a2
																																Restore cur.3048
																																Let $a3
																																	Restore next.3049
																																	Let $a4
																																		Restore prev.3047
																																		Ans
																																			CallCls scan_line.3045 d:$a1 $a2 $a3 $a4 $a5 f:
create_float5x3array.3051 (args) : (fargs) : 
	Let $a1
		Li 3
		Let $f0
			FLi l.6345
			Let $a2
				CallCls min_caml_create_float_array d:$a1 f:$f0 
				Let $a1
					Li 5
					Let $a1
						CallCls min_caml_create_array d:$a1 $a2 f:
						Let $a2
							Li 3
							Let $f0
								FLi l.6345
								Let Tu8131
									Save $a1 array.3464
									Let $a1
										CallCls min_caml_create_float_array d:$a2 f:$f0 
										Let $a2
											Restore array.3464
											Let $f30
												Stw $a1 $a2 4
												Let $a1
													Li 3
													Let $f0
														FLi l.6345
														Let Tu8132
															Save $a2 array.3464
															Let $a1
																CallCls min_caml_create_float_array d:$a1 f:$f0 
																Let $a2
																	Restore array.3464
																	Let $f30
																		Stw $a1 $a2 8
																		Let $a1
																			Li 3
																			Let $f0
																				FLi l.6345
																				Let Tu8133
																					Save $a2 array.3464
																					Let $a1
																						CallCls min_caml_create_float_array d:$a1 f:$f0 
																						Let $a2
																							Restore array.3464
																							Let $f30
																								Stw $a1 $a2 12
																								Let $a1
																									Li 3
																									Let $f0
																										FLi l.6345
																										Let Tu8134
																											Save $a2 array.3464
																											Let $a1
																												CallCls min_caml_create_float_array d:$a1 f:$f0 
																												Let $a2
																													Restore array.3464
																													Let $f30
																														Stw $a1 $a2 16
																														Ans
																															Mr $a2
create_pixel.3053 (args) : (fargs) : 
	Let $a1
		Li 3
		Let $f0
			FLi l.6345
			Let $a1
				CallCls min_caml_create_float_array d:$a1 f:$f0 
				Let $f30
					Nop
					Let Tu8135
						Save $a1 m_rgb.3443
						Let $a1
							CallCls create_float5x3array.3051 d:f:
							Let $a2
								Li 5
								Let $a3
									Li 0
									Let Tu8136
										Save $a1 m_isect_ps.3444
										Let $a1
											CallCls min_caml_create_array d:$a2 $a3 f:
											Let $a2
												Li 5
												Let $a3
													Li 0
													Let Tu8137
														Save $a1 m_sids.3445
														Let $a1
															CallCls min_caml_create_array d:$a2 $a3 f:
															Let $f30
																Nop
																Let Tu8138
																	Save $a1 m_cdif.3446
																	Let $a1
																		CallCls create_float5x3array.3051 d:f:
																		Let $f30
																			Nop
																			Let Tu8139
																				Save $a1 m_engy.3447
																				Let $a1
																					CallCls create_float5x3array.3051 d:f:
																					Let $a2
																						Li 1
																						Let $a3
																							Li 0
																							Let Tu8140
																								Save $a1 m_r20p.3448
																								Let $a1
																									CallCls min_caml_create_array d:$a2 $a3 f:
																									Let $f30
																										Nop
																										Let Tu8141
																											Save $a1 m_gid.3449
																											Let $a1
																												CallCls create_float5x3array.3051 d:f:
																												Let $a2
																													Mr $a0
																													Let $a0
																														Add $a0 32
																														Let $f30
																															Stw $a1 $a2 28
																															Let $a1
																																Restore m_gid.3449
																																Let $f30
																																	Stw $a1 $a2 24
																																	Let $a1
																																		Restore m_r20p.3448
																																		Let $f30
																																			Stw $a1 $a2 20
																																			Let $a1
																																				Restore m_engy.3447
																																				Let $f30
																																					Stw $a1 $a2 16
																																					Let $a1
																																						Restore m_cdif.3446
																																						Let $f30
																																							Stw $a1 $a2 12
																																							Let $a1
																																								Restore m_sids.3445
																																								Let $f30
																																									Stw $a1 $a2 8
																																									Let $a1
																																										Restore m_isect_ps.3444
																																										Let $f30
																																											Stw $a1 $a2 4
																																											Let $a1
																																												Restore m_rgb.3443
																																												Let $f30
																																													Stw $a1 $a2 0
																																													Ans
																																														Mr $a2
init_line_elements.3055 (args) : $a1 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfLE $a3 $a2
				Let $f30
					Nop
					Let Tu8143
						Save $a1 line.3056
						Let Tu8142
							Save $a2 n.3057
							Let $a1
								CallCls create_pixel.3053 d:f:
								Let $a2
									Restore n.3057
									Let $a3
										Slw $a2 2
										Let $a4
											Restore line.3056
											Let $f30
												Stw $a1 $a4 $a3
												Let $a2
													Sub $a2 1
													Ans
														CallCls init_line_elements.3055 d:$a4 $a2 f:
				Ans
					Mr $a1
create_pixelline.3058 (args) : (fargs) : 
	Let $a1
		SetL min_caml_image_size
		Let $a1
			Lwz $a1 0
			Let $f30
				Nop
				Let Tu8144
					Save $a1 Ti499.3432
					Let $a2
						CallCls create_pixel.3053 d:f:
						Let $a1
							Restore Ti499.3432
							Let $a1
								CallCls min_caml_create_array d:$a1 $a2 f:
								Let $a2
									SetL min_caml_image_size
									Let $a2
										Lwz $a2 0
										Let $a2
											Sub $a2 2
											Ans
												CallCls init_line_elements.3055 d:$a1 $a2 f:
tan.3060 (args) : (fargs) : $f0 
	Let Tu8145
		Save $f0 x.3061
		Let $f0
			CallCls min_caml_sin d:f:$f0 
			Let $f1
				Restore x.3061
				Let Tu8146
					Save $f0 Td494.3423
					Let $f0
						CallCls min_caml_cos d:f:$f1 
						Let $f0
							FReciprocal $f0
							Let $f1
								Restore Td494.3423
								Ans
									FMul $f1 $f0
adjust_position.3062 (args) : (fargs) : $f0 
	Let $f0
		FMul $f0 $f0
		Let $f2
			FLi l.6790
			Let $f0
				FAdd $f0 $f2
				Let Tu8147
					Save $f1 ratio.3064
					Let $f0
						CallCls min_caml_sqrt d:f:$f0 
						Let $f1
							FLi l.6346
							Let $f2
								FReciprocal $f0
								Let $f1
									FMul $f1 $f2
									Let Tu8148
										Save $f0 l.3413
										Let $f0
											CallCls min_caml_atan d:f:$f1 
											Let $f1
												Restore ratio.3064
												Let $f0
													FMul $f0 $f1
													Let $f0
														CallCls tan.3060 d:f:$f0 
														Let $f1
															Restore l.3413
															Ans
																FMul $f0 $f1
calc_dirvec.3065 (args) : $a1 (fargs) : $f0 
	Let $a4
		Li 5
		Ans
			IfLE $a4 $a1
				Let Tu8153
					Save $a3 index.3072
					Let Tu8152
						Save $a2 group_id.3071
						Let Tu8151
							Save $f0 x.3067
							Let Tu8150
								Save $f1 y.3068
								Let $f0
									CallCls min_caml_fsqr d:f:$f0 
									Let $f1
										Restore y.3068
										Let Tu8155
											Save $f1 y.3068
											Let Tu8154
												Save $f0 Td444.3411
												Let $f0
													CallCls min_caml_fsqr d:f:$f1 
													Let $f1
														Restore Td444.3411
														Let $f0
															FAdd $f1 $f0
															Let $f1
																FLi l.6346
																Let $f0
																	FAdd $f0 $f1
																	Let $f0
																		CallCls min_caml_sqrt d:f:$f0 
																		Let $f1
																			FReciprocal $f0
																			Let $f2
																				Restore x.3067
																				Let $f1
																					FMul $f2 $f1
																					Let $f2
																						FReciprocal $f0
																						Let $f3
																							Restore y.3068
																							Let $f2
																								FMul $f3 $f2
																								Let $f3
																									FLi l.6346
																									Let $f0
																										FReciprocal $f0
																										Let $f0
																											FMul $f3 $f0
																											Let $a1
																												SetL min_caml_dirvecs
																												Let $a2
																													Restore group_id.3071
																													Let $a2
																														Slw $a2 2
																														Let $a1
																															Lwz $a1 $a2
																															Let $a2
																																Restore index.3072
																																Let $a3
																																	Slw $a2 2
																																	Let $a3
																																		Lwz $a1 $a3
																																		Let Tu8160
																																			Save $a1 dgroup.3366
																																			Let Tu8159
																																				Save $a2 index.3072
																																				Let Tu8158
																																					Save $f0 vz.3365
																																					Let Tu8157
																																						Save $f2 vy.3364
																																						Let Tu8156
																																							Save $f1 vx.3363
																																							Let $a1
																																								CallCls d_vec.2745 d:$a3 f:
																																								Let $f0
																																									Restore vx.3363
																																									Let $f1
																																										Restore vy.3364
																																										Let $f2
																																											Restore vz.3365
																																											Let Tu8163
																																												Save $f2 vz.3365
																																												Let Tu8162
																																													Save $f0 vx.3363
																																													Let Tu8161
																																														Save $f1 vy.3364
																																														Let $f30
																																															CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																															Let $a1
																																																Restore index.3072
																																																Let $a2
																																																	Add $a1 40
																																																	Let $a2
																																																		Slw $a2 2
																																																		Let $a3
																																																			Restore dgroup.3366
																																																			Let $a2
																																																				Lwz $a3 $a2
																																																				Let Tu8165
																																																					Save $a3 dgroup.3366
																																																					Let Tu8164
																																																						Save $a1 index.3072
																																																						Let $a1
																																																							CallCls d_vec.2745 d:$a2 f:
																																																							Let $f0
																																																								Restore vy.3364
																																																								Let Tu8167
																																																									Save $f0 vy.3364
																																																									Let Tu8166
																																																										Save $a1 Ta459.3396
																																																										Let $f2
																																																											CallCls min_caml_fneg d:f:$f0 
																																																											Let $f0
																																																												Restore vx.3363
																																																												Let $f1
																																																													Restore vz.3365
																																																													Let $a1
																																																														Restore Ta459.3396
																																																														Let Tu8169
																																																															Save $f1 vz.3365
																																																															Let Tu8168
																																																																Save $f0 vx.3363
																																																																Let $f30
																																																																	CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																																																	Let $a1
																																																																		Restore index.3072
																																																																		Let $a2
																																																																			Add $a1 80
																																																																			Let $a2
																																																																				Slw $a2 2
																																																																				Let $a3
																																																																					Restore dgroup.3366
																																																																					Let $a2
																																																																						Lwz $a3 $a2
																																																																						Let Tu8171
																																																																							Save $a3 dgroup.3366
																																																																							Let Tu8170
																																																																								Save $a1 index.3072
																																																																								Let $a1
																																																																									CallCls d_vec.2745 d:$a2 f:
																																																																									Let $f0
																																																																										Restore vx.3363
																																																																										Let Tu8173
																																																																											Save $f0 vx.3363
																																																																											Let Tu8172
																																																																												Save $a1 Ta464.3390
																																																																												Let $f0
																																																																													CallCls min_caml_fneg d:f:$f0 
																																																																													Let $f1
																																																																														Restore vy.3364
																																																																														Let Tu8175
																																																																															Save $f1 vy.3364
																																																																															Let Tu8174
																																																																																Save $f0 Td465.3391
																																																																																Let $f2
																																																																																	CallCls min_caml_fneg d:f:$f1 
																																																																																	Let $f0
																																																																																		Restore vz.3365
																																																																																		Let $f1
																																																																																			Restore Td465.3391
																																																																																			Let $a1
																																																																																				Restore Ta464.3390
																																																																																				Let Tu8176
																																																																																					Save $f0 vz.3365
																																																																																					Let $f30
																																																																																						CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																																																																						Let $a1
																																																																																							Restore index.3072
																																																																																							Let $a2
																																																																																								Add $a1 1
																																																																																								Let $a2
																																																																																									Slw $a2 2
																																																																																									Let $a3
																																																																																										Restore dgroup.3366
																																																																																										Let $a2
																																																																																											Lwz $a3 $a2
																																																																																											Let Tu8178
																																																																																												Save $a3 dgroup.3366
																																																																																												Let Tu8177
																																																																																													Save $a1 index.3072
																																																																																													Let $a1
																																																																																														CallCls d_vec.2745 d:$a2 f:
																																																																																														Let $f0
																																																																																															Restore vx.3363
																																																																																															Let Tu8180
																																																																																																Save $f0 vx.3363
																																																																																																Let Tu8179
																																																																																																	Save $a1 Ta470.3383
																																																																																																	Let $f0
																																																																																																		CallCls min_caml_fneg d:f:$f0 
																																																																																																		Let $f1
																																																																																																			Restore vy.3364
																																																																																																			Let Tu8182
																																																																																																				Save $f1 vy.3364
																																																																																																				Let Tu8181
																																																																																																					Save $f0 Td471.3384
																																																																																																					Let $f0
																																																																																																						CallCls min_caml_fneg d:f:$f1 
																																																																																																						Let $f1
																																																																																																							Restore vz.3365
																																																																																																							Let Tu8184
																																																																																																								Save $f1 vz.3365
																																																																																																								Let Tu8183
																																																																																																									Save $f0 Td472.3385
																																																																																																									Let $f2
																																																																																																										CallCls min_caml_fneg d:f:$f1 
																																																																																																										Let $f0
																																																																																																											Restore Td471.3384
																																																																																																											Let $f1
																																																																																																												Restore Td472.3385
																																																																																																												Let $a1
																																																																																																													Restore Ta470.3383
																																																																																																													Let $f30
																																																																																																														CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																																																																																														Let $a1
																																																																																																															Restore index.3072
																																																																																																															Let $a2
																																																																																																																Add $a1 41
																																																																																																																Let $a2
																																																																																																																	Slw $a2 2
																																																																																																																	Let $a3
																																																																																																																		Restore dgroup.3366
																																																																																																																		Let $a2
																																																																																																																			Lwz $a3 $a2
																																																																																																																			Let Tu8186
																																																																																																																				Save $a3 dgroup.3366
																																																																																																																				Let Tu8185
																																																																																																																					Save $a1 index.3072
																																																																																																																					Let $a1
																																																																																																																						CallCls d_vec.2745 d:$a2 f:
																																																																																																																						Let $f0
																																																																																																																							Restore vx.3363
																																																																																																																							Let Tu8188
																																																																																																																								Save $f0 vx.3363
																																																																																																																								Let Tu8187
																																																																																																																									Save $a1 Ta477.3377
																																																																																																																									Let $f0
																																																																																																																										CallCls min_caml_fneg d:f:$f0 
																																																																																																																										Let $f1
																																																																																																																											Restore vz.3365
																																																																																																																											Let Tu8190
																																																																																																																												Save $f1 vz.3365
																																																																																																																												Let Tu8189
																																																																																																																													Save $f0 Td478.3378
																																																																																																																													Let $f1
																																																																																																																														CallCls min_caml_fneg d:f:$f1 
																																																																																																																														Let $f0
																																																																																																																															Restore Td478.3378
																																																																																																																															Let $f2
																																																																																																																																Restore vy.3364
																																																																																																																																Let $a1
																																																																																																																																	Restore Ta477.3377
																																																																																																																																	Let Tu8191
																																																																																																																																		Save $f2 vy.3364
																																																																																																																																		Let $f30
																																																																																																																																			CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
																																																																																																																																			Let $a1
																																																																																																																																				Restore index.3072
																																																																																																																																				Let $a1
																																																																																																																																					Add $a1 81
																																																																																																																																					Let $a1
																																																																																																																																						Slw $a1 2
																																																																																																																																						Let $a2
																																																																																																																																							Restore dgroup.3366
																																																																																																																																							Let $a1
																																																																																																																																								Lwz $a2 $a1
																																																																																																																																								Let $a1
																																																																																																																																									CallCls d_vec.2745 d:$a1 f:
																																																																																																																																									Let $f0
																																																																																																																																										Restore vz.3365
																																																																																																																																										Let Tu8192
																																																																																																																																											Save $a1 Ta483.3372
																																																																																																																																											Let $f0
																																																																																																																																												CallCls min_caml_fneg d:f:$f0 
																																																																																																																																												Let $f1
																																																																																																																																													Restore vx.3363
																																																																																																																																													Let $f2
																																																																																																																																														Restore vy.3364
																																																																																																																																														Let $a1
																																																																																																																																															Restore Ta483.3372
																																																																																																																																															Ans
																																																																																																																																																CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
				Let Tu8197
					Save $f2 rx.3069
					Let Tu8196
						Save $a3 index.3072
						Let Tu8195
							Save $a2 group_id.3071
							Let Tu8194
								Save $f3 ry.3070
								Let Tu8193
									Save $a1 icount.3066
									Let $f0
										CallCls adjust_position.3062 d:f:$f1 $f2 
										Let $a1
											Restore icount.3066
											Let $a1
												Add $a1 1
												Let $f1
													Restore ry.3070
													Let Tu8200
														Save $f1 ry.3070
														Let Tu8199
															Save $f0 x2.3358
															Let Tu8198
																Save $a1 Ti486.3359
																Let $f1
																	CallCls adjust_position.3062 d:f:$f0 $f1 
																	Let $f0
																		Restore x2.3358
																		Let $f2
																			Restore rx.3069
																			Let $f3
																				Restore ry.3070
																				Let $a1
																					Restore Ti486.3359
																					Let $a2
																						Restore group_id.3071
																						Let $a3
																							Restore index.3072
																							Ans
																								CallCls calc_dirvec.3065 d:$a1 $a2 $a3 f:$f0 $f1 $f2 $f3 
calc_dirvecs.3073 (args) : $a1 (fargs) : $f0 
	Let $a4
		Li 0
		Ans
			IfLE $a4 $a1
				Let Tu8205
					Save $a1 col.3074
					Let Tu8204
						Save $f0 ry.3075
						Let Tu8203
							Save $a3 index.3077
							Let Tu8202
								Save $a2 group_id.3076
								Let $f0
									CallCls min_caml_float_of_int d:$a1 f:
									Let $f1
										FLi l.6902
										Let $f0
											FMul $f0 $f1
											Let $f1
												FLi l.6903
												Let $f2
													FSub $f0 $f1
													Let $a1
														Li 0
														Let $f0
															FLi l.6345
															Let $f1
																FLi l.6345
																Let $f3
																	Restore ry.3075
																	Let $a2
																		Restore group_id.3076
																		Let $a3
																			Restore index.3077
																			Let Tu8208
																				Save $f3 ry.3075
																				Let Tu8207
																					Save $a2 group_id.3076
																					Let Tu8206
																						Save $a3 index.3077
																						Let $f30
																							CallCls calc_dirvec.3065 d:$a1 $a2 $a3 f:$f0 $f1 $f2 $f3 
																							Let $a1
																								Restore col.3074
																								Let Tu8209
																									Save $a1 col.3074
																									Let $f0
																										CallCls min_caml_float_of_int d:$a1 f:
																										Let $f1
																											FLi l.6902
																											Let $f0
																												FMul $f0 $f1
																												Let $f1
																													FLi l.6790
																													Let $f2
																														FAdd $f0 $f1
																														Let $a1
																															Li 0
																															Let $f0
																																FLi l.6345
																																Let $f1
																																	FLi l.6345
																																	Let $a2
																																		Restore index.3077
																																		Let $a3
																																			Add $a2 2
																																			Let $f3
																																				Restore ry.3075
																																				Let $a4
																																					Restore group_id.3076
																																					Let Tu8212
																																						Save $f3 ry.3075
																																						Let Tu8211
																																							Save $a2 index.3077
																																							Let Tu8210
																																								Save $a4 group_id.3076
																																								Let $f30
																																									CallCls calc_dirvec.3065 d:$a1 $a4 $a3 f:$f0 $f1 $f2 $f3 
																																									Let $a1
																																										Restore col.3074
																																										Let $a1
																																											Sub $a1 1
																																											Let $a2
																																												Li 1
																																												Let $a3
																																													Restore group_id.3076
																																													Let Tu8213
																																														Save $a1 Ti440.3337
																																														Let $a2
																																															CallCls add_mod5.2635 d:$a3 $a2 f:
																																															Let $f0
																																																Restore ry.3075
																																																Let $a1
																																																	Restore Ti440.3337
																																																	Let $a3
																																																		Restore index.3077
																																																		Ans
																																																			CallCls calc_dirvecs.3073 d:$a1 $a2 $a3 f:$f0 
				Ans
					Nop
calc_dirvec_rows.3078 (args) : $a1 (fargs) : 
	Let $a4
		Li 0
		Ans
			IfLE $a4 $a1
				Let Tu8217
					Save $a1 row.3079
					Let Tu8216
						Save $a3 index.3081
						Let Tu8215
							Save $a2 group_id.3080
							Let $f0
								CallCls min_caml_float_of_int d:$a1 f:
								Let $f1
									FLi l.6902
									Let $f0
										FMul $f0 $f1
										Let $f1
											FLi l.6903
											Let $f0
												FSub $f0 $f1
												Let $a1
													Li 4
													Let $a2
														Restore group_id.3080
														Let $a3
															Restore index.3081
															Let Tu8219
																Save $a3 index.3081
																Let Tu8218
																	Save $a2 group_id.3080
																	Let $f30
																		CallCls calc_dirvecs.3073 d:$a1 $a2 $a3 f:$f0 
																		Let $a1
																			Restore row.3079
																			Let $a1
																				Sub $a1 1
																				Let $a2
																					Li 2
																					Let $a3
																						Restore group_id.3080
																						Let Tu8220
																							Save $a1 Ti417.3321
																							Let $a2
																								CallCls add_mod5.2635 d:$a3 $a2 f:
																								Let $a1
																									Restore index.3081
																									Let $a3
																										Add $a1 4
																										Let $a1
																											Restore Ti417.3321
																											Ans
																												CallCls calc_dirvec_rows.3078 d:$a1 $a2 $a3 f:
				Ans
					Nop
create_dirvec.3082 (args) : (fargs) : 
	Let $a1
		Li 3
		Let $f0
			FLi l.6345
			Let $a2
				CallCls min_caml_create_float_array d:$a1 f:$f0 
				Let $a1
					SetL min_caml_n_objects
					Let $a1
						Lwz $a1 0
						Let Tu8221
							Save $a2 v3.3311
							Let $a1
								CallCls min_caml_create_array d:$a1 $a2 f:
								Let $a2
									Mr $a0
									Let $a0
										Add $a0 8
										Let $f30
											Stw $a1 $a2 4
											Let $a1
												Restore v3.3311
												Let $f30
													Stw $a1 $a2 0
													Ans
														Mr $a2
create_dirvec_elements.3084 (args) : $a1 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfLE $a3 $a2
				Let $f30
					Nop
					Let Tu8224
						Save $a1 d.3085
						Let Tu8223
							Save $a2 index.3086
							Let $a1
								CallCls create_dirvec.3082 d:f:
								Let $a2
									Restore index.3086
									Let $a3
										Slw $a2 2
										Let $a4
											Restore d.3085
											Let $f30
												Stw $a1 $a4 $a3
												Let $a2
													Sub $a2 1
													Ans
														CallCls create_dirvec_elements.3084 d:$a4 $a2 f:
				Ans
					Nop
create_dirvecs.3087 (args) : $a1 (fargs) : 
	Let $a2
		Li 0
		Ans
			IfLE $a2 $a1
				Let $a2
					SetL min_caml_dirvecs
					Let $a3
						Li 120
						Let $f30
							Nop
							Let Tu8228
								Save $a2 Ta390.3300
								Let Tu8227
									Save $a1 index.3088
									Let Tu8226
										Save $a3 Ti391.3302
										Let $a2
											CallCls create_dirvec.3082 d:f:
											Let $a1
												Restore Ti391.3302
												Let $a1
													CallCls min_caml_create_array d:$a1 $a2 f:
													Let $a2
														Restore index.3088
														Let $a3
															Slw $a2 2
															Let $a4
																Restore Ta390.3300
																Let $f30
																	Stw $a1 $a4 $a3
																	Let $a1
																		SetL min_caml_dirvecs
																		Let $a3
																			Slw $a2 2
																			Let $a1
																				Lwz $a1 $a3
																				Let $a3
																					Li 118
																					Let Tu8229
																						Save $a2 index.3088
																						Let $f30
																							CallCls create_dirvec_elements.3084 d:$a1 $a3 f:
																							Let $a1
																								Restore index.3088
																								Let $a1
																									Sub $a1 1
																									Ans
																										CallCls create_dirvecs.3087 d:$a1 f:
				Ans
					Nop
init_dirvec_constants.3089 (args) : $a1 (fargs) : 
	Let $a3
		Li 0
		Ans
			IfLE $a3 $a2
				Let $a3
					Slw $a2 2
					Let $a3
						Lwz $a1 $a3
						Let Tu8232
							Save $a1 vecset.3090
							Let Tu8231
								Save $a2 index.3091
								Let $f30
									CallCls setup_dirvec_constants.2874 d:$a3 f:
									Let $a1
										Restore index.3091
										Let $a2
											Sub $a1 1
											Let $a1
												Restore vecset.3090
												Ans
													CallCls init_dirvec_constants.3089 d:$a1 $a2 f:
				Ans
					Nop
init_vecset_constants.3092 (args) : $a1 (fargs) : 
	Let $a2
		Li 0
		Ans
			IfLE $a2 $a1
				Let $a2
					SetL min_caml_dirvecs
					Let $a3
						Slw $a1 2
						Let $a2
							Lwz $a2 $a3
							Let $a3
								Li 119
								Let Tu8234
									Save $a1 index.3093
									Let $f30
										CallCls init_dirvec_constants.3089 d:$a2 $a3 f:
										Let $a1
											Restore index.3093
											Let $a1
												Sub $a1 1
												Ans
													CallCls init_vecset_constants.3092 d:$a1 f:
				Ans
					Nop
init_dirvecs.3094 (args) : (fargs) : 
	Let $a1
		Li 4
		Let $f30
			CallCls create_dirvecs.3087 d:$a1 f:
			Let $a1
				Li 9
				Let $a2
					Li 0
					Let $a3
						Li 0
						Let $f30
							CallCls calc_dirvec_rows.3078 d:$a1 $a2 $a3 f:
							Let $a1
								Li 4
								Ans
									CallCls init_vecset_constants.3092 d:$a1 f:
add_reflection.3096 (args) : $a1 (fargs) : $f0 
	Let $f30
		Nop
		Let Tu8242
			Save $a1 index.3097
			Let Tu8241
				Save $a2 surface_id.3098
				Let Tu8240
					Save $f0 bright.3099
					Let Tu8239
						Save $f3 v2.3102
						Let Tu8238
							Save $f2 v1.3101
							Let Tu8237
								Save $f1 v0.3100
								Let $a1
									CallCls create_dirvec.3082 d:f:
									Let Tu8243
										Save $a1 dvec.3266
										Let $a1
											CallCls d_vec.2745 d:$a1 f:
											Let $f0
												Restore v0.3100
												Let $f1
													Restore v1.3101
													Let $f2
														Restore v2.3102
														Let $f30
															CallCls vecset.2638 d:$a1 f:$f0 $f1 $f2 
															Let $a1
																Restore dvec.3266
																Let Tu8244
																	Save $a1 dvec.3266
																	Let $f30
																		CallCls setup_dirvec_constants.2874 d:$a1 f:
																		Let $a1
																			SetL min_caml_reflections
																			Let $a2
																				Mr $a0
																				Let $a0
																					Add $a0 16
																					Let $f0
																						Restore bright.3099
																						Let $f30
																							Stfd $f0 $a2 8
																							Let $a3
																								Restore dvec.3266
																								Let $f30
																									Stw $a3 $a2 4
																									Let $a3
																										Restore surface_id.3098
																										Let $f30
																											Stw $a3 $a2 0
																											Let $a2
																												Mr $a2
																												Let $a3
																													Restore index.3097
																													Let $a3
																														Slw $a3 2
																														Ans
																															Stw $a2 $a1 $a3
setup_rect_reflection.3103 (args) : $a1 (fargs) : 
	Let $a1
		ShiftL2 $a1
		Let $a3
			SetL min_caml_n_reflections
			Let $a3
				Lwz $a3 0
				Let $f0
					FLi l.6346
					Let Tu8248
						Save $a3 nr.3222
						Let Tu8247
							Save $a1 sid.3221
							Let Tu8246
								Save $f0 Td336.3262
								Let $f0
									CallCls o_diffuse.2708 d:$a2 f:
									Let $f1
										Restore Td336.3262
										Let $f0
											FSub $f1 $f0
											Let $a1
												SetL min_caml_light
												Let $f1
													Lfd $a1 0
													Let Tu8249
														Save $f0 br.3223
														Let $f0
															CallCls min_caml_fneg d:f:$f1 
															Let $a1
																SetL min_caml_light
																Let $f1
																	Lfd $a1 8
																	Let Tu8250
																		Save $f0 n0.3224
																		Let $f0
																			CallCls min_caml_fneg d:f:$f1 
																			Let $a1
																				SetL min_caml_light
																				Let $f1
																					Lfd $a1 16
																					Let Tu8251
																						Save $f0 n1.3225
																						Let $f3
																							CallCls min_caml_fneg d:f:$f1 
																							Let $a1
																								Restore sid.3221
																								Let $a2
																									Add $a1 1
																									Let $a3
																										SetL min_caml_light
																										Let $f1
																											Lfd $a3 0
																											Let $f0
																												Restore br.3223
																												Let $f2
																													Restore n1.3225
																													Let $a3
																														Restore nr.3222
																														Let Tu8256
																															Save $f2 n1.3225
																															Let Tu8255
																																Save $f3 n2.3226
																																Let Tu8254
																																	Save $f0 br.3223
																																	Let Tu8253
																																		Save $a1 sid.3221
																																		Let Tu8252
																																			Save $a3 nr.3222
																																			Let $f30
																																				CallCls add_reflection.3096 d:$a3 $a2 f:$f0 $f1 $f2 $f3 
																																				Let $a1
																																					Restore nr.3222
																																					Let $a2
																																						Add $a1 1
																																						Let $a3
																																							Restore sid.3221
																																							Let $a4
																																								Add $a3 2
																																								Let $a5
																																									SetL min_caml_light
																																									Let $f2
																																										Lfd $a5 8
																																										Let $f0
																																											Restore br.3223
																																											Let $f1
																																												Restore n0.3224
																																												Let $f3
																																													Restore n2.3226
																																													Let Tu8260
																																														Save $f1 n0.3224
																																														Let Tu8259
																																															Save $f0 br.3223
																																															Let Tu8258
																																																Save $a3 sid.3221
																																																Let Tu8257
																																																	Save $a1 nr.3222
																																																	Let $f30
																																																		CallCls add_reflection.3096 d:$a2 $a4 f:$f0 $f1 $f2 $f3 
																																																		Let $a1
																																																			Restore nr.3222
																																																			Let $a2
																																																				Add $a1 2
																																																				Let $a3
																																																					Restore sid.3221
																																																					Let $a3
																																																						Add $a3 3
																																																						Let $a4
																																																							SetL min_caml_light
																																																							Let $f3
																																																								Lfd $a4 16
																																																								Let $f0
																																																									Restore br.3223
																																																									Let $f1
																																																										Restore n0.3224
																																																										Let $f2
																																																											Restore n1.3225
																																																											Let Tu8261
																																																												Save $a1 nr.3222
																																																												Let $f30
																																																													CallCls add_reflection.3096 d:$a2 $a3 f:$f0 $f1 $f2 $f3 
																																																													Let $a1
																																																														SetL min_caml_n_reflections
																																																														Let $a2
																																																															Restore nr.3222
																																																															Let $a2
																																																																Add $a2 3
																																																																Ans
																																																																	Stw $a2 $a1 0
setup_surface_reflection.3106 (args) : $a1 (fargs) : 
	Let $a1
		ShiftL2 $a1
		Let $a1
			Add $a1 1
			Let $a3
				SetL min_caml_n_reflections
				Let $a3
					Lwz $a3 0
					Let $f0
						FLi l.6346
						Let Tu8266
							Save $a1 sid.3180
							Let Tu8265
								Save $a3 nr.3181
								Let Tu8264
									Save $a2 obj.3108
									Let Tu8263
										Save $f0 Td302.3215
										Let $f0
											CallCls o_diffuse.2708 d:$a2 f:
											Let $f1
												Restore Td302.3215
												Let $f0
													FSub $f1 $f0
													Let $a1
														SetL min_caml_light
														Let $a2
															Restore obj.3108
															Let Tu8269
																Save $f0 br.3182
																Let Tu8268
																	Save $a2 obj.3108
																	Let Tu8267
																		Save $a1 Ta304.3213
																		Let $a2
																			CallCls o_param_abc.2700 d:$a2 f:
																			Let $a1
																				Restore Ta304.3213
																				Let $f0
																					CallCls veciprod.2659 d:$a1 $a2 f:
																					Let $f1
																						FLi l.6470
																						Let $a1
																							Restore obj.3108
																							Let Tu8272
																								Save $a1 obj.3108
																								Let Tu8271
																									Save $f0 p.3183
																									Let Tu8270
																										Save $f1 Td306.3211
																										Let $f0
																											CallCls o_param_a.2694 d:$a1 f:
																											Let $f1
																												Restore Td306.3211
																												Let $f0
																													FMul $f1 $f0
																													Let $f1
																														Restore p.3183
																														Let $f0
																															FMul $f0 $f1
																															Let $a1
																																SetL min_caml_light
																																Let $f2
																																	Lfd $a1 0
																																	Let $f0
																																		FSub $f0 $f2
																																		Let $f2
																																			FLi l.6470
																																			Let $a1
																																				Restore obj.3108
																																				Let Tu8276
																																					Save $f0 Td313.3189
																																					Let Tu8275
																																						Save $a1 obj.3108
																																						Let Tu8274
																																							Save $f1 p.3183
																																							Let Tu8273
																																								Save $f2 Td314.3204
																																								Let $f0
																																									CallCls o_param_b.2696 d:$a1 f:
																																									Let $f1
																																										Restore Td314.3204
																																										Let $f0
																																											FMul $f1 $f0
																																											Let $f1
																																												Restore p.3183
																																												Let $f0
																																													FMul $f0 $f1
																																													Let $a1
																																														SetL min_caml_light
																																														Let $f2
																																															Lfd $a1 8
																																															Let $f0
																																																FSub $f0 $f2
																																																Let $f2
																																																	FLi l.6470
																																																	Let $a1
																																																		Restore obj.3108
																																																		Let Tu8279
																																																			Save $f0 Td321.3190
																																																			Let Tu8278
																																																				Save $f1 p.3183
																																																				Let Tu8277
																																																					Save $f2 Td322.3197
																																																					Let $f0
																																																						CallCls o_param_c.2698 d:$a1 f:
																																																						Let $f1
																																																							Restore Td322.3197
																																																							Let $f0
																																																								FMul $f1 $f0
																																																								Let $f1
																																																									Restore p.3183
																																																									Let $f0
																																																										FMul $f0 $f1
																																																										Let $a1
																																																											SetL min_caml_light
																																																											Let $f1
																																																												Lfd $a1 16
																																																												Let $f3
																																																													FSub $f0 $f1
																																																													Let $f0
																																																														Restore br.3182
																																																														Let $f1
																																																															Restore Td313.3189
																																																															Let $f2
																																																																Restore Td321.3190
																																																																Let $a1
																																																																	Restore nr.3181
																																																																	Let $a2
																																																																		Restore sid.3180
																																																																		Let Tu8280
																																																																			Save $a1 nr.3181
																																																																			Let $f30
																																																																				CallCls add_reflection.3096 d:$a1 $a2 f:$f0 $f1 $f2 $f3 
																																																																				Let $a1
																																																																					SetL min_caml_n_reflections
																																																																					Let $a2
																																																																						Restore nr.3181
																																																																						Let $a2
																																																																							Add $a2 1
																																																																							Ans
																																																																								Stw $a2 $a1 0
setup_reflections.3109 (args) : $a1 (fargs) : 
	Let $a2
		Li 0
		Ans
			IfLE $a2 $a1
				Let $a2
					SetL min_caml_objects
					Let $a3
						Slw $a1 2
						Let $a2
							Lwz $a2 $a3
							Let Tu8283
								Save $a1 obj_id.3110
								Let Tu8282
									Save $a2 obj.3169
									Let $a1
										CallCls o_reflectiontype.2688 d:$a2 f:
										Let $a2
											Li 2
											Ans
												IfEq $a1 $a2
													Let $a1
														Restore obj.3169
														Let Tu8284
															Save $a1 obj.3169
															Let $f0
																CallCls o_diffuse.2708 d:$a1 f:
																Let $f1
																	FLi l.6346
																	Let $a1
																		CallCls min_caml_fless d:f:$f0 $f1 
																		Let $a2
																			Li 0
																			Ans
																				IfEq $a1 $a2
																					Ans
																						Nop
																					Let $a1
																						Restore obj.3169
																						Let Tu8285
																							Save $a1 obj.3169
																							Let $a1
																								CallCls o_form.2686 d:$a1 f:
																								Let $a2
																									Li 1
																									Ans
																										IfEq $a1 $a2
																											Let $a1
																												Restore obj_id.3110
																												Let $a2
																													Restore obj.3169
																													Ans
																														CallCls setup_rect_reflection.3103 d:$a1 $a2 f:
																											Let $a2
																												Li 2
																												Ans
																													IfEq $a1 $a2
																														Let $a1
																															Restore obj_id.3110
																															Let $a2
																																Restore obj.3169
																																Ans
																																	CallCls setup_surface_reflection.3106 d:$a1 $a2 f:
																														Ans
																															Nop
													Ans
														Nop
				Ans
					Nop
rt.3111 (args) : $a1 (fargs) : 
	Let $a3
		SetL min_caml_image_size
		Let $f30
			Stw $a1 $a3 0
			Let $a3
				SetL min_caml_image_size
				Let $f30
					Stw $a2 $a3 4
					Let $a3
						SetL min_caml_image_center
						Let $a4
							ShiftR1 $a1
							Let $f30
								Stw $a4 $a3 0
								Let $a3
									SetL min_caml_image_center
									Let $a2
										ShiftR1 $a2
										Let $f30
											Stw $a2 $a3 4
											Let $a2
												SetL min_caml_scan_pitch
												Let $f0
													FLi l.6936
													Let Tu8288
														Save $a2 Ta263.3152
														Let Tu8287
															Save $f0 Td265.3155
															Let $f0
																CallCls min_caml_float_of_int d:$a1 f:
																Let $f0
																	FReciprocal $f0
																	Let $f1
																		Restore Td265.3155
																		Let $f0
																			FMul $f1 $f0
																			Let $a1
																				Restore Ta263.3152
																				Let $f30
																					Stfd $f0 $a1 0
																					Let $f30
																						Nop
																						Let $a1
																							CallCls create_pixelline.3058 d:f:
																							Let $f30
																								Nop
																								Let Tu8289
																									Save $a1 prev.3123
																									Let $a1
																										CallCls create_pixelline.3058 d:f:
																										Let $f30
																											Nop
																											Let Tu8290
																												Save $a1 cur.3124
																												Let $a1
																													CallCls create_pixelline.3058 d:f:
																													Let $f30
																														Nop
																														Let Tu8291
																															Save $a1 next.3125
																															Let $f30
																																CallCls read_parameter.2776 d:f:
																																Let $f30
																																	Nop
																																	Let $f30
																																		CallCls write_ppm_header.3019 d:f:
																																		Let $f30
																																			Nop
																																			Let $f30
																																				CallCls init_dirvecs.3094 d:f:
																																				Let $a1
																																					SetL min_caml_light_dirvec
																																					Let $a1
																																						CallCls d_vec.2745 d:$a1 f:
																																						Let $a2
																																							SetL min_caml_light
																																							Let $f30
																																								CallCls veccpy.2648 d:$a1 $a2 f:
																																								Let $a1
																																									SetL min_caml_light_dirvec
																																									Let $f30
																																										CallCls setup_dirvec_constants.2874 d:$a1 f:
																																										Let $a1
																																											SetL min_caml_n_objects
																																											Let $a1
																																												Lwz $a1 0
																																												Let $a1
																																													Sub $a1 1
																																													Let $f30
																																														CallCls setup_reflections.3109 d:$a1 f:
																																														Let $a2
																																															Li 0
																																															Let $a3
																																																Li 0
																																																Let $a1
																																																	Restore cur.3124
																																																	Let Tu8292
																																																		Save $a1 cur.3124
																																																		Let $f30
																																																			CallCls pretrace_line.3035 d:$a1 $a2 $a3 f:
																																																			Let $a1
																																																				Li 0
																																																				Let $a5
																																																					Li 2
																																																					Let $a2
																																																						Restore prev.3123
																																																						Let $a3
																																																							Restore cur.3124
																																																							Let $a4
																																																								Restore next.3125
																																																								Ans
																																																									CallCls scan_line.3045 d:$a1 $a2 $a3 $a4 $a5 f:

main
Let $a1
	Li 512
	Let $a2
		Li 512
		Let $f30
			CallCls rt.3111 d:$a1 $a2 f:
			Let $a1
				Li 0
				Ans
					CallCls min_caml_print_int d:$a1 f:
