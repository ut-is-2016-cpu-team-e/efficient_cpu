open KNormal

let rec outtab oc tabnum =
  if tabnum > 0 then (Printf.fprintf oc "\t"; outtab oc (tabnum-1))
  else ()

let rec out_kNormal oc e tabnum =
  outtab oc tabnum;
  match e with
  | Unit -> Printf.fprintf oc "Unit\n"
  | Int(x) -> Printf.fprintf oc "Int:%d\n" x
  | Float(d) -> Printf.fprintf oc "Float:%f\n" d
  | Neg(id) -> Printf.fprintf oc "Neg %s\n" id
  | Add(id1, id2) -> Printf.fprintf oc "Add %s %s\n" id1 id2
  | Sub(id1, id2) -> Printf.fprintf oc "Sub %s %s\n" id1 id2
  | Mul(id1, id2) -> Printf.fprintf oc "Mul %s %s\n" id1 id2
  | ShiftL2(id) -> Printf.fprintf oc "ShiftL2 %s\n" id
  | ShiftR1(id) -> Printf.fprintf oc "ShiftR1 %s\n" id
  | Div(id1, id2) -> Printf.fprintf oc "Div %s %s\n" id1 id2
  | FNeg(id) -> Printf.fprintf oc "FNeg %s\n" id
  | FAdd(id1, id2) -> Printf.fprintf oc "FAdd %s %s\n" id1 id2
  | FSub(id1, id2) -> Printf.fprintf oc "FSub %s %s\n" id1 id2
  | FMul(id1, id2) -> Printf.fprintf oc "FMul %s %s\n" id1 id2
  | FDiv(id1, id2) -> Printf.fprintf oc "FDiv %s %s\n" id1 id2
  | FReciprocal(id1) -> Printf.fprintf oc "FReciprocal %s\n" id1
  | Xor(t1, t2) -> Printf.fprintf oc "xor %s %s\n" t1 t2
  | FAbs(t1) -> Printf.fprintf oc "fabs %s\n" t1
  | Sqrt(t1) -> Printf.fprintf oc "sqrt %s\n" t1
  | Printchar(t1) -> Printf.fprintf oc "printchar %s\n" t1
  | IfEq(id1, id2, e1, e2) -> Printf.fprintf oc "IfEq %s %s\n" id1 id2; out_kNormal oc e1 (tabnum+1); out_kNormal oc e2 (tabnum+1)
  | IfLE(id1, id2, e1, e2) -> Printf.fprintf oc "IfLE %s %s\n" id1 id2; out_kNormal oc e1 (tabnum+1); out_kNormal oc e2 (tabnum+1)
  | Let((id, t'), e1, e2) -> Printf.fprintf oc "Let %s\n" id; out_kNormal oc e1 (tabnum+1); out_kNormal oc e2 (tabnum+1)
  | Var(id) -> Printf.fprintf oc "Var %s\n" id
  | LetRec({ name = (x1, t1); args = yts; body = e1 }, e2) ->
      let rec print_args argsl =
       match argsl with
       | [] -> Printf.fprintf oc "\n"
       | b::bs -> Printf.fprintf oc "%s " (fst b); print_args bs in
       Printf.fprintf oc "LetRec %s " x1; print_args yts; out_kNormal oc e1 (tabnum+1); out_kNormal oc e2 (tabnum+1)
  | App(id, idlist) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc "\n"
      | b::bs -> Printf.fprintf oc "%s " b; print_idlist bs in
      Printf.fprintf oc "App %s" id; print_idlist idlist
  | App2(id, idlist) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc "\n"
      | b::bs -> Printf.fprintf oc "%s " b; print_idlist bs in
      Printf.fprintf oc "App2 %s" id; print_idlist idlist
  | Tuple(xs) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | b::bs -> Printf.fprintf oc "%s," b; print_idlist bs in
      Printf.fprintf oc "Tuple ("; print_idlist xs
  | LetTuple(xts,id,e1) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | b::bs -> let (i, tt) = b in Printf.fprintf oc "%s," i; print_idlist bs in
      Printf.fprintf oc "LetTuple ("; print_idlist xts; Printf.fprintf oc " %s\n" id; out_kNormal oc e1 (tabnum+1)
  | Get(id1,id2) -> Printf.fprintf oc "Get %s %s\n" id1 id2
  | Put(id1,id2,id3) -> Printf.fprintf oc "Put %s %s %s\n" id1 id2 id3
  | ExtArray(i) -> Printf.fprintf oc "ExtArray %d\n" i
  | ExtTuple(i) -> Printf.fprintf oc "ExtTuple %d\n" i
  | ExtFunApp(id1,idlist) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc "\n";
      | b::bs -> Printf.fprintf oc "%s," b; print_idlist bs in
    Printf.fprintf oc "ExtFunApp %s " id1; print_idlist idlist;
