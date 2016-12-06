(**************** グローバル変数の宣言 ****************)

(* オブジェクトの個数 *)
let n_objects = create_array 1 0 in

(* オブジェクトのデータを入れるベクトル（最大60個）*)
let objects =
  let dummy = create_array 0 0.0 in
  create_array 60 (0, 0, 0, 0, dummy, dummy, false, dummy, dummy, dummy, dummy) in

(* Screen の中心座標 *)
let screen = create_array 3 0.0 in
(* 視点の座標 *)
let viewpoint = create_array 3 0.0 in
(* 光源方向ベクトル (単位ベクトル) *)
let light = create_array 3 0.0 in
(* 鏡面ハイライト強度 (標準=255) *)
let beam = create_array 1 255.0 in
(* AND ネットワークを保持 *)
let and_net = create_array 50 (create_array 1 (-1)) in
(* OR ネットワークを保持 *)
let or_net = create_array 1 (create_array 1 (and_net.(0))) in

(* 以下、交差判定ルーチンの返り値格納用 *)
(* solver の交点 の t の値 *)
let solver_dist = create_array 1 0.0 in
(* 交点の直方体表面での方向 *)
let intsec_rectside = create_array 1 0 in
(* 発見した交点の最小の t *)
let tmin = create_array 1 (1000000000.0) in
(* 交点の座標 *)
let intersection_point = create_array 3 0.0 in
(* 衝突したオブジェクト番号 *)
let intersected_object_id = create_array 1 0 in
(* 法線ベクトル *)
let nvector = create_array 3 0.0 in
(* 交点の色 *)
let texture_color = create_array 3 0.0 in

(* 計算中の間接受光強度を保持 *)
let diffuse_ray = create_array 3 0.0 in
(* スクリーン上の点の明るさ *)
let rgb = create_array 3 0.0 in

(* 画像サイズ *)
let image_size = create_array 2 0 in
(* 画像の中心 = 画像サイズの半分 *)
let image_center = create_array 2 0 in
(* 3次元上のピクセル間隔 *)
let scan_pitch = create_array 1 0.0 in

(* judge_intersectionに与える光線始点 *)
let startp = create_array 3 0.0 in
(* judge_intersection_fastに与える光線始点 *)
let startp_fast = create_array 3 0.0 in

(* 画面上のx,y,z軸の3次元空間上の方向 *)
let screenx_dir = create_array 3 0.0 in
let screeny_dir = create_array 3 0.0 in
let screenz_dir = create_array 3 0.0 in

(* 直接光追跡で使う光方向ベクトル *)
let ptrace_dirvec  = create_array 3 0.0 in

(* 間接光サンプリングに使う方向ベクトル *)
let dirvecs =
  let dummyf = create_array 0 0.0 in
  let dummyff = create_array 0 dummyf in
  let dummy_vs = create_array 0 (dummyf, dummyff) in
  create_array 5 dummy_vs in

(* 光源光の前処理済み方向ベクトル *)
let light_dirvec =
  let dummyf2 = create_array 0 0.0 in
  let v3 = create_array 3 0.0 in
  let consts = create_array 60 dummyf2 in
  (v3, consts) in

(* 鏡平面の反射情報 *)
let reflections =
  let dummyf3 = create_array 0 0.0 in
  let dummyff3 = create_array 0 dummyf3 in
  let dummydv = (dummyf3, dummyff3) in
  create_array 180 (0, dummydv, 0.0) in

(* reflectionsの有効な要素数 *)

let n_reflections = create_array 1 0 in

let rec fneg x = -.x in

let rec fispos x = (x > 0.0) in
let rec fisneg x = (x < 0.0) in
let rec fiszero x = (x = 0.0) in
let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in
let rec fabs x = if x >= 0.0 then x else fneg x in
let rec fless x y = let z = x -. y in fisneg z in

let rec fflag a =
	if (a >= 0.0) then 1
	else -1 in


(*)
let rec int_of_float a =
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
					ftoi_ret_sub a_sub b (c + c)
				else
					ftoi_ret_sub a_sub (b + c) (c + c) in
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

let rec float_of_int a =
	let abs =
		if (a > 0) then
			a
		else
			- a in
	let flag =
		if (a > 0) then
			1
		else
			-1 in
	let rec itof_ret a =
		let rec itof_ret_sub a b c =
			let a_sub = a / 2 in
			if (a = 0) then
				b
			else
				if ((a - a_sub - a_sub ) > 0) then
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
	let abs = fabs a in
	let rec floor_pos_ker a =
		a -. 1. in
	let rec floor_pos_small a =
		let b = a +. 8388608. in
		let c = b -. 8388608. in
		if  (a < c) then
			floor_pos_ker c
		else
			c in
	let rec floor_pos a =
		if (a > 8388608.) then
			floor_pos_ker a
		else
			floor_pos_small a in
	let rec floor_neg_ker a =
		a +. 1. in
	let rec floor_neg_small a =
		let b = a +. 8388608. in
		let c = b -. 8388608. in
		if (c < a) then
			-. (floor_neg_ker c)
		else
			-. c in
	let rec floor_neg a =
		if (a > 8388608.) then
			-. (floor_neg_ker a)
		else
			floor_neg_small a in
	if (a > 0.) then
		floor_pos abs
	else
		floor_neg abs in
*)
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
	let n = count2 a 0 in
	let flag = n - (n / 2)*2 in
	let a_i2 = pow2 (n / 2) 1.0 in
	let a_m = a *. (pow2 (- n) 1.0) in
	let rec newton x k =
		if (fabs (x *. x -. k) < 0.0000005) then
			x
		else
			newton ((x +. k /. x) *. 0.5) k in
	let sqrt_sub = newton 1.0 a_m in
	if (flag = 1) then
		a_i2 *. sqrt_sub *. 1.41421356
	else if (flag = (-1)) then
		a_i2 *. sqrt_sub *. 0.70710678
	else
		a_i2 *. sqrt_sub in

(*)
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
*)
(*)
let rec countn a b c =
	if (a < b) then
		c
	else
		countn (a-b) b (c+1) in

let rec print_int a =
	let b =
		if (a < 0) then
			(print_char 45;
			(-a))
		else a in

	let x = countn b 10000 0 in
	let b = b - x*10000 in
	let flag =
		if (x > 0) then
			(print_char (48 + x);
				1)
		else 0 in

	let x = countn b 1000 0 in
	let b = b - x*1000 in
	let flag =
		if (x > 0) then
			(print_char (48 + x);
			1)
		else if (flag = 1) then
			(print_char 48;
			1)
		else 0 in

	let x = countn b 100 0 in
	let b = b - x*100 in
	let flag =
		if (x > 0) then
			(print_char (48 + x);
			1)
		else if (flag = 1) then
			(print_char 48;
			1)
		else 0 in

	let x = countn b 10 0 in
	let b = b - x*10 in
	let flag =
		if (x > 0) then
			(print_char (48 + x);
			1)
		else if (flag = 1) then
			(print_char 48;
			1)
		else 0 in

	(print_char (48 + b);
	a) in*)
