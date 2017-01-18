data

fundefs
fib.10 (args) : $a0 (fargs) : 
	Let $v0
		Li 2
		Ans
			IfLE $v0 $a0
				Let $v0
					Sub $a0 2
					Let Tu23
						Save $a0 n.11
						Let $v0
							CallDir fib.10 d:$v0 f:
							Let $a0
								Restore n.11
								Let $a0
									Sub $a0 1
									Let Tu24
										Save $v0 Ti6.15
										Let $v0
											CallDir fib.10 d:$a0 f:
											Let $a0
												Restore Ti6.15
												Ans
													Add $a0 $v0
				Ans
					Mr $a0

main
Let $a0
	Li 10
	Let $v0
		CallDir fib.10 d:$a0 f:
		Ans
			CallDir min_caml_print_int d:$v0 f:
