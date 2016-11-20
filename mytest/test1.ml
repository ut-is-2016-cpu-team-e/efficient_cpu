let v1 = Array.create 3 1.23 in
let v2 = Array.create 3 4.56 in
let i = 2 in
let rec f x = v1.(i) +. v1.(i-1) +. v2.(i) +. x in
let z = int_of_float (f 3.0) in
print_int(z)
