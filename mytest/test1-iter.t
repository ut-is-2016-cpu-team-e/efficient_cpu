Let x.5
	Float:3.000000
	LetRec f.6 z.7 
		FAdd x.5 z.7
		LetRec g.8 z.9 
			FMul x.5 z.9
			Let Td1.14
				Float:2.000000
				Let Td2.11
					App f.6 Td1.14 
					Let Td3.13
						Float:4.000000
						Let Td4.12
							App g.8 Td3.13 
							Let y.10
								FAdd Td2.11 Td4.12
								ExtFunApp print_float y.10,
