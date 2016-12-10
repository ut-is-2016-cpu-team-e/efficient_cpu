data

fundefs
countn.23 (args) : a.24 b.25 c.26 (fargs) : 
	Ans
		IfLE b.25 a.24
			Let Ti20.56
				Sub a.24 b.25
				Let Ti22.57
					Add c.26 1
					Ans
						CallDir countn.23 d:Ti20.56 b.25 Ti22.57 f:
			Ans
				Mr c.26
mymul.27 (args) : a.28 b.29 sum.30 (fargs) : 
	Let Ti16.52
		Li 0
		Ans
			IfEq a.28 Ti16.52
				Ans
					Mr sum.30
				Let Ti18.53
					Sub a.28 1
					Let Ti19.54
						Add sum.30 b.29
						Ans
							CallDir mymul.27 d:Ti18.53 b.29 Ti19.54 f:
print_int.31 (args) : a.32 (fargs) : 
	Let Ti4.49
		Li 0
		Let b.34
			IfLE Ti4.49 a.32
				Ans
					Mr a.32
				Let Tu1.50
					printchar 45
					Ans
						Neg a.32
			Let Ti6.47
				Li 10
				Let x.35
					CallDir countn.23 d:b.34 Ti6.47 Ti4.49 f:
					Let Ti8.45
						Li 10
						Let Ti9.46
							Li 0
							Let Ti10.44
								CallDir mymul.27 d:x.35 Ti8.45 Ti9.46 f:
								Let b.36
									Sub b.34 Ti10.44
									Let Ti11.40
										Li 0
										Let flag.37
											IfLE x.35 Ti11.40
												Ans
													Li 0
												Let Ti13.42
													Add x.35 48
													Let Tu2.41
														printchar Ti13.42
														Ans
															Li 1
											Let Ti15.38
												Add b.36 48
												Ans
													printchar Ti15.38

main
Let Ti3.33
	Li 18
	Ans
		CallDir print_int.31 d:Ti3.33 f:
