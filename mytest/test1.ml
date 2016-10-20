let x = 10 in
let rec f y =
  if y = 0 then 0 else
  x + f (y - 1) in
  let z = 20 in
  let rec g y =
    if y = 0 then 0 else
      z - g (y - 1) in
      let z = f 3 + g 1 in
        print_int(z)
