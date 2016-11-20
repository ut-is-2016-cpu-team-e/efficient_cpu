let dummy = Array.create 0 0.0 in
let rec make m n =
  let mat = Array.create m dummy in
  let rec init i =
    if i < 0 then () else
    (mat.(i) <- Array.create n 0.0;
     init (i - 1)) in
  init (m - 1);
  mat in
let a = make 2 2 in
  a.(0).(0) <- 1.0;
  a.(0).(1) <- 2.0;
  a.(1).(0) <- 3.0;
  a.(1).(1) <- 4.0;
  let x1 = a.(0).(0) +. a.(0).(1) in
  let x2 = a.(1).(0) +. a.(1).(1) in
  let x = x1 +. x2 in
  print_float(x)
