fundefs
f.14 (args) : y.15 (fargs) : 
	Let x.13
		Lwz $a26 4
		Let Ti9.28
			Li 0
			Ans
				IfEq y.15 Ti9.28
					Ans
						Li 0
					Let Ti11.30
						Sub y.15 1
						Let Ti12.29
							CallCls f.14 (f.14) d:Ti11.30 f:
							Ans
								Add x.13 Ti12.29
g.17 (args) : y.18 (fargs) : 
	Let z.16
		Lwz $a26 4
		Let Ti5.24
			Li 0
			Ans
				IfEq y.18 Ti5.24
					Ans
						Li 0
					Let Ti7.26
						Sub y.18 1
						Let Ti8.25
							CallCls g.17 (g.17) d:Ti7.26 f:
							Ans
								Sub z.16 Ti8.25
main
Let x.13
	Li 10
	Let f.14
		Mr $a0
		Let $a0
			Add $a0 8
			Let l.36
				SetL f.14
				Let Tu37
					Stw l.36 f.14 0
					Let Tu35
						Stw x.13 f.14 4
						Let z.16
							Li 20
							Let g.17
								Mr $a0
								Let $a0
									Add $a0 8
									Let l.33
										SetL g.17
										Let Tu34
											Stw l.33 g.17 0
											Let Tu32
												Stw z.16 g.17 4
												Let Ti1.23
													Li 3
													Let Ti2.20
														CallCls f.14 (f.14) d:Ti1.23 f:
														Let Ti3.22
															Li 1
															Let Ti4.21
																CallCls g.17 (g.17) d:Ti3.22 f:
																Let z.19
																	Add Ti2.20 Ti4.21
																	Ans
																		CallCls min_caml_print_int d:z.19 f:
