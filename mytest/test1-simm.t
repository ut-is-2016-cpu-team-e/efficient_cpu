data
l.38 : 3.000000
l.37 : 4.560000
l.36 : 1.230000

fundefs
f.17 (args) : (fargs) : x.18 
	Let v2.15
		Lwz $a26 12
		Let v1.14
			Lwz $a26 8
			Let i.16
				Lwz $a26 4
				Let o.33
					Slw i.16 2
					Let Td7.25
						Lfd v1.14 o.33
						Let Td10.26
							Lfd v1.14 4
							Let Td11.23
								FAdd Td7.25 Td10.26
								Let o.35
									Slw i.16 2
									Let Td12.24
										Lfd v2.15 o.35
										Let Td13.22
											FAdd Td11.23 Td12.24
											Ans
												FAdd Td13.22 x.18

main
Let Ti1.31
	Li 3
	Let Td2.32
		FLi l.36
		Let v1.14
			CallCls min_caml_create_float_array d:Ti1.31 f:Td2.32 
			Let Ti3.29
				Li 3
				Let Td4.30
					FLi l.37
					Let v2.15
						CallCls min_caml_create_float_array d:Ti3.29 f:Td4.30 
						Let i.16
							Li 2
							Let f.17
								Mr $fp
								Let $fp
									Add $fp 16
									Let l.42
										SetL f.17
										Let Tu43
											Stw l.42 f.17 0
											Let Tu41
												Stw v2.15 f.17 12
												Let Tu40
													Stw v1.14 f.17 8
													Let Tu39
														Stw i.16 f.17 4
														Let Td5.21
															FLi l.38
															Let Td6.20
																CallCls f.17 (f.17) d:f:Td5.21 
																Let z.19
																	CallCls min_caml_int_of_float d:f:Td6.20 
																	Ans
																		CallCls min_caml_print_int d:z.19 f:
