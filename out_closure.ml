open Closure

let rec outtab oc tabnum =
  if tabnum > 0 then (Printf.fprintf oc "\t"; outtab oc (tabnum-1))
  else ()

let rec out_closure oc e tabnum =
  outtab oc tabnum;
  match e with
  | Unit -> Printf.fprintf oc "Unit\n"
  | Int(x) -> Printf.fprintf oc "Int:%d\n" x
  | Float(d) -> Printf.fprintf oc "Float:%f\n" d
  | Neg(id) -> Printf.fprintf oc "Neg %s\n" id
  | Add(id1, id2) -> Printf.fprintf oc "Add %s %s\n" id1 id2
  | Sub(id1, id2) -> Printf.fprintf oc "Sub %s %s\n" id1 id2
  | Mul(id1, id2) -> Printf.fprintf oc "Mul %s %s\n" id1 id2
  | Div(id1, id2) -> Printf.fprintf oc "Div %s %s\n" id1 id2
  | ShiftL2(id) -> Printf.fprintf oc "ShiftL2 %s\n" id
  | ShiftR1(id) -> Printf.fprintf oc "ShiftR1 %s\n" id
  | FNeg(id) -> Printf.fprintf oc "FNeg %s\n" id
  | FAdd(id1, id2) -> Printf.fprintf oc "FAdd %s %s\n" id1 id2
  | FSub(id1, id2) -> Printf.fprintf oc "FSub %s %s\n" id1 id2
  | FMul(id1, id2) -> Printf.fprintf oc "FMul %s %s\n" id1 id2
  | FDiv(id1, id2) -> Printf.fprintf oc "FDiv %s %s\n" id1 id2
  | FReciprocal(id1) -> Printf.fprintf oc "FReciprocal %s\n" id1
  | IfEq(id1, id2, e1, e2) -> Printf.fprintf oc "IfEq %s %s\n" id1 id2; out_closure oc e1 (tabnum+1); out_closure oc e2 (tabnum+1)
  | IfLE(id1, id2, e1, e2) -> Printf.fprintf oc "IfLE %s %s\n" id1 id2; out_closure oc e1 (tabnum+1); out_closure oc e2 (tabnum+1)
  | Let((id, t'), e1, e2) -> Printf.fprintf oc "Let %s\n" id; out_closure oc e1 (tabnum+1); out_closure oc e2 (tabnum+1)
  | Var(id) -> Printf.fprintf oc "Var %s\n" id
  | MakeCls((id, ty), {entry = Id.L(l); actual_fv = fvlist}, tt) ->
      let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | x::xs -> Printf.fprintf oc "%s " x; print_idlist xs in
      Printf.fprintf oc "MakeCls %s (entry = %s, actual_fc = " id l; print_idlist fvlist; out_closure oc tt (tabnum+1)
  | AppCls(id, idlist) ->
      let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | x::xs -> Printf.fprintf oc "%s " x; print_idlist xs in
      Printf.fprintf oc "AppCls %s " id; print_idlist idlist
  | AppCls2(id, idlist) ->
      let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | x::xs -> Printf.fprintf oc "%s " x; print_idlist xs in
      Printf.fprintf oc "AppCls2 %s " id; print_idlist idlist
  | AppDir(Id.L(id), idlist) ->
      let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | x::xs -> Printf.fprintf oc "%s " x; print_idlist xs in
      Printf.fprintf oc "AppDir %s " id; print_idlist idlist
  | Tuple(xs) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | b::bs -> Printf.fprintf oc "%s," b; print_idlist bs in
      Printf.fprintf oc "Tuple ("; print_idlist xs
  | LetTuple(xts,id,e1) ->
    let rec print_idlist = function
      | [] -> Printf.fprintf oc ")\n"
      | b::bs -> let (i, tt) = b in Printf.fprintf oc "%s," i; print_idlist bs in
      Printf.fprintf oc "LetTuple ("; print_idlist xts; Printf.fprintf oc " %s\n" id; out_closure oc e1 (tabnum+1)
  | Get(id1,id2) -> Printf.fprintf oc "Get %s %s\n" id1 id2
  | Put(id1,id2,id3) -> Printf.fprintf oc "Put %s %s %s\n" id1 id2 id3
  | ExtArray(i) -> Printf.fprintf oc "ExtArray %d\n" i
  | ExtTuple(i) -> Printf.fprintf oc "ExtTuple %d\n" i

let out_top_and_closure oc p =
  Printf.fprintf oc "toplevel\n";
  let rec print_idlist idlist =
    match idlist with
    | [] -> Printf.fprintf oc " ";
    | i::is -> let (ii, _) = i in Printf.fprintf oc "%s " ii; print_idlist is in
  let rec print_tp_list = function
    | [] -> Printf.fprintf oc "\n"
    | x::xs ->
      let Id.L(l) = fst x.name in
      Printf.fprintf oc "name : %s args : " l; print_idlist x.args;
      Printf.fprintf oc "formal_fv : "; print_idlist x.formal_fv;
      Printf.fprintf oc "\n";
      out_closure oc x.body 0;
      print_tp_list xs; in
  let Prog(tp, e) = p in
    print_tp_list tp;
    out_closure oc e 0
