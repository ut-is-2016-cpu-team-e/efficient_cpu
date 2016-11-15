(*****************************************************************
 miniMLRuntime.mlにある関数を片っ端から作成したので不必要なものは
 適宜コメントアウトして使用してください
 *****************************************************************)

(*float(1)*)
let rec fequal a b =
	a = b in

let rec fless a b =
	a < b in



(*int*)
let rec equal a b =
	a = b in

let rec notequal a b =
	a <> b in

let rec lessthan a b =
	a < b in

let rec greaterthan a b =
	b > a in

let rec lessequal a b =
	a <= b in

let rec greaterequal a b =
	b <= a in

let rec addint a b =
	a + b in

let rec subint a b =
	a - b in

let rec divint a b =
	let rec divint_sub a b c =
		if(a < b) then
			c
		else
			divint_sub (a - b) b (c + 1) in
	divint_sub a b 0 in


let rec mulint a b =
	if (b > 0) then
		mulint (a + a) (b - 1)
	else
		a in



(*logic*)
let rec xor a b =
	if(a) then
		(not b)
	else
		b in



(*float(2)*)
let rec addfloat a b =
	a +. b in

let rec subfloat a b =
	a -. b in

let rec mulfloat a b =
	a *. b in

let rec divfloat a b =
	a /. b in

(*
(*divfloat 逆数化ver.*)
let rec divfloat a b =

*)

let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in

(*絶対値を求める*)
let rec fabs a =
	if (a >= 0.0) then
		a
	else
		(-. a) in
	
(*aの符号が正なら1,負なら-1を返す*)
let rec fflag a =
	if (a >= 0.0) then 1
	else -1 in

let rec fneg a =
	(-. a) in

let rec sqrt a =
	let rec newton x k =
		if ((fabs (x *. x -. k)) < 0.001) then
			x
		else
			newton ((k /. x +. x) /. 2.0) k in
	newton 1.0 a in

let rec myint_of_float a =
	let abs = fabs a in
	let flag = fflag a in
	let rec ftoi_ret a =
		let rec div2like a =
			let rec div2like_sub a b =
				if (a < 2.0) then
					b
				else
					div2like_sub (a -. 2.0) (b +. 1.0) in
			div2like_sub a 0.0 in
		let rec ftoi_ret_sub a b c =
			let a_sub = div2like a in
			if (a < 1.0) then
				b
			else
				if ((a -. a_sub *. 2.0) < 1.0) then
					ftoi_ret_sub a_sub b (mulint c 2)
				else
					ftoi_ret_sub a_sub (b + c) (mulint c 2) in
			ftoi_ret_sub a 0 1 in
		let rec ftoi_big a b =
			let a_sub = a -. 8388608.0 in
			let b_sub = b + 8388608 in
			if (a_sub < 8388608.0) then
				b_sub + (ftoi_ret a_sub)
			else
				ftoi_big a_sub b_sub in
	if (flag = 1) then
		if (abs > 8388608.0) then
			ftoi_big abs 0
		else
			ftoi_ret abs
	else
		if (abs > 8388608.0) then
			- (ftoi_big abs 0)
		else
			- (ftoi_ret abs) in

let rec myfloat_of_int a =
	let abs = 
		if (a < 0) then
			- a
		else
			a in
	let flag = 
		if (a < 0) then
			-1
		else
			1 in
	let rec itof_ret a =
		let rec itof_ret_sub a b c =
			let a_sub = divint a 2 in
			if (a = 0) then
				b
			else
				if ((mulint (a - a_sub) 2) > 0) then
					itof_ret_sub a_sub (b +. c) (c *. 2.0)
				else
					itof_ret_sub a_sub b (c *. 2.0) in
		itof_ret_sub a 0.0 1.0 in
	let rec itof_big a b =
		let a_sub = a - 8388608 in
		let b_sub = b +. 8388608.0 in
		if (a_sub < 8388608) then
			b_sub +. (itof_ret a_sub)
		else
			itof_big a_sub b_sub in
	if (flag = 1) then
		if (abs > 8388608) then
			itof_big abs 0.0
		else
			itof_ret abs
	else
		if (abs > 8388608) then
			-. (itof_big abs 0.0)
		else
			-. (itof_ret abs) in

let rec floor a =
	myfloat_of_int (myint_of_float a) in



(*三角関数*)
(*円周率定義*)
let pi = 3.1415926535897932384 in
let pidouble = 6.28318530718 in



(*aを2πで割った余りを求める*)
let rec reduction_pi2 a = 
	if (a <= pidouble) then a
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
let rec sin a =
	let rec sin3 a flag =
		if(a <= (pi *. 0.25)) then
			let tmp = sin_kernel a in
			addflag tmp flag
		else
			let tmp = cos_kernel ((pi *. 0.5) -. a) in
			addflag tmp flag in

	let rec sin2 a flag =
		if(a >= (pi *. 0.5)) then
			sin3 (pi -. a) flag
		else
			sin3 a flag in

		let abs = fabs a in
		let flag = fflag a in
		let r_abs = reduction_pi2 abs in

		if (r_abs >= pi) then
			sin2 (r_abs -. pi) (- flag)
		else
			sin2 r_abs flag in

let rec cos a =
	let rec cos3 a flag =
		if(a <= (pi *. 0.25)) then
			let tmp = cos_kernel a in
			addflag tmp flag
		else
			let tmp = sin_kernel ((pi *. 0.5) -. a) in
			addflag tmp flag in

	let rec cos2 a flag =
		if(a >= (pi *. 0.5)) then
			cos3 (pi -. a) (- flag)
		else
			cos3 a flag in
	
	let abs = fabs a in
	let r_abs = reduction_pi2 abs in
	if(r_abs >= pi) then
		cos2 (r_abs -. pi) (-1)
	else
		cos2 r_abs 1 in

let rec atan a =
	let abs = fabs a in
	let flag = fflag a in
	let rec atan_kernel a =
		let a1 = 0.060035485 *. a *. a -. 0.08976446 in
		let a2 = 0.111111104 +. a1 *. a *. a in
		let a3 = a2 *. a *. a -. 0.142857142 in
		let a4 = a3 *. a *. a +. 0.2 in
		let a5 = a4 *. a *. a -. 0.3333333 in
		a*. (1.0 +. a5 *. a *. a) in
		if (abs < 0.4375) then
			addflag (atan_kernel abs) flag
		else if (abs < 1.0) then
			addflag (pi *. 0.25 -. (atan_kernel ((1.0 -. abs) /. (abs +. 1.0)))) flag
		else if (abs < 2.4375) then
			addflag (pi *. 0.25 -. (atan_kernel ((1.0 -. abs) /. (abs +. 1.0)))) flag
		else
			addflag (pi *. 0.5 -. (atan_kernel (1.0 /. abs))) flag in
