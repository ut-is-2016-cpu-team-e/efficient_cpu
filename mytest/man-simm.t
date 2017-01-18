data

fundefs
fflag.390 (args) : (fargs) : a.391 
	Let Td381.930
		FLi 0.000000
		Ans
			IfFLE Td381.930 a.391
				Ans
					Li 1
				Ans
					Li -1
countn.392 (args) : a.393 b.394 c.395 (fargs) : 
	Ans
		IfLE b.394 a.393
			Let Ti378.927
				Sub a.393 b.394
				Let Ti380.928
					Add c.395 1
					Ans
						CallDir countn.392 d:Ti378.927 b.394 Ti380.928 f:
			Ans
				Mr c.395
print_int.396 (args) : a.397 (fargs) : 
	Let Ti340.924
		Li 0
		Let b.868
			IfLE Ti340.924 a.397
				Ans
					Mr a.397
				Let Ti341.926
					Li 45
					Let Tu1.925
						printchar Ti341.926
						Ans
							Neg a.397
			Let Ti342.922
				Li 10000
				Let x.869
					CallDir countn.392 d:b.868 Ti342.922 Ti340.924 f:
					Let Ti344.921
						Li 10000
						Let Ti345.920
							Mul x.869 Ti344.921
							Let b.870
								Sub b.868 Ti345.920
								Let Ti346.916
									Li 0
									Let flag.871
										IfLE x.869 Ti346.916
											Ans
												Li 0
											Let Ti348.918
												Add x.869 48
												Let Tu2.917
													printchar Ti348.918
													Ans
														Li 1
										Let Ti349.914
											Li 1000
											Let x.872
												CallDir countn.392 d:b.870 Ti349.914 Ti346.916 f:
												Let Ti351.913
													Li 1000
													Let Ti352.912
														Mul x.872 Ti351.913
														Let b.873
															Sub b.870 Ti352.912
															Let Ti353.905
																Li 0
																Let flag.874
																	IfLE x.872 Ti353.905
																		Ans
																			IfEq flag.871 1
																				Let Ti355.911
																					Li 48
																					Let Tu4.910
																						printchar Ti355.911
																						Ans
																							Li 1
																				Ans
																					Li 0
																		Let Ti357.907
																			Add x.872 48
																			Let Tu3.906
																				printchar Ti357.907
																				Ans
																					Li 1
																	Let Ti358.903
																		Li 100
																		Let x.875
																			CallDir countn.392 d:b.873 Ti358.903 Ti353.905 f:
																			Let Ti360.902
																				Li 100
																				Let Ti361.901
																					Mul x.875 Ti360.902
																					Let b.876
																						Sub b.873 Ti361.901
																						Let Ti362.894
																							Li 0
																							Let flag.877
																								IfLE x.875 Ti362.894
																									Ans
																										IfEq flag.874 1
																											Let Ti364.900
																												Li 48
																												Let Tu6.899
																													printchar Ti364.900
																													Ans
																														Li 1
																											Ans
																												Li 0
																									Let Ti366.896
																										Add x.875 48
																										Let Tu5.895
																											printchar Ti366.896
																											Ans
																												Li 1
																								Let Ti367.892
																									Li 10
																									Let x.878
																										CallDir countn.392 d:b.876 Ti367.892 Ti362.894 f:
																										Let Ti369.891
																											Li 10
																											Let Ti370.890
																												Mul x.878 Ti369.891
																												Let b.879
																													Sub b.876 Ti370.890
																													Let Ti371.883
																														Li 0
																														Let flag.880
																															IfLE x.878 Ti371.883
																																Ans
																																	IfEq flag.877 1
																																		Let Ti373.889
																																			Li 48
																																			Let Tu8.888
																																				printchar Ti373.889
																																				Ans
																																					Li 1
																																		Ans
																																			Li 0
																																Let Ti375.885
																																	Add x.878 48
																																	Let Tu7.884
																																		printchar Ti375.885
																																		Ans
																																			Li 1
																															Let Ti377.881
																																Add b.879 48
																																Ans
																																	printchar Ti377.881
div2like_sub.859 (args) : (fargs) : a.860 b.861 
	Let Td335.863
		FLi 2.000000
		Ans
			IfFLE Td335.863 a.860
				Let Td.e.984
					FLi 2.000000
					Let Td337.864
						FSub a.860 Td.e.984
						Let Td.e.985
							FLi 1.000000
							Let Td339.865
								FAdd b.861 Td.e.985
								Ans
									CallDir div2like_sub.859 d:f:Td337.864 Td339.865 
				Ans
					FMr b.861
