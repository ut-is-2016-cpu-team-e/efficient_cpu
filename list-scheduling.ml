open Asm

type inst = (Id.t * Type.t) * exp * int

type argslist =
  | OK of Id.t list
  | NG

let type_instruction = function
  | Nop | Mr _ | ShiftL2 _ | ShiftR1 _ | -> ("others", 1)
  | Li _  | SetL _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Slw _ -> ("alu", 1)
  | Lwz _ | Stw _ | Lfd _ | Stfd _ | Save _ | Restore _ -> ("memory", 3)
  | FLi _ -> ("alu", 4)
  | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | FReciprocal _ -> ("fpu", 2)
  | IfEq _ | IfLE _ | IfGE _ | IfFEq _ | IfFLE _ | CallCls _ | CallCls2 _ | CallDir _ -> ("stop", 0)


let depend_comp = function
    | Nop -> OK([])
    | Li(x) -> OK([])
    | FLi(x) -> OK([])
    | SetL(_) -> OK([])
    | Mr(x) -> OK([x])
    | Neg(x) -> OK([x])
    | Add(x, C(i)) -> OK([x])
    | Add(x, V(y)) -> OK(x::[y])
    | Sub(x, C(i)) -> OK([x])
    | Sub(x, V(y)) -> OK(x::[y])
    | Mul(x, C(i)) -> OK([x])
    | Mul(x, V(y)) -> OK(x::[y])
    | Div(x, C(i)) -> OK([x])
    | Div(x, V(y)) -> OK(x::[y])
    | ShiftL2(x) -> OK([x])
    | ShiftR1(x) -> OK([x])
    | Slw(x, C(i)) -> OK([x])
    | Slw(x, V(y)) -> OK(x::[y])
    | Lwz(x, C(i)) -> OK([x])
    | Lwz(x, V(y)) -> OK(x::[y])
    | Stw(x, y, C(i)) -> OK([x])
    | Stw(x, y, V(z)) -> OK(x::y::[z])
    | FMr(x) -> OK([x])
    | FNeg(x) -> OK([x])
    | FAdd(x, y) -> OK(x::[y])
    | FSub(x, y) -> OK(x::[y])
    | FMul(x, y) -> OK(x::[y])
    | FDiv(x, y) -> OK(x::[y])
    | FReciprocal(x) -> OK([x])
    | Lfd(x, C(i)) -> OK([x])
    | Lfd(x, V(y)) -> OK(x::[y])
    | Stfd(x, y, C(i)) -> OK([x])
    | Stfd(x, y, V(z)) -> OK(x::y::[z])
    | Comment(_) -> OK([])
    | IfEq(_) -> NG
    | IfLE(_) -> NG
    | IfGE(_) -> NG
    | IfFEq(_) -> NG
    | IfFLE(_) -> NG
    | CallCls(_, _, idlist, idflist) -> NG
    | CallCls(_, idlist, idflist) -> NG
    | CallDir(_, idlist, idflist) -> NG
    | Save(x, y) -> OK(x::[y])
    | Restore(x) -> OK([x])

let rec emake_comp myi id = function
  | [] -> []
  | i::is -> let ((x, _), _, _, (_, delay)) = i in
      if id = x then [((i, myi), delay)]     (*c->mycとそこにかかるレイテンシ*)
      else emake_comp myi id is

let emake i ilist = function
  | [] -> []
  | t::ts -> (emake_comp i t ilist)@(emake c ts)

let make_ready_set vlist elist =
  let esnd = List.map (snd (fst)) elist in
    List.filter (fun v -> !(List.mem v esnd)) vlist

let rec make_g e =
  let count = ref 0 in
  let rec gather = function
    | Ans(exp) ->
    | Let((x, t) as xt, exp, e) -> count := !count + 1; let s = type_instruction e in ((x, t), exp, !count, s)::(gather e) in
  let rec depend elist = function
    | [] -> elist
    | (((x, t), exp, il, c, s) as i)::ilist ->
      let war =
        match depend_comp exp with
          | OK(idlist) -> (emake i ilist idlist)@elist
          | NG -> elist in war in
  let ge = gather e
  let vlist = List.map (fun (x, y, z) -> z) ge
  let elist = depend [] (List.rev ge) in
  (vlist, elist)


let rec scheduling vlist elist =
  let ready_set = make_ready_set vlist elist in
  let i = List.hd readyset



let f (Prog(data, fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g e in
  Prog(data, fundefs', e')
