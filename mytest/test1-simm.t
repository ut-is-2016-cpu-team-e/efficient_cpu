data
l.17 : 4.000000
l.16 : 2.000000
l.15 : 3.000000

fundefs
f.6 (args) : (fargs) : z.7 
	Let x.5
		Lfd $a26 8
		Ans
			FAdd x.5 z.7
g.8 (args) : (fargs) : z.9 
	Let x.5
		Lfd $a26 8
		Ans
			FMul x.5 z.9

main
Let x.5
	FLi l.15
	Let f.6
		Mr $a0
		Let $a0
			Add $a0 16
			Let l.22
				SetL f.6
				Let Tu23
					Stw l.22 f.6 0
					Let Tu21
						Stfd x.5 f.6 8
						Let g.8
							Mr $a0
							Let $a0
								Add $a0 16
								Let l.19
									SetL g.8
									Let Tu20
										Stw l.19 g.8 0
										Let Tu18
											Stfd x.5 g.8 8
											Let Td1.14
												FLi l.16
												Let Td2.11
													CallCls f.6 (f.6) d:f:Td1.14 
													Let Td3.13
														FLi l.17
														Let Td4.12
															CallCls g.8 (g.8) d:f:Td3.13 
															Let y.10
																FAdd Td2.11 Td4.12
																Ans
																	CallCls min_caml_print_float d:f:y.10 