div2like.842 (args) : (fargs) : a.843 
	Let Td334.862
		FLi 0.000000
		Ans
			CallDir div2like_sub.859 d:f:a.843 Td334.862 
ftoi_ret_sub.844 (args) : b.846 c.847 (fargs) : a.845 
	Let a_sub.850
		CallDir div2like.842 d:f:a.845 
		Let Td326.851
			FLi 1.000000
			Ans
				IfFLE Td326.851 a.845
					Let Td327.852
						FLi 1.000000
						Let Td.e.983
							FLi 2.000000
							Let Td329.857
								FMul a_sub.850 Td.e.983
								Let Td330.853
									FSub a.845 Td329.857
									Ans
										IfFLE Td327.852 Td330.853
											Let Ti331.855
												Add b.846 c.847
												Let Ti332.856
													Add c.847 c.847
													Ans
														CallDir ftoi_ret_sub.844 d:Ti331.855 Ti332.856 f:a_sub.850 
											Let Ti333.854
												Add c.847 c.847
												Ans
													CallDir ftoi_ret_sub.844 d:b.846 Ti333.854 f:a_sub.850 
					Ans
						Mr b.846
ftoi_ret.824 (args) : (fargs) : a.825 
	Let Ti324.848
		Li 0
		Let Ti325.849
			Li 1
			Ans
				CallDir ftoi_ret_sub.844 d:Ti324.848 Ti325.849 f:a.825 
ftoi_big.826 (args) : b.828 (fargs) : a.827 
	Let Td.e.981
		FLi 8388608.000000
		Let a_sub.836
			FSub a.827 Td.e.981
			Let Ti.e.982
				Li 8388608
				Let b_sub.837
					Add b.828 Ti.e.982
					Ans
						IfFLE Td.e.981 a_sub.836
							Ans
								CallDir ftoi_big.826 d:b_sub.837 f:a_sub.836 
							Let Ti323.839
								CallDir ftoi_ret.824 d:f:a_sub.836 
								Ans
									Add b_sub.837 Ti323.839
int_of_float.398 (args) : (fargs) : a.399 
	Let abs.822
		fabs a.399
		Let flag.823
			CallDir fflag.390 d:f:a.399 
			Ans
				IfEq flag.823 1
					Let Td314.834
						FLi 8388608.000000
						Ans
							IfFLE abs.822 Td314.834
								Ans
									CallDir ftoi_ret.824 d:f:abs.822 
								Let Ti315.835
									Li 0
									Ans
										CallDir ftoi_big.826 d:Ti315.835 f:abs.822 
					Let Td316.830
						FLi 8388608.000000
						Ans
							IfFLE abs.822 Td316.830
								Let Ti317.833
									CallDir ftoi_ret.824 d:f:abs.822 
									Ans
										Neg Ti317.833
								Let Ti318.832
									Li 0
									Let Ti319.831
										CallDir ftoi_big.826 d:Ti318.832 f:abs.822 
										Ans
											Neg Ti319.831
itof_ret_sub.803 (args) : a.804 (fargs) : b.805 c.806 
	Let a_sub.809
		ShiftR1 a.804
		Ans
			IfEq a.804 0
				Ans
					FMr b.805
				Let Ti305.818
					Sub a.804 a_sub.809
					Let Ti306.811
						Sub Ti305.818 a_sub.809
						Let Ti307.812
							Li 0
							Ans
								IfLE Ti306.811 Ti307.812
									Let Td.e.980
										FLi 2.000000
										Let Td309.816
											FMul c.806 Td.e.980
											Ans
												CallDir itof_ret_sub.803 d:a_sub.809 f:b.805 Td309.816 
									Let Td310.813
										FAdd b.805 c.806
										Let Td.e.979
											FLi 2.000000
											Let Td312.814
												FMul c.806 Td.e.979
												Ans
													CallDir itof_ret_sub.803 d:a_sub.809 f:Td310.813 Td312.814 
itof_ret.785 (args) : a.786 (fargs) : 
	Let Td302.807
		FLi 0.000000
		Let Td303.808
			FLi 1.000000
			Ans
				CallDir itof_ret_sub.803 d:a.786 f:Td302.807 Td303.808 
itof_big.787 (args) : a.788 (fargs) : b.789 
	Let Ti.e.977
		Li 8388608
		Let a_sub.797
			Sub a.788 Ti.e.977
			Let Td.e.978
				FLi 8388608.000000
				Let b_sub.798
					FAdd b.789 Td.e.978
					Ans
						IfLE Ti.e.977 a_sub.797
							Ans
								CallDir itof_big.787 d:a_sub.797 f:b_sub.798 
							Let Td301.800
								CallDir itof_ret.785 d:a_sub.797 f:
								Ans
									FAdd b_sub.798 Td301.800
float_of_int.400 (args) : a.401 (fargs) : 
	Let Ti288.821
		Li 0
		Let abs.783
			IfLE a.401 Ti288.821
				Ans
					Neg a.401
				Ans
					Mr a.401
			Let flag.784
				IfLE a.401 Ti288.821
					Ans
						Li -1
					Ans
						Li 1
				Ans
					IfEq flag.784 1
						Let Ti292.795
							Li 8388608
							Ans
								IfLE abs.783 Ti292.795
									Ans
										CallDir itof_ret.785 d:abs.783 f:
									Let Td293.796
										FLi 0.000000
										Ans
											CallDir itof_big.787 d:abs.783 f:Td293.796 
						Let Ti294.791
							Li 8388608
							Ans
								IfLE abs.783 Ti294.791
									Let Td295.794
										CallDir itof_ret.785 d:abs.783 f:
										Ans
											FNeg Td295.794
									Let Td296.793
										FLi 0.000000
										Let Td297.792
											CallDir itof_big.787 d:abs.783 f:Td296.793 
											Ans
												FNeg Td297.792
write_header.421 (args) : (fargs) : 
	Let Ti175.627
		Li 80
		Let Tu17.609
			printchar Ti175.627
			Let Ti178.624
				Li 51
				Let Tu16.610
					printchar Ti178.624
					Let Ti179.623
						Li 10
						Let Tu15.611
							printchar Ti179.623
							Let Ti180.622
								Li 100
								Let Tu14.612
									CallDir print_int.396 d:Ti180.622 f:
									Let Ti181.621
										Li 32
										Let Tu13.613
											printchar Ti181.621
											Let Ti182.620
												Li 100
												Let Tu12.614
													CallDir print_int.396 d:Ti182.620 f:
													Let Ti183.619
														Li 32
														Let Tu11.615
															printchar Ti183.619
															Let Ti184.618
																Li 255
																Let Tu10.616
																	CallDir print_int.396 d:Ti184.618 f:
																	Let Ti185.617
																		Li 10
																		Ans
																			printchar Ti185.617
write.479 (args) : (fargs) : fr.480 fg.481 fb.482 
	Let r.577
		CallDir int_of_float.398 d:f:fr.480 
		Let g.578
			CallDir int_of_float.398 d:f:fg.481 
			Let b.579
				CallDir int_of_float.398 d:f:fb.482 
				Let Ti172.587
					Li 32
					Let Tu28.580
						printchar Ti172.587
						Let Tu27.581
							CallDir print_int.396 d:r.577 f:
							Let Ti173.586
								Li 32
								Let Tu26.582
									printchar Ti173.586
									Let Tu25.583
										CallDir print_int.396 d:g.578 f:
										Let Ti174.585
											Li 32
											Let Tu24.584
												printchar Ti174.585
												Ans
													CallDir print_int.396 d:b.579 f:
