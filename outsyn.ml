open Syntax

let rec outtab oc tabnum =
  if tabnum > 0 then (Printf.fprintf oc "\t"; outtab oc (tabnum-1))
  else ()

let rec outsyntax oc e tabnum =
  outtab oc tabnum;
  match e with
   | Unit -> Printf.fprintf oc "Unit\n"
   | Bool(x) -> Printf.fprintf oc "Bool:%b\n" x
   | Int(x) -> Printf.fprintf oc "Int:%d\n" x
   | Float(x) -> Printf.fprintf oc "Float:%f\n" x
   | Not(t) -> Printf.fprintf oc "Not\n"; outsyntax oc t (tabnum+1)
   | Neg(t) -> Printf.fprintf oc "Neg\n"; outsyntax oc t (tabnum+1)
   | Add(t1, t2) -> Printf.fprintf oc "Add\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Sub(t1, t2) -> Printf.fprintf oc "Sub\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Mul(t1, t2) -> Printf.fprintf oc "Mul\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Div(t1, t2) -> Printf.fprintf oc "Div\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | FNeg(t) -> Printf.fprintf oc "FNeg\n"; outsyntax oc t (tabnum+1)
   | FAdd(t1, t2) -> Printf.fprintf oc "FAdd\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | FSub(t1, t2) -> Printf.fprintf oc "FSub\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | FMul(t1, t2) -> Printf.fprintf oc "FMul\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | FDiv(t1, t2) -> Printf.fprintf oc "FDiv\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Xor(t1, t2) -> Printf.fprintf oc "xor\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | FAbs(t1) -> Printf.fprintf oc "fabs\n"; outsyntax oc t1 (tabnum+1)
   | Sqrt(t1) -> Printf.fprintf oc "sqrt\n"; outsyntax oc t1 (tabnum+1)
   | Printchar(t1) -> Printf.fprintf oc "printchar\n"; outsyntax oc t1 (tabnum+1)
   | Readint(_) -> Printf.fprintf oc "Readint\n";
   | Readfloat(_) -> Printf.fprintf oc "Readfloat\n";
   | Eq(t1, t2) -> Printf.fprintf oc "Eq\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | LE(t1, t2) -> Printf.fprintf oc "LE\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | If(t1, t2, t3) -> Printf.fprintf oc "If\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1); outsyntax oc t3 (tabnum+1)
   | Let((i, tt), t1, t2) -> Printf.fprintf oc "Let %s\n" i; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Var(i) -> Printf.fprintf oc "Var %s\n" i
   | LetRec(fds, t) -> let (i, t2) = fds.name in let argslist = fds.args in let body = fds.body in
                       let rec print_args argsl =
                        match argsl with
                        | [] -> Printf.fprintf oc "\n"
                        | b::bs -> Printf.fprintf oc "%s " (fst b); print_args bs in
                        Printf.fprintf oc "LetRec %s" i; print_args argslist; outsyntax oc body (tabnum+1); outsyntax oc t (tabnum+1)
   | App(t,ts) -> Printf.fprintf oc "App\n";outsyntax oc t (tabnum+1); print_tlist oc ts (tabnum+1)
   | Tuple(ts) -> Printf.fprintf oc "Tuple\n"; print_tlist oc ts tabnum
   | LetTuple(its, t1, t2) -> let rec print_its itslist =
                                match itslist with
                                | [] -> Printf.fprintf oc ")\n"
                                | s::ss -> let i = fst s in Printf.fprintf oc "%s," i; print_its ss in
                                  Printf.fprintf oc "Let Tuple ("; print_its its; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Array(t1, t2) -> Printf.fprintf oc "Array\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1);
   | Get(t1, t2) -> Printf.fprintf oc "Get\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1)
   | Put(t1, t2, t3) -> Printf.fprintf oc "Put\n"; outsyntax oc t1 (tabnum+1); outsyntax oc t2 (tabnum+1); outsyntax oc t3 (tabnum+1)
and print_tlist oc es tabnum =
      match es with
      | [] -> ()
      | b::bs -> outsyntax oc b tabnum; print_tlist oc bs tabnum
