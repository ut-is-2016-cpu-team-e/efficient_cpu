let rec countn a b c =
	if (a < b) then
		c
	else
		countn (a-b) b (c+1) in

let rec mymul a b sum =
	if a = 0 then sum
	else mymul (a-1) b (sum+b) in

let rec print_int a =
	let b =
		if a < 0 then
			(print_char 45;
			-a)
		else a in
	(*let x = countn b 10000 0 in
	let b = b - (mymul x 10000 0) in
	let flag =
		if x > 0 then
			(print_char (48 + x);
				1)
		else 0 in
	let x = countn b 1000 0 in
	let b = b - (mymul x 1000 0) in
	let flag =
		if x > 0 then
			(print_char (48 + x);
			1)
		else if flag = 1 then
			(print_char 48;
			1)
		else 0 in
	let x = countn b 100 0 in
	let b = b - x*100 in
	let flag =
		if x > 0 then
			(print_char (48 + x);
			1)
		else if flag = 1 then
			(print_char 48;
			1)
		else 0 in*)
	let x = countn b 10 0 in
	let b = b - (mymul x 10 0) in
	let flag =
		if x > 0 then
			(print_char (48 + x);
			1)
		(*else if flag = 1 then
			(print_char 48;
			1)*)
		else 0 in
	print_char (48 + b)
	in

print_int(18)