write_rgb.424 (args) : x.425 (fargs) : 
	Let a.588
		Lwz $a26 1
		Let fx.483
			CallDir float_of_int.400 d:x.425 f:
			Let Ti80.484
				Lwz a.588 0
				Ans
					IfLE x.425 Ti80.484
						Let Td81.573
							FLi 255.000000
							Let Td82.574
								FLi 0.000000
								Ans
									CallDir write.479 d:f:Td81.573 Td82.574 Td82.574 
						Let Ti85.485
							Lwz a.588 1
							Ans
								IfLE x.425 Ti85.485
									Let Td86.557
										FLi 255.000000
										Let Ti89.570
											Lwz a.588 0
											Let Ti90.569
												Sub x.425 Ti89.570
												Let Td91.568
													CallDir float_of_int.400 d:Ti90.569 f:
													Let Td.e.945
														FLi 255.000000
														Let Td92.560
															FMul Td.e.945 Td91.568
															Let Ti94.563
																Lwz a.588 1
																Let Ti96.564
																	Lwz a.588 0
																	Let Ti97.562
																		Sub Ti94.563 Ti96.564
																		Let Td98.561
																			CallDir float_of_int.400 d:Ti97.562 f:
																			Let Td99.558
																				FDiv Td92.560 Td98.561
																				Let Td100.559
																					FLi 0.000000
																					Ans
																						CallDir write.479 d:f:Td86.557 Td99.558 Td100.559 
									Let Ti102.486
										Lwz a.588 2
										Ans
											IfLE x.425 Ti102.486
												Let Ti105.554
													Lwz a.588 2
													Let Ti106.553
														Sub Ti105.554 x.425
														Let Td107.552
															CallDir float_of_int.400 d:Ti106.553 f:
															Let Td.e.944
																FLi 255.000000
																Let Td108.544
																	FMul Td.e.944 Td107.552
																	Let Ti110.547
																		Lwz a.588 2
																		Let Ti112.548
																			Lwz a.588 1
																			Let Ti113.546
																				Sub Ti110.547 Ti112.548
																				Let Td114.545
																					CallDir float_of_int.400 d:Ti113.546 f:
																					Let Td115.541
																						FDiv Td108.544 Td114.545
																						Let Td116.542
																							FLi 255.000000
																							Let Td117.543
																								FLi 0.000000
																								Ans
																									CallDir write.479 d:f:Td115.541 Td116.542 Td117.543 
												Let Ti119.487
													Lwz a.588 3
													Ans
														IfLE x.425 Ti119.487
															Let Td120.525
																FLi 0.000000
																Let Td121.526
																	FLi 255.000000
																	Let Ti124.538
																		Lwz a.588 2
																		Let Ti125.537
																			Sub x.425 Ti124.538
																			Let Td126.536
																				CallDir float_of_int.400 d:Ti125.537 f:
																				Let Td.e.943
																					FLi 255.000000
																					Let Td127.528
																						FMul Td.e.943 Td126.536
																						Let Ti129.531
																							Lwz a.588 3
																							Let Ti131.532
																								Lwz a.588 2
																								Let Ti132.530
																									Sub Ti129.531 Ti131.532
																									Let Td133.529
																										CallDir float_of_int.400 d:Ti132.530 f:
																										Let Td134.527
																											FDiv Td127.528 Td133.529
																											Ans
																												CallDir write.479 d:f:Td120.525 Td121.526 Td134.527 
															Let Ti136.488
																Lwz a.588 4
																Ans
																	IfLE x.425 Ti136.488
																		Let Td137.509
																			FLi 0.000000
																			Let Ti140.522
																				Lwz a.588 4
																				Let Ti141.521
																					Sub Ti140.522 x.425
																					Let Td142.520
																						CallDir float_of_int.400 d:Ti141.521 f:
																						Let Td.e.942
																							FLi 255.000000
																							Let Td143.512
																								FMul Td.e.942 Td142.520
																								Let Ti145.515
																									Lwz a.588 4
																									Let Ti147.516
																										Lwz a.588 3
																										Let Ti148.514
																											Sub Ti145.515 Ti147.516
																											Let Td149.513
																												CallDir float_of_int.400 d:Ti148.514 f:
																												Let Td150.510
																													FDiv Td143.512 Td149.513
																													Let Td151.511
																														FLi 255.000000
																														Ans
																															CallDir write.479 d:f:Td137.509 Td150.510 Td151.511 
																		Let Ti153.489
																			Lwz a.588 5
																			Ans
																				IfLE x.425 Ti153.489
																					Let Ti156.506
																						Lwz a.588 4
																						Let Ti157.505
																							Sub x.425 Ti156.506
																							Let Td158.504
																								CallDir float_of_int.400 d:Ti157.505 f:
																								Let Td.e.941
																									FLi 255.000000
																									Let Td159.496
																										FMul Td.e.941 Td158.504
																										Let Ti161.499
																											Lwz a.588 5
																											Let Ti163.500
																												Lwz a.588 4
																												Let Ti164.498
																													Sub Ti161.499 Ti163.500
																													Let Td165.497
																														CallDir float_of_int.400 d:Ti164.498 f:
																														Let Td166.493
																															FDiv Td159.496 Td165.497
																															Let Td167.494
																																FLi 0.000000
																																Let Td168.495
																																	FLi 255.000000
																																	Ans
																																		CallDir write.479 d:f:Td166.493 Td167.494 Td168.495 
																					Let Td169.490
																						FLi 0.000000
																						Ans
																							CallDir write.479 d:f:Td169.490 Td169.490 Td169.490 
iloop.445 (args) : i.446 (fargs) : zr.447 zi.448 cr.449 ci.450 
	Let write_rgb.424
		Lwz $a26 1
		Let Ti65.457
			Li 256
			Ans
				IfLE Ti65.457 i.446
					Let Ti66.472
						Li 256
						Ans
							CallCls write_rgb.424 (write_rgb.424) d:Ti66.472 f:
					Let Td67.470
						FMul zr.447 zr.447
						Let Td68.471
							FMul zi.448 zi.448
							Let Td69.469
								FSub Td67.470 Td68.471
								Let nr.458
									FAdd Td69.469 cr.449
									Let Td.e.939
										FLi 2.000000
										Let Td71.467
											FMul Td.e.939 zr.447
											Let ni.459
												FMAdd Td71.467 zi.448 ci.450
												Let Td72.466
													FMul zi.448 zi.448
													Let Td73.460
														FMAdd zr.447 zr.447 Td72.466
														Let Td76.461
															FLi 4.000000
															Ans
																IfFLE Td73.460 Td76.461
																	Let Ti78.462
																		Add i.446 1
																		Ans
																			CallCls iloop.445 (iloop.445) d:Ti78.462 f:nr.458 ni.459 cr.449 ci.450 
																	Ans
																		CallCls write_rgb.424 (write_rgb.424) d:i.446 f:
