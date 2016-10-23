Let x
	Float:3.000000
	LetRec f z 
		FAdd x z
		LetRec g z 
			FMul x z
			Let y
				Let Td2
					Let Td1
						Float:2.000000
						App fTd1 
					Let Td4
						Let Td3
							Float:4.000000
							App gTd3 
						FAdd Td2 Td4
				ExtFunApp print_float y,
