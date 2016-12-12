LetRec countn.255 a.256 b.257 c.258 
	IfLE b.257 a.256
		Let Ti241.633
			Sub a.256 b.257
			Let Ti.e.1285
				Int:1
				Let Ti243.634
					Add c.258 Ti.e.1285
					App countn.255 Ti241.633 b.257 Ti243.634 
		Var c.258
	LetRec mymul.259 a.260 b.261 sum.262 
		Let Ti237.629
			Int:0
			IfEq a.260 Ti237.629
				Var sum.262
				Let Ti.e.1284
					Int:1
					Let Ti239.630
						Sub a.260 Ti.e.1284
						Let Ti240.631
							Add sum.262 b.261
							App mymul.259 Ti239.630 b.261 Ti240.631 
		Let Ta12.315
			ExtArray 288
			Let Ti13.316
				Int:0
				Let Td14.317
					Readfloat
					Let Tu11.291
						Put Ta12.315 Ti13.316 Td14.317
						Let Ti16.313
							Int:1
							Let Td17.314
								Readfloat
								Let Tu10.292
									Put Ta12.315 Ti16.313 Td17.314
									Let Ti19.310
										Int:2
										Let Td20.311
											Readfloat
											Let Tu9.293
												Put Ta12.315 Ti19.310 Td20.311
												Let Td23.306
													Get Ta12.315 Ti13.316
													Let Td.e.1136
														Float:3.000000
														Let xx.294
															FAdd Td.e.1136 Td23.306
															Let Td30.297
																Float:6.000000
																IfEq xx.294 Td30.297
																	Let b.566.703
																		Int:3
																		Let Ti197.624.704
																			Int:10000
																			Let Ti198.625.705
																				Int:0
																				Let x.567.706
																					App countn.255 b.566.703 Ti197.624.704 Ti198.625.705 
																					Let Ti199.622.707
																						Int:10000
																						Let Ti200.623.708
																							Int:0
																							Let Ti201.621.709
																								App mymul.259 x.567.706 Ti199.622.707 Ti200.623.708 
																								Let Ti.e.1145
																									Int:3
																									Let b.568.710
																										Sub Ti.e.1145 Ti201.621.709
																										Let Ti202.617.711
																											Int:0
																											Let flag.569.712
																												IfLE x.567.706 Ti202.617.711
																													Int:0
																													Let Ti.e.1146
																														Int:48
																														Let Ti204.619.761
																															Add Ti.e.1146 x.567.706
																															Let Tu2.618.762
																																printchar Ti204.619.761
																																Int:1
																												Let Ti205.615.713
																													Int:1000
																													Let Ti206.616.714
																														Int:0
																														Let x.570.715
																															App countn.255 b.568.710 Ti205.615.713 Ti206.616.714 
																															Let Ti207.613.716
																																Int:1000
																																Let Ti208.614.717
																																	Int:0
																																	Let Ti209.612.718
																																		App mymul.259 x.570.715 Ti207.613.716 Ti208.614.717 
																																		Let b.571.719
																																			Sub b.568.710 Ti209.612.718
																																			Let Ti210.605.720
																																				Int:0
																																				Let flag.572.721
																																					IfLE x.570.715 Ti210.605.720
																																						Let Ti211.609.757
																																							Int:1
																																							IfEq flag.569.712 Ti211.609.757
																																								Let Ti212.611.758
																																									Int:48
																																									Let Tu4.610.759
																																										printchar Ti212.611.758
																																										Int:1
																																								Int:0
																																						Let Ti.e.1147
																																							Int:48
																																							Let Ti214.607.755
																																								Add Ti.e.1147 x.570.715
																																								Let Tu3.606.756
																																									printchar Ti214.607.755
																																									Int:1
																																					Let Ti215.603.722
																																						Int:100
																																						Let Ti216.604.723
																																							Int:0
																																							Let x.573.724
																																								App countn.255 b.571.719 Ti215.603.722 Ti216.604.723 
																																								Let Ti217.601.725
																																									Int:100
																																									Let Ti218.602.726
																																										Int:0
																																										Let Ti219.600.727
																																											App mymul.259 x.573.724 Ti217.601.725 Ti218.602.726 
																																											Let b.574.728
																																												Sub b.571.719 Ti219.600.727
																																												Let Ti220.593.729
																																													Int:0
																																													Let flag.575.730
																																														IfLE x.573.724 Ti220.593.729
																																															Let Ti221.597.751
																																																Int:1
																																																IfEq flag.572.721 Ti221.597.751
																																																	Let Ti222.599.752
																																																		Int:48
																																																		Let Tu6.598.753
																																																			printchar Ti222.599.752
																																																			Int:1
																																																	Int:0
																																															Let Ti.e.1148
																																																Int:48
																																																Let Ti224.595.749
																																																	Add Ti.e.1148 x.573.724
																																																	Let Tu5.594.750
																																																		printchar Ti224.595.749
																																																		Int:1
																																														Let Ti225.591.731
																																															Int:10
																																															Let Ti226.592.732
																																																Int:0
																																																Let x.576.733
																																																	App countn.255 b.574.728 Ti225.591.731 Ti226.592.732 
																																																	Let Ti227.589.734
																																																		Int:10
																																																		Let Ti228.590.735
																																																			Int:0
																																																			Let Ti229.588.736
																																																				App mymul.259 x.576.733 Ti227.589.734 Ti228.590.735 
																																																				Let b.577.737
																																																					Sub b.574.728 Ti229.588.736
																																																					Let Ti230.581.738
																																																						Int:0
																																																						Let flag.578.739
																																																							IfLE x.576.733 Ti230.581.738
																																																								Let Ti231.585.745
																																																									Int:1
																																																									IfEq flag.575.730 Ti231.585.745
																																																										Let Ti232.587.746
																																																											Int:48
																																																											Let Tu8.586.747
																																																												printchar Ti232.587.746
																																																												Int:1
																																																										Int:0
																																																								Let Ti.e.1149
																																																									Int:48
																																																									Let Ti234.583.743
																																																										Add Ti.e.1149 x.576.733
																																																										Let Tu7.582.744
																																																											printchar Ti234.583.743
																																																											Int:1
																																																							Let Ti.e.1150
																																																								Int:48
																																																								Let Ti236.579.741
																																																									Add Ti.e.1150 b.577.737
																																																									printchar Ti236.579.741
																	Let b.566.640
																		Int:2
																		Let Ti197.624.641
																			Int:10000
																			Let Ti198.625.642
																				Int:0
																				Let x.567.643
																					App countn.255 b.566.640 Ti197.624.641 Ti198.625.642 
																					Let Ti199.622.644
																						Int:10000
																						Let Ti200.623.645
																							Int:0
																							Let Ti201.621.646
																								App mymul.259 x.567.643 Ti199.622.644 Ti200.623.645 
																								Let Ti.e.1139
																									Int:2
																									Let b.568.647
																										Sub Ti.e.1139 Ti201.621.646
																										Let Ti202.617.648
																											Int:0
																											Let flag.569.649
																												IfLE x.567.643 Ti202.617.648
																													Int:0
																													Let Ti.e.1140
																														Int:48
																														Let Ti204.619.698
																															Add Ti.e.1140 x.567.643
																															Let Tu2.618.699
																																printchar Ti204.619.698
																																Int:1
																												Let Ti205.615.650
																													Int:1000
																													Let Ti206.616.651
																														Int:0
																														Let x.570.652
																															App countn.255 b.568.647 Ti205.615.650 Ti206.616.651 
																															Let Ti207.613.653
																																Int:1000
																																Let Ti208.614.654
																																	Int:0
																																	Let Ti209.612.655
																																		App mymul.259 x.570.652 Ti207.613.653 Ti208.614.654 
																																		Let b.571.656
																																			Sub b.568.647 Ti209.612.655
																																			Let Ti210.605.657
																																				Int:0
																																				Let flag.572.658
																																					IfLE x.570.652 Ti210.605.657
																																						Let Ti211.609.694
																																							Int:1
																																							IfEq flag.569.649 Ti211.609.694
																																								Let Ti212.611.695
																																									Int:48
																																									Let Tu4.610.696
																																										printchar Ti212.611.695
																																										Int:1
																																								Int:0
																																						Let Ti.e.1141
																																							Int:48
																																							Let Ti214.607.692
																																								Add Ti.e.1141 x.570.652
																																								Let Tu3.606.693
																																									printchar Ti214.607.692
																																									Int:1
																																					Let Ti215.603.659
																																						Int:100
																																						Let Ti216.604.660
																																							Int:0
																																							Let x.573.661
																																								App countn.255 b.571.656 Ti215.603.659 Ti216.604.660 
																																								Let Ti217.601.662
																																									Int:100
																																									Let Ti218.602.663
																																										Int:0
																																										Let Ti219.600.664
																																											App mymul.259 x.573.661 Ti217.601.662 Ti218.602.663 
																																											Let b.574.665
																																												Sub b.571.656 Ti219.600.664
																																												Let Ti220.593.666
																																													Int:0
																																													Let flag.575.667
																																														IfLE x.573.661 Ti220.593.666
																																															Let Ti221.597.688
																																																Int:1
																																																IfEq flag.572.658 Ti221.597.688
																																																	Let Ti222.599.689
																																																		Int:48
																																																		Let Tu6.598.690
																																																			printchar Ti222.599.689
																																																			Int:1
																																																	Int:0
																																															Let Ti.e.1142
																																																Int:48
																																																Let Ti224.595.686
																																																	Add Ti.e.1142 x.573.661
																																																	Let Tu5.594.687
																																																		printchar Ti224.595.686
																																																		Int:1
																																														Let Ti225.591.668
																																															Int:10
																																															Let Ti226.592.669
																																																Int:0
																																																Let x.576.670
																																																	App countn.255 b.574.665 Ti225.591.668 Ti226.592.669 
																																																	Let Ti227.589.671
																																																		Int:10
																																																		Let Ti228.590.672
																																																			Int:0
																																																			Let Ti229.588.673
																																																				App mymul.259 x.576.670 Ti227.589.671 Ti228.590.672 
																																																				Let b.577.674
																																																					Sub b.574.665 Ti229.588.673
																																																					Let Ti230.581.675
																																																						Int:0
																																																						Let flag.578.676
																																																							IfLE x.576.670 Ti230.581.675
																																																								Let Ti231.585.682
																																																									Int:1
																																																									IfEq flag.575.667 Ti231.585.682
																																																										Let Ti232.587.683
																																																											Int:48
																																																											Let Tu8.586.684
																																																												printchar Ti232.587.683
																																																												Int:1
																																																										Int:0
																																																								Let Ti.e.1143
																																																									Int:48
																																																									Let Ti234.583.680
																																																										Add Ti.e.1143 x.576.670
																																																										Let Tu7.582.681
																																																											printchar Ti234.583.680
																																																											Int:1
																																																							Let Ti.e.1144
																																																								Int:48
																																																								Let Ti236.579.678
																																																									Add Ti.e.1144 b.577.674
																																																									printchar Ti236.579.678