xloop.433 (args) : x.434 y.435 (fargs) : 
	Let write_rgb.424
		Lwz $a26 1
		Let Ti53.440
			Li 100
			Ans
				IfLE Ti53.440 x.434
					Ans
						Nop
					Let fx.441
						CallDir float_of_int.400 d:x.434 f:
						Let fy.442
							CallDir float_of_int.400 d:y.435 f:
							Let Td.e.934
								FLi 50.000000
								Let Td55.476
									FDiv fx.441 Td.e.934
									Let Td.e.935
										FLi 1.500000
										Let cr.443
											FSub Td55.476 Td.e.935
											Let Td58.473
												FDiv fy.442 Td.e.934
												Let Td.e.937
													FLi 1.000000
													Let ci.444
														FSub Td58.473 Td.e.937
														Let iloop.445
															Mr $fp
															Let $fp
																Add $fp 2
																Let l.1015
																	SetL iloop.445
																	Let Tu1016
																		Stw l.1015 iloop.445 0
																		Let Tu1014
																			Stw write_rgb.424 iloop.445 1
																			Let Ti60.454
																				Li 0
																				Let Td61.455
																					FLi 0.000000
																					Let Tu29.451
																						CallCls iloop.445 (iloop.445) d:Ti60.454 f:Td61.455 Td61.455 cr.443 ci.444 
																						Let Ti64.452
																							Add x.434 1
																							Ans
																								CallCls xloop.433 (xloop.433) d:Ti64.452 y.435 f:
yloop.426 (args) : y.427 (fargs) : 
	Let write_rgb.424
		Lwz $a26 1
		Let Ti49.432
			Li 100
			Ans
				IfLE Ti49.432 y.427
					Ans
						Nop
					Let xloop.433
						Mr $fp
						Let $fp
							Add $fp 2
							Let l.1018
								SetL xloop.433
								Let Tu1019
									Stw l.1018 xloop.433 0
									Let Tu1017
										Stw write_rgb.424 xloop.433 1
										Let Ti50.439
											Li 0
											Let Tu30.436
												CallCls xloop.433 (xloop.433) d:Ti50.439 y.427 f:
												Let Ti52.437
													Add y.427 1
													Ans
														CallCls yloop.426 (yloop.426) d:Ti52.437 f:

main
Let Ti33.607
	Li 6
	Let Ti34.608
		Li 0
		Let a.588
			CallDir min_caml_create_array d:Ti33.607 Ti34.608 f:
			Let Ti36.606
				Li 3
				Let Tu23.589
					Stw Ti36.606 a.588 0
					Let Ti38.604
						Li 8
						Let Tu22.590
							Stw Ti38.604 a.588 1
							Let Ti40.602
								Li 12
								Let Tu21.591
									Stw Ti40.602 a.588 2
									Let Ti42.600
										Li 16
										Let Tu20.592
											Stw Ti42.600 a.588 3
											Let Ti44.598
												Li 25
												Let Tu19.593
													Stw Ti44.598 a.588 4
													Let Ti46.596
														Li 100
														Let Tu18.594
															Stw Ti46.596 a.588 5
															Let write_rgb.424
																Mr $fp
																Let $fp
																	Add $fp 2
																	Let l.1030
																		SetL write_rgb.424
																		Let Tu1031
																			Stw l.1030 write_rgb.424 0
																			Let Tu1029
																				Stw a.588 write_rgb.424 1
																				Let yloop.426
																					Mr $fp
																					Let $fp
																						Add $fp 2
																						Let l.1027
																							SetL yloop.426
																							Let Tu1028
																								Stw l.1027 yloop.426 0
																								Let Tu1026
																									Stw write_rgb.424 yloop.426 1
																									Let Tu47.431
																										Nop
																										Let Tu32.428
																											CallDir write_header.421 d:f:
																											Let Ti48.430
																												Li 0
																												Let Tu31.429
																													CallCls yloop.426 (yloop.426) d:Ti48.430 f:
																													Ans
																														Nop
