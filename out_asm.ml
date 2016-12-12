open Asm

let rec outtab oc tabnum =
  if tabnum > 0 then (Printf.fprintf oc "\t"; outtab oc (tabnum-1))
  else ()

let rec out_data oc = function
  | [] -> Printf.fprintf oc "\n";
  | d::ds -> let (Id.L(l), f) = d in Printf.fprintf oc "%s : %f\n" l f; out_data oc ds

let rec out_asm_t oc t1 tabnum =
  outtab oc tabnum;
  match t1 with
  | Ans(e) -> Printf.fprintf oc "Ans\n"; out_asm_e oc e (tabnum+1)
  | Let((i1,tt),e,t2) -> Printf.fprintf oc "Let %s\n" i1; out_asm_e oc e (tabnum+1); out_asm_t oc t2 (tabnum+1)
and out_asm_e oc e tabnum =
  let rec out_tlist = function
  | [] -> ()
  | t::ts -> Printf.fprintf oc "%s " t; out_tlist ts in
  outtab oc tabnum;
  match e with
  | Nop -> Printf.fprintf oc "Nop\n"
  | Li(x) -> Printf.fprintf oc "Li %d\n" x
  | FLi(f) -> Printf.fprintf oc "FLi %f\n" f
  | SetL(l) -> let Id.L(ll) = l in Printf.fprintf oc "SetL %s\n" ll
  | SetExt(x) -> Printf.fprintf oc "SetExt %d\n" x
  | Mr(t) -> Printf.fprintf oc "Mr %s\n" t
  | Neg(t) -> Printf.fprintf oc "Neg %s\n" t
  | Add(t1, V(t2)) -> Printf.fprintf oc "Add %s %s\n" t1 t2
  | Add(t1,  C(x)) -> Printf.fprintf oc "Add %s %d\n" t1 x
  | Sub(t1, V(t2)) -> Printf.fprintf oc "Sub %s %s\n" t1 t2
  | Sub(t1,  C(x)) -> Printf.fprintf oc "Sub %s %d\n" t1 x
  | Mul(t1, V(t2)) -> Printf.fprintf oc "Mul %s %s\n" t1 t2
  | Mul(t1,  C(x)) -> Printf.fprintf oc "Mul %s %d\n" t1 x
  | Div(t1, V(t2)) -> Printf.fprintf oc "Div %s %s\n" t1 t2
  | Div(t1,  C(x)) -> Printf.fprintf oc "Div %s %d\n" t1 x
  | ShiftL2(t) -> Printf.fprintf oc "ShiftL2 %s\n" t
  | ShiftR1(t) -> Printf.fprintf oc "ShiftR1 %s\n" t
  | Slw(t1, V(t2)) -> Printf.fprintf oc "Slw %s %s\n" t1 t2
  | Slw(t1,  C(x)) -> Printf.fprintf oc "Slw %s %d\n" t1 x
  | Lwz(t1, V(t2)) -> Printf.fprintf oc "Lwz %s %s\n" t1 t2
  | Lwz(t1,  C(x)) -> Printf.fprintf oc "Lwz %s %d\n" t1 x
  | Stw(t1, t2, V(t3)) -> Printf.fprintf oc "Stw %s %s %s\n" t1 t2 t3
  | Stw(t1, t2, C(x)) -> Printf.fprintf oc "Stw %s %s %d\n" t1 t2 x
  | FMr(t) -> Printf.fprintf oc "FMr %s\n" t
  | FNeg(t) -> Printf.fprintf oc "FNeg %s\n" t
  | FAdd(t1, t2) -> Printf.fprintf oc "FAdd %s %s\n" t1 t2
  | FSub(t1, t2) -> Printf.fprintf oc "FSub %s %s\n" t1 t2
  | FMul(t1, t2) -> Printf.fprintf oc "FMul %s %s\n" t1 t2
  | FDiv(t1, t2) -> Printf.fprintf oc "FDiv %s %s\n" t1 t2
  | FReciprocal(t1) -> Printf.fprintf oc "FReciprocal %s\n" t1
  | Xor(t1, t2) -> Printf.fprintf oc "xor %s %s\n" t1 t2
  | FAbs(t1) -> Printf.fprintf oc "fabs %s\n" t1
  | Sqrt(t1) -> Printf.fprintf oc "sqrt %s\n" t1
  | Printchar(V(t1)) -> Printf.fprintf oc "printchar %s\n" t1
  | Printchar(C(t1)) -> Printf.fprintf oc "printchar %d\n" t1
  | Readint -> Printf.fprintf oc "Readint\n";
  | Readfloat -> Printf.fprintf oc "Readfloat\n";
  | Lfd(t1, V(t2)) -> Printf.fprintf oc "Lfd %s %s\n" t1 t2
  | Lfd(t1,  C(x)) -> Printf.fprintf oc "Lfd %s %d\n" t1 x
  | Stfd(t1, t2, V(t3)) -> Printf.fprintf oc "Stfd %s %s %s\n" t1 t2 t3
  | Stfd(t1, t2, C(x)) -> Printf.fprintf oc "Stfd %s %s %d\n" t1 t2 x
  | Comment(s) -> Printf.fprintf oc "Comment %s\n" s
  | IfEq(t1, t2, e1, e2) -> Printf.fprintf oc "IfEq %s %s\n" t1 t2; out_asm_t oc e1 (tabnum+1); out_asm_t oc e2 (tabnum+1)
  | IfLE(t1, t2, e1, e2) -> Printf.fprintf oc "IfLE %s %s\n" t1 t2; out_asm_t oc e1 (tabnum+1); out_asm_t oc e2 (tabnum+1)
  | IfGE(t1, t2, e1, e2) -> Printf.fprintf oc "IfGE %s %s\n" t1 t2; out_asm_t oc e1 (tabnum+1); out_asm_t oc e2 (tabnum+1)
  | IfFEq(t1, t2, e1, e2) -> Printf.fprintf oc "IfFEq %s %s\n" t1 t2; out_asm_t oc e1 (tabnum+1); out_asm_t oc e2 (tabnum+1)
  | IfFLE(t1, t2, e1, e2) -> Printf.fprintf oc "IfFLE %s %s\n" t1 t2; out_asm_t oc e1 (tabnum+1); out_asm_t oc e2 (tabnum+1)
  | CallCls(t1, t1name, t2list, t3list) -> Printf.fprintf oc "CallCls %s (%s) d:" t1 t1name; out_tlist t2list; Printf.fprintf oc "f:"; out_tlist t3list; Printf.fprintf oc "\n"
  | CallCls2(t1, t2list, t3list) -> Printf.fprintf oc "CallCls2 %s d: " t1;
    out_tlist t2list; Printf.fprintf oc "f:"; out_tlist t3list; Printf.fprintf oc "\n"
  | CallDir(l1, t2list, t3list) ->
    let Id.L(t1) = l1 in
      Printf.fprintf oc "CallDir %s d:" t1; out_tlist t2list; Printf.fprintf oc "f:"; out_tlist t3list; Printf.fprintf oc "\n"
  | Save(t1, t2) -> Printf.fprintf oc "Save %s %s\n" t1 t2
  | Restore(t1) -> Printf.fprintf oc "Restore %s\n" t1

let rec out_top_and_asm oc p =
    let rec out_tlist = function
    | [] -> ()
    | t::ts -> Printf.fprintf oc "%s " t; out_tlist ts in
    let rec out_fundefs = function
    | [] -> ()
    | {name = Id.L(n); args = alist; fargs = falist; body = t; _}::fs -> Printf.fprintf oc "%s (args) : " n;
    out_tlist alist;
    Printf.fprintf oc "(fargs) : ";
    out_tlist falist;
    Printf.fprintf oc "\n";
    out_asm_t oc t 1;
    out_fundefs fs in

    let Prog(data, fundefs, t) = p in
      Printf.fprintf oc "data\n";
      out_data oc data;
      Printf.fprintf oc "fundefs\n";
      out_fundefs fundefs;
      Printf.fprintf oc "\nmain\n";
      out_asm_t oc t 0
