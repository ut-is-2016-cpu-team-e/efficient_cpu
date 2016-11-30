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
