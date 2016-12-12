let rec fneg x = -.x in

let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in

let rec fflag a =
	if (a >= 0.0) then 1
	else -1 in

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
	let x = countn b 10000 0 in
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
	let b = b - (mymul x 100 0) in
	let flag =
		if x > 0 then
			(print_char (48 + x);
			1)
		else if flag = 1 then
			(print_char 48;
			1)
		else 0 in
	let x = countn b 10 0 in
	let b = b - (mymul x 10 0) in
	let flag =
		if x > 0 then
			(print_char (48 + x);
			1)
		else if flag = 1 then
			(print_char 48;
			1)
		else 0 in
	print_char (48 + b)
	in



(* float -> int *)
let rec int_of_float a =
	let rec ftoi_ret a =
		let rec div2like a =
			let rec div2like_sub a b =
				if (a < 2.0) then
					b
				else
					div2like_sub (a -. 2.0) (b +. 1.0) in
			div2like_sub a 0.0 in
		let rec ftoi_ret_sub a b c =
			if (a < 1.0) then
				b
			else
				if ((a -. (div2like a) *. 2.0) < 1.0) then
					ftoi_ret_sub (div2like a) b (c + c)
				else
					ftoi_ret_sub (div2like a) (b + c) (c + c) in
			ftoi_ret_sub a 0 1 in
		let rec ftoi_big a b =
			if ((a -. 8388608.0) < 8388608.0) then
				(b + 8388608) + (ftoi_ret (a -. 8388608.0))
			else
				ftoi_big (a -. 8388608.0) (b + 8388608) in
	if ((fflag a) = 1) then
		if ((fabs a) > 8388608.0) then
			ftoi_big (fabs a) 0
		else
			ftoi_ret (fabs a)
	else
		if ((fabs a) > 8388608.0) then
			- (ftoi_big (fabs a) 0)
		else
			- (ftoi_ret (fabs a)) in

(* int -> float *)
let rec float_of_int a =
	let rec abs a = if (a > 0) then a else (-a) in
	let rec flag a = if (a > 0) then 1 else 0 in
	let rec itof_ret a =
		let rec itof_ret_sub a b c =
			if (a = 0) then
				b
			else
				if ((a - (a / 2 + a / 2)) > 0) then
					itof_ret_sub (a / 2) (b +. c) (c *. 2.0)
				else
					itof_ret_sub (a / 2) b (c *. 2.0) in
		itof_ret_sub a 0.0 1.0 in
	let rec itof_big a b =
		if ((a - 8388608) < 8388608) then
			(b +. 8388608.0) +. (itof_ret (a - 8388608))
		else
			itof_big (a - 8388608) (b +. 8388608.0) in
	if ((flag a) = 1) then
		if ((abs a) > 8388608) then
			itof_big (abs a) 0.0
		else
			itof_ret (abs a)
	else if ((abs a) > 8388608) then
		-. (itof_big (abs a) 0.0)
	else
		-. (itof_ret (abs a)) in

(* floor *)
let rec floor a =
	let rec floor_pos_ker a =
		a -. 1. in
	let rec floor_pos_small a =
		if  (a < ((a +. 8388608.) -. 8388608.)) then
			floor_pos_ker ((a +. 8388608.) -. 8388608.)
		else
			((a +. 8388608.) -. 8388608.) in
	let rec floor_pos a =
		if (a > 8388608.) then
			floor_pos_ker a
		else
			floor_pos_small a in
	let rec floor_neg_ker a =
		a +. 1. in
	let rec floor_neg_small a =
		if (((a +. 8388608.) -. 8388608.) < a) then
			-. (floor_neg_ker ((a +. 8388608.) -. 8388608.))
		else
			-. ((a +. 8388608.) -. 8388608.) in
	let rec floor_neg a =
		if (a > 8388608.) then
			-. (floor_neg_ker a)
		else
			floor_neg_small a in
	if (a > 0.) then
		floor_pos (fabs a)
	else
		floor_neg (fabs a) in

(*sqrt*)
let rec sqrt a =
	let rec count2 a n =
		if (a >= 2.) then
			count2 (a *. 0.5) (n + 1)
		else if (a < 1.) then
			count2 (a *. 2.) (n - 1)
		else
			n in
	let rec pow2 n x =
		if (n > 0) then
			pow2 (n - 1) (x *. 2.0)
		else if (n < 0) then
			pow2 (n + 1) (x *. 0.5)
		else
			x in
	let rec newton x k =
		if ((fabs (k -. x *. x)) < 0.000001 ) then
			x
		else
			newton ((x +. k /. x) *. 0.5) k in
	let n = count2 a 0 in
	let flag = n - (n / 2) - (n / 2) in
	let sqrt_sub = newton 1.0 (a *. (pow2 (- n) 1.0)) in
	if (flag = 1) then
		pow2 (n / 2) 1.0 *. sqrt_sub *. 1.41421356
	else if (flag = (-1)) then
		pow2 (n / 2) 1.0 *. sqrt_sub *. 0.70710678
	else
		pow2 (n / 2) 1.0 *. sqrt_sub in



(*三角関数*)

(*aを2πで割った余りを求める*)
let rec reduction_pi2 a =
	if (a <= 6.28318531) then a
	else reduction_pi2 (a -. 6.28318531) in

(*cに符号を加える*)
let rec addflag c flag =
	if(flag = 1) then
		c
	else
		-. c in

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
		if(a <= 0.7853981634) then
			addflag (sin_kernel a) flag
		else
			addflag (cos_kernel (1.570796326 -. a)) flag in

	let rec sin2 a flag =
		if(a >= 1.570796326) then
			sin3 (3.14159265 -. a) flag
		else
			sin3 a flag in

		if ((reduction_pi2 (fabs a)) >= 3.14159265) then
			sin2 ((reduction_pi2 (fabs a)) -. 3.14159265) (- (fflag a))
		else
			sin2 (reduction_pi2 (fabs a)) (fflag a) in

let rec cos a =
	let rec cos3 a flag =
		if(a <= 0.7853981634) then
			addflag (cos_kernel a) flag
		else
			addflag (sin_kernel (1.570796326 -. a)) flag in

	let rec cos2 a flag =
		if(a >= 1.570796326) then
			cos3 (3.14159265 -. a) (- flag)
		else
			cos3 a flag in

	if((reduction_pi2 (fabs a)) >= 3.14159265) then
		cos2 ((reduction_pi2 (fabs a)) -. 3.14159265) (-1)
	else
		cos2 (reduction_pi2 (fabs a)) 1 in

let rec atan a =
	let rec atan_kernel a =
		let a1 = 0.060035485 *. a *. a -. 0.08976446 in
		let a2 = 0.111111104 +. a1 *. a *. a in
		let a3 = a2 *. a *. a -. 0.142857142 in
		let a4 = a3 *. a *. a +. 0.2 in
		let a5 = a4 *. a *. a -. 0.3333333 in
		a*. (1.0 +. a5 *. a *. a) in
		if ((fabs a) < 0.4375) then
			addflag (atan_kernel (fabs a)) (fflag a)
		else if ((fabs a) < 1.0) then
			addflag (0.7853981634 -. (atan_kernel ((1.0 -. (fabs a)) /. ((fabs a) +. 1.0)))) (fflag a)
		else if ((fabs a) < 2.4375) then
			addflag (0.7853981634 -. (atan_kernel ((1.0 -. (fabs a)) /. ((fabs a) +. 1.0)))) (fflag a)
		else
			addflag (1.570796326 -. (atan_kernel (1.0 /. (fabs a)))) (fflag a) in
