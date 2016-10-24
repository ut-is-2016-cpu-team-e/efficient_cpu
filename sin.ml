let _ =
(*円周率定義*)
let pi = 3.1415926535897932384 in

(*aの符号が正なら1,負なら-1を返す*)
let rec a_flag a =
	if (a >= 0.0) then 1
	else -1 in

(*aの絶対値を求める*)
let rec a_abs a =
	if (a >= 0.0) then
		a
	else -. a in

(*aを2πで割った余りを求める*)
let rec reduction_pi2 a = 
	let pidouble = pi *. 2.0 in
	if (a < pidouble) then a
	else reduction_pi2 (a -. pidouble) in

(*cに符号を加える*)
let rec addflag c flag =
	if(flag = 1) then
		c
	else
		c *. -1.0 in

(*sin(a) (0 <= a <= (pi / 4)) を求める*)
let rec sin_kernel a =
	let a3 = a *. a *. a in
	let a5 = a3 *. a *. a in
	let a7 = a5 *. a *. a in
	a -. (0.16666668 *. a3) +. (0.008332824 *. a5) -. (0.00019587841 *. a7) in
let rec cos_kernel a =
	let a2 = a *. a in
	let a4 = a2 *. a *. a in
	let a6 = a4 *. a *. a in
	1.0 -. (0.5 *. a2) +. (0.04166368 *. a4) -. (0.0013695068 *. a6) in

(*sin(a) を求める*)
let rec mysin a =
	let rec sin3 a flag =
		if(a <= (pi /. 4.0)) then
			let tmp = sin_kernel a in
			addflag tmp flag
		else
			let tmp = cos_kernel ((pi /. 2.0) -. a) in
			addflag tmp flag in

	let rec sin2 a flag =
		if(a >= (pi /. 2.0)) then
			sin3 (pi -. a) flag
		else
			sin3 a flag in

		let abs = a_abs a in
		let flag = a_flag a in
		let r_abs = reduction_pi2 abs in

		if (r_abs >= pi) then
			sin2 (pi -. r_abs) flag
		else
			sin2 r_abs flag in

(*cos(a)を求める*)
let rec mycos a =
	let rec cos3 a flag =
		if(a <= (pi /. 4.0)) then
			let tmp = cos_kernel a in
			addflag tmp flag
		else
			let tmp = sin_kernel ((pi /. 2.0) -. a) in
			addflag tmp flag in

	let rec cos2 a flag =
		if(a >= (pi /. 2.0)) then
			cos3 (pi -. a) (- flag)
		else
			cos3 a flag in
	
	let abs = a_abs a in
	let r_abs = reduction_pi2 abs in
	if(r_abs >= pi) then
		cos2 (pi -. r_abs) (-1)
	else
		cos2 r_abs 1 in
