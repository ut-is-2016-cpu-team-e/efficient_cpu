data

fundefs
countn.255 (args) : a.256 b.257 c.258 (fargs) : 
	Ans
		IfLE b.257 a.256
			Let Ti241.633
				Sub a.256 b.257
				Let Ti243.634
					Add c.258 1
					Ans
						CallDir countn.255 d:Ti241.633 b.257 Ti243.634 f:
			Ans
				Mr c.258
mymul.259 (args) : a.260 b.261 sum.262 (fargs) : 
	Let Ti237.629
		Li 0
		Ans
			IfEq a.260 Ti237.629
				Ans
					Mr sum.262
				Let Ti239.630
					Sub a.260 1
					Let Ti240.631
						Add sum.262 b.261
						Ans
							CallDir mymul.259 d:Ti239.630 b.261 Ti240.631 f:

main
Let Ta12.315
	SetExt 288
	Let Td14.317
		Readfloat
		Let Tu11.291
			Stfd Td14.317 Ta12.315 0
			Let Td17.314
				Readfloat
				Let Tu10.292
					Stfd Td17.314 Ta12.315 4
					Let Td20.311
						Readfloat
						Let Tu9.293
							Stfd Td20.311 Ta12.315 8
							Let Td23.306
								Lfd Ta12.315 0
								Let Td.e.1136
									FLi 3.000000
									Let xx.294
										FAdd Td.e.1136 Td23.306
										Let Td30.297
											FLi 6.000000
											Ans
												IfFEq xx.294 Td30.297
													Let b.566.703
														Li 3
														Let Ti197.624.704
															Li 10000
															Let Ti198.625.705
																Li 0
																Let x.567.706
																	CallDir countn.255 d:b.566.703 Ti197.624.704 Ti198.625.705 f:
																	Let Ti199.622.707
																		Li 10000
																		Let Ti200.623.708
																			Li 0
																			Let Ti201.621.709
																				CallDir mymul.259 d:x.567.706 Ti199.622.707 Ti200.623.708 f:
																				Let Ti.e.1145
																					Li 3
																					Let b.568.710
																						Sub Ti.e.1145 Ti201.621.709
																						Let Ti202.617.711
																							Li 0
																							Let flag.569.712
																								IfLE x.567.706 Ti202.617.711
																									Ans
																										Li 0
																									Let Ti204.619.761
																										Add x.567.706 48
																										Let Tu2.618.762
																											printchar Ti204.619.761
																											Ans
																												Li 1
																								Let Ti205.615.713
																									Li 1000
																									Let Ti206.616.714
																										Li 0
																										Let x.570.715
																											CallDir countn.255 d:b.568.710 Ti205.615.713 Ti206.616.714 f:
																											Let Ti207.613.716
																												Li 1000
																												Let Ti208.614.717
																													Li 0
																													Let Ti209.612.718
																														CallDir mymul.259 d:x.570.715 Ti207.613.716 Ti208.614.717 f:
																														Let b.571.719
																															Sub b.568.710 Ti209.612.718
																															Let Ti210.605.720
																																Li 0
																																Let flag.572.721
																																	IfLE x.570.715 Ti210.605.720
																																		Let Ti211.609.757
																																			Li 1
																																			Ans
																																				IfEq flag.569.712 Ti211.609.757
																																					Let Tu4.610.759
																																						printchar 48
																																						Ans
																																							Li 1
																																					Ans
																																						Li 0
																																		Let Ti214.607.755
																																			Add x.570.715 48
																																			Let Tu3.606.756
																																				printchar Ti214.607.755
																																				Ans
																																					Li 1
																																	Let Ti215.603.722
																																		Li 100
																																		Let Ti216.604.723
																																			Li 0
																																			Let x.573.724
																																				CallDir countn.255 d:b.571.719 Ti215.603.722 Ti216.604.723 f:
																																				Let Ti217.601.725
																																					Li 100
																																					Let Ti218.602.726
																																						Li 0
																																						Let Ti219.600.727
																																							CallDir mymul.259 d:x.573.724 Ti217.601.725 Ti218.602.726 f:
																																							Let b.574.728
																																								Sub b.571.719 Ti219.600.727
																																								Let Ti220.593.729
																																									Li 0
																																									Let flag.575.730
																																										IfLE x.573.724 Ti220.593.729
																																											Let Ti221.597.751
																																												Li 1
																																												Ans
																																													IfEq flag.572.721 Ti221.597.751
																																														Let Tu6.598.753
																																															printchar 48
																																															Ans
																																																Li 1
																																														Ans
																																															Li 0
																																											Let Ti224.595.749
																																												Add x.573.724 48
																																												Let Tu5.594.750
																																													printchar Ti224.595.749
																																													Ans
																																														Li 1
																																										Let Ti225.591.731
																																											Li 10
																																											Let Ti226.592.732
																																												Li 0
																																												Let x.576.733
																																													CallDir countn.255 d:b.574.728 Ti225.591.731 Ti226.592.732 f:
																																													Let Ti227.589.734
																																														Li 10
																																														Let Ti228.590.735
																																															Li 0
																																															Let Ti229.588.736
																																																CallDir mymul.259 d:x.576.733 Ti227.589.734 Ti228.590.735 f:
																																																Let b.577.737
																																																	Sub b.574.728 Ti229.588.736
																																																	Let Ti230.581.738
																																																		Li 0
																																																		Let flag.578.739
																																																			IfLE x.576.733 Ti230.581.738
																																																				Let Ti231.585.745
																																																					Li 1
																																																					Ans
																																																						IfEq flag.575.730 Ti231.585.745
																																																							Let Tu8.586.747
																																																								printchar 48
																																																								Ans
																																																									Li 1
																																																							Ans
																																																								Li 0
																																																				Let Ti234.583.743
																																																					Add x.576.733 48
																																																					Let Tu7.582.744
																																																						printchar Ti234.583.743
																																																						Ans
																																																							Li 1
																																																			Let Ti236.579.741
																																																				Add b.577.737 48
																																																				Ans
																																																					printchar Ti236.579.741
													Let b.566.640
														Li 2
														Let Ti197.624.641
															Li 10000
															Let Ti198.625.642
																Li 0
																Let x.567.643
																	CallDir countn.255 d:b.566.640 Ti197.624.641 Ti198.625.642 f:
																	Let Ti199.622.644
																		Li 10000
																		Let Ti200.623.645
																			Li 0
																			Let Ti201.621.646
																				CallDir mymul.259 d:x.567.643 Ti199.622.644 Ti200.623.645 f:
																				Let Ti.e.1139
																					Li 2
																					Let b.568.647
																						Sub Ti.e.1139 Ti201.621.646
																						Let Ti202.617.648
																							Li 0
																							Let flag.569.649
																								IfLE x.567.643 Ti202.617.648
																									Ans
																										Li 0
																									Let Ti204.619.698
																										Add x.567.643 48
																										Let Tu2.618.699
																											printchar Ti204.619.698
																											Ans
																												Li 1
																								Let Ti205.615.650
																									Li 1000
																									Let Ti206.616.651
																										Li 0
																										Let x.570.652
																											CallDir countn.255 d:b.568.647 Ti205.615.650 Ti206.616.651 f:
																											Let Ti207.613.653
																												Li 1000
																												Let Ti208.614.654
																													Li 0
																													Let Ti209.612.655
																														CallDir mymul.259 d:x.570.652 Ti207.613.653 Ti208.614.654 f:
																														Let b.571.656
																															Sub b.568.647 Ti209.612.655
																															Let Ti210.605.657
																																Li 0
																																Let flag.572.658
																																	IfLE x.570.652 Ti210.605.657
																																		Let Ti211.609.694
																																			Li 1
																																			Ans
																																				IfEq flag.569.649 Ti211.609.694
																																					Let Tu4.610.696
																																						printchar 48
																																						Ans
																																							Li 1
																																					Ans
																																						Li 0
																																		Let Ti214.607.692
																																			Add x.570.652 48
																																			Let Tu3.606.693
																																				printchar Ti214.607.692
																																				Ans
																																					Li 1
																																	Let Ti215.603.659
																																		Li 100
																																		Let Ti216.604.660
																																			Li 0
																																			Let x.573.661
																																				CallDir countn.255 d:b.571.656 Ti215.603.659 Ti216.604.660 f:
																																				Let Ti217.601.662
																																					Li 100
																																					Let Ti218.602.663
																																						Li 0
																																						Let Ti219.600.664
																																							CallDir mymul.259 d:x.573.661 Ti217.601.662 Ti218.602.663 f:
																																							Let b.574.665
																																								Sub b.571.656 Ti219.600.664
																																								Let Ti220.593.666
																																									Li 0
																																									Let flag.575.667
																																										IfLE x.573.661 Ti220.593.666
																																											Let Ti221.597.688
																																												Li 1
																																												Ans
																																													IfEq flag.572.658 Ti221.597.688
																																														Let Tu6.598.690
																																															printchar 48
																																															Ans
																																																Li 1
																																														Ans
																																															Li 0
																																											Let Ti224.595.686
																																												Add x.573.661 48
																																												Let Tu5.594.687
																																													printchar Ti224.595.686
																																													Ans
																																														Li 1
																																										Let Ti225.591.668
																																											Li 10
																																											Let Ti226.592.669
																																												Li 0
																																												Let x.576.670
																																													CallDir countn.255 d:b.574.665 Ti225.591.668 Ti226.592.669 f:
																																													Let Ti227.589.671
																																														Li 10
																																														Let Ti228.590.672
																																															Li 0
																																															Let Ti229.588.673
																																																CallDir mymul.259 d:x.576.670 Ti227.589.671 Ti228.590.672 f:
																																																Let b.577.674
																																																	Sub b.574.665 Ti229.588.673
																																																	Let Ti230.581.675
																																																		Li 0
																																																		Let flag.578.676
																																																			IfLE x.576.670 Ti230.581.675
																																																				Let Ti231.585.682
																																																					Li 1
																																																					Ans
																																																						IfEq flag.575.667 Ti231.585.682
																																																							Let Tu8.586.684
																																																								printchar 48
																																																								Ans
																																																									Li 1
																																																							Ans
																																																								Li 0
																																																				Let Ti234.583.680
																																																					Add x.576.670 48
																																																					Let Tu7.582.681
																																																						printchar Ti234.583.680
																																																						Ans
																																																							Li 1
																																																			Let Ti236.579.678
																																																				Add b.577.674 48
																																																				Ans
																																																					printchar Ti236.579.678
