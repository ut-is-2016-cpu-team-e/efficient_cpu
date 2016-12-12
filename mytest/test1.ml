let x = 3.0 in
let y = 4.0 in
let z = 5.0 in
screen.(0) <- read_float ();
screen.(1) <- read_float ();
screen.(2) <- read_float ();
let xx = x +. screen.(0) in
let yy = y +. screen.(1) in
let zz = z +. screen.(2) in
if xx = 6.0 then print_int(3) else print_int(2)
