Let v1
	Let Ti1
		Int:3
		Let Td2
			Float:1.230000
			ExtFunApp create_float_array Ti1,Td2,
	Let v2
		Let Ti3
			Int:3
			Let Td4
				Float:4.560000
				ExtFunApp create_float_array Ti3,Td4,
		Let i
			Int:2
			LetRec f x 
				Let Td13
					Let Td11
						Let Td7
							Get v1 i
							Let Td10
								Let Ti9
									Let Ti8
										Int:1
										Sub i Ti8
									Get v1 Ti9
								FAdd Td7 Td10
						Let Td12
							Get v2 i
							FAdd Td11 Td12
					FAdd Td13 x
				Let z
					Let Td6
						Let Td5
							Float:3.000000
							App fTd5 
						ExtFunApp int_of_float Td6,
					ExtFunApp print_int z,
