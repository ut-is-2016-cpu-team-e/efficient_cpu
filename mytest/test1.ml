let x = 3.0 in
  let rec f z = x +. z in
    let rec g z = x *. z in
      let y = f 2.0 +. g 4.0 in
        print_float(y)
