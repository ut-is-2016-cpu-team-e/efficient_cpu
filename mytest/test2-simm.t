data
l.126 : 4.000000
l.123 : 3.000000
l.120 : 2.000000
l.117 : 1.000000
l.110 : 0.000000

fundefs
init.97 (args) : i.98 (fargs) : 
	Let n.53
		Lwz $a26 8
		Let mat.96
			Lwz $a26 4
			Let Ti45.102
				Li 0
				Ans
					IfLE Ti45.102 i.98
						Let Td46.107
							FLi l.110
							Let Ta47.106
								CallCls min_caml_create_float_array d:n.53 f:Td46.107 
								Let o.111
									Slw i.98 2
									Let Tu1.103
										Stw Ta47.106 mat.96 o.111
										Let Ti49.104
											Sub i.98 1
											Ans
												CallCls init.97 (init.97) d:Ti49.104 f:
						Ans
							Nop
make.51 (args) : m.52 n.53 (fargs) : 
	Let dummy.50
		Lwz $a26 4
		Let mat.96
			CallCls min_caml_create_array d:m.52 dummy.50 f:
			Let init.97
				Mr $fp
				Let $fp
					Add $fp 16
					Let l.114
						SetL init.97
						Let Tu115
							Stw l.114 init.97 0
							Let Tu113
								Stw n.53 init.97 8
								Let Tu112
									Stw mat.96 init.97 4
									Let Ti44.100
										Sub m.52 1
										Let Tu2.99
											CallCls init.97 (init.97) d:Ti44.100 f:
											Ans
												Mr mat.96

main
Let Ti7.108
	Li 0
	Let Td8.109
		FLi l.110
		Let dummy.50
			CallCls min_caml_create_float_array d:Ti7.108 f:Td8.109 
			Let make.51
				Mr $fp
				Let $fp
					Add $fp 8
					Let l.137
						SetL make.51
						Let Tu138
							Stw l.137 make.51 0
							Let Tu136
								Stw dummy.50 make.51 4
								Let Ti9.94
									Li 2
									Let Ti10.95
										Li 2
										Let a.54
											CallCls make.51 (make.51) d:Ti9.94 Ti10.95 f:
											Let Ta12.90
												Lwz a.54 0
												Let Td14.92
													FLi l.117
													Let Tu6.55
														Stfd Td14.92 Ta12.90 0
														Let Ta16.86
															Lwz a.54 0
															Let Td18.88
																FLi l.120
																Let Tu5.56
																	Stfd Td18.88 Ta16.86 4
																	Let Ta20.82
																		Lwz a.54 4
																		Let Td22.84
																			FLi l.123
																			Let Tu4.57
																				Stfd Td22.84 Ta20.82 0
																				Let Ta24.78
																					Lwz a.54 4
																					Let Td26.80
																						FLi l.126
																						Let Tu3.58
																							Stfd Td26.80 Ta24.78 4
																							Let Ta28.75
																								Lwz a.54 0
																								Let Td30.70
																									Lfd Ta28.75 0
																									Let Ta32.72
																										Lwz a.54 0
																										Let Td34.71
																											Lfd Ta32.72 4
																											Let x1.59
																												FAdd Td30.70 Td34.71
																												Let Ta36.67
																													Lwz a.54 4
																													Let Td38.62
																														Lfd Ta36.67 0
																														Let Ta40.64
																															Lwz a.54 4
																															Let Td42.63
																																Lfd Ta40.64 4
																																Let x2.60
																																	FAdd Td38.62 Td42.63
																																	Let x.61
																																		FAdd x1.59 x2.60
																																		Ans
																																			CallCls min_caml_print_float d:f:x.61 
