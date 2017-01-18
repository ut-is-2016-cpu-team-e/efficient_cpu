open Asm

type regt =
  | Ans of exp * (Id.t list * Id.t list)
  | Let of ((Id.t * Type.t) * exp * regt) * (Id.t list * Id.t list)
and regexp = (* 一つ一つの命令に対応する式 *)
  | Nop
  | Li of int
  | FLi of float
  | SetL of Id.l
  | Mr of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | ShiftL2 of Id.t
  | ShiftR1 of Id.t
  | Slw of Id.t * id_or_imm
  | Lwz of Id.t * id_or_imm
  | Stw of Id.t * Id.t * id_or_imm
  | FMr of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | FReciprocal of Id.t
  | Lfd of Id.t * id_or_imm
  | Stfd of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * Id.t * regt * regt
  | IfLE of Id.t * Id.t * regt * regt
  | IfGE of Id.t * Id.t * regt * regt
  | IfFEq of Id.t * Id.t * regt * regt
  | IfFLE of Id.t * Id.t * regt * regt
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t * Id.t list * Id.t list
  | CallCls2 of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
  | SetExt of int

let seq (e1, e2) = Let ((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let live_add x t live =
  if t = Type.Float then
    if List.mem x (snd live) then live else (fst live, x::(snd live))
  else
    if List.mem x (fst live) then live else (x::(fst live), snd live)

let live_sub x t live =
  if t = Type.Float then
    (fst live, List.filter (fun y -> x <> y) (snd live))
  else
    (List.filter (fun y -> x <> y) (fst live), snd live)

let live_merge l1 l2 =
  let (il1, fl1) = l1 in
  let il1' = List.filter (fun x -> List.mem x (fst l2)) il1
  let fl1' = List.filter (fun x -> List.mem x (snd l2)) fl1
  (il1', fl1')@l2

let rec live_analize = function
  | Ans(e) -> Ans(e, live_g [] e)
  | Let ((x, ty), e, t) ->
      let r = live_analize t in
      let live = live_sub x (live_g (snd r) e) in
      Let(((x, ty), e, r), live)

and live_g live e =  (*Save注意*)
  match e with
  | Nop | Li(_) | FLi(_) | SetL(_) | Comment(_) | SetExt(_) | Restore _ | Save _ -> live
  | Mr(x) | Neg(x) | ShiftL2(x) | ShiftR1(x) -> live_add x Type.Int live
  | Add(x, V(y)) | Sub(x, V(y)) | Mul(x, V(y)) | Div(x, V(y)) | Slw(x, (y)) | Lwz(x, V(y)) ->
    live_add x Type.Int (live_add y Type.Int live)
  | Add(x, V(i)) | Sub(x, V(i)) | Mul(x, V(i)) | Div(x, V(i)) | Slw(x, (i)) | Lwz(x, V(i)) ->
    live_add x Type.Int live
  | Stw(x, y, V(z)) -> live_add x Type.Int (live_add y Type.Int (live_add z Type.Int live))
  | FMr(x) | FNeg(x) | FReciprocal(x) -> live_add Type.Float x
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> live_add x Type.Float (live_add y Type.Float)
  | Lfd(x, V(y)) -> live_add x Type.Float (live_add y Type.Int live)
  | Lfd(x, C(i)) -> live_add x Type.Float live
  | Stfd(x, y, V(z)) -> live_add Type.Float x (live_add Type.Int y (live_add Type.Int z))
  | Stfd(x, y, C(i)) -> live_add Type.Float x (live_add Type.Int y live)
  | IfEq(x, y, t1, t2) | IfLE(x, y, t1, t2) | IfGE(x, y, t1, t2) ->
      let live1 = live_analize t1 in
      let live2 = live_analize t2 in
      live_add x Type.Int (live_add y Type.Int (live_merge live1 live2))
  | IfFEq(x, y, t1, t2) | IfFLE(x, y, t1, t2) ->
      let live1 = live_analize t1 in
      let live2 = live_analize t2 in
      live_add x Type.Float (live_add y Type.Float (live_merge live1 live2))
  | CallCls(x, _, its, fts) ->
      let il = List.map (fun y -> list_add y Type.Int live) its
      live_add x Type.Int (List.map (fun y -> list_add y Type.Float il) fts)
  | CallCls2(x, its, fts) ->
      let il = List.map (fun x -> list_add x Type.Int live) its
      live_add x Type.Int (List.map (fun x -> list_add x Type.Float il) fts)
  | CallDir(_, its, fts) ->
      let il = List.map (fun x -> list_add x Type.Int live) its
      List.map (fun x -> list_add x Type.Float il) fts

let add_v_e live v e =
  let rec make_e = function
  | [] -> []
  | v::vs -> (List.map (fun x -> (v, x)) vs) @ (make_e vs) in
  let (li, lf) = live in
  let (vi, vf) = v in
  let (ei, ef) = e in
  let vi' = (List.filter (fun x -> not(List.mem x vi)) li) @ vi in
  let vf' = (List.filter (fun x -> not(List.mem x vf)) lf) @ vf in
  let e_livei = make_e ei in
  let e_livef = make_e ef in
  let ei' = (List.filter (fun (x, y) -> not(List.mem (x, y) ei) && not(List.mem (y, x) ei) e_livei)) @ ei
  let ef' = (List.filter (fun (x, y) -> not(List.mem (x, y) ef) && not(List.mem (y, x) ef)) e_livef) @ ef
  let v' = (vi', vf') in
  let e' = (ei', ef') in
  (v', e')

let rec make_graph venv eenv r ty =
  match r with
  | Ans(e, live) ->
    (*let live' = if ty = Type.Float then live_add "R" Type.Float live else live_add "R" Type.Int live in *)
    add_v_e live' venv eenv
  | Let(((_, _), _, r'), live) ->
    let (venv', eenv') = add_v_e live venv eenv in
    make_graph venv' eenv' r' ty

let rec assoc2 x xlist result =
  match xlist with
  | [] -> result
  | (x1, x2)::xs -> if x = x2 then assoc2 x xs (x1::result) else assoc2 x xs result

let rec can_color x eenv = function
  | [] -> true
  | r::rs -> if List.mem (x, r) eenv then false else can_color x eenv rs

(*let rec color_funargs venv eenv r regenv =
  match r with
  | Ans(e', live) -> regenv
  | Let(((x, t), e, r'), live) ->
    match e with
      | CallCls(_, _, its, fts) | CallCls2(_, its, fts) | CallDir(_, its, fts) ->
        let ilength = List.length its in
        let flength = List.length fts in
        let rec color_args argslist reg i regenv2 len =
          match argslist with
          | [] -> regenv2
          | y::ys ->
            if List.mem_assoc y regenv2 then regenv
            else let overlaplist = assoc2 reg.(i) regenv2  in
              if can_color y eenv overlaplist then
                color_args ys reg (i+1) ((y, reg.(i))::regenv2) len
              else
                color_args ys reg (i+1) ((y, reg.(len))::regenv2) (len+1)
            in
        let regenv' = color_args fts fregs ((color_args its regs !regenv) ilength) flength in
        regenv'
      | IfEq(_, _, r1, r2) | IfLE(_, _, r1, r2) | IfGE(_, _, r1, r2) | IfFEq(_, _, r1, r2) | IfFLE(_, _, r1, r2)->
        let regenv1 = color_funargs venv eenv r1 regenv in
        let regenv2 = color_funargs venv eenv r2 regenv1 in
        color_funargs venv eenv r' regenv2
      | _ -> color_funargs venv eenv r' regenv *)

let find_and_num x l =
  let rec find_and_num_iter x i = function
    | [] -> (false, 0)
    | y::ys -> if x = y then (true, i) else find_num_iter x (i+1) ys in
  find_and_num_iter x 0 l

let rec color_funargs x t = function
  | Ans(e, live) -> color_funargs' x t e
  | Let(((y, ty), e, r'), live) ->
    let (c, i) = color_funargs' x t e in
    if c then (c, i) else color_funargs x t r'
and color_funargs' x t e =
  match e with
  | CallCls(_, _, its, fts) | CallCls2(_, its, fts) | CallDir(_, its, fts) ->
    if t = Type.Float then find_and_num x fts
    else find_and_num x its
  | IfEq(_, _, r1, r2) | IfLE(_, _, r1, r2) | IfGE(_, _, r1, r2) | IfFEq(_, _, r1, r2) | IfFLE(_, _, r1, r2) ->
    let (c1, i1) = color_funargs x t r1 in if c1 then (c1, i1)
    else let (c2, i2) = color_funargs x t r2 in (c2, i2)
  | _ -> (false, 0)


let rec trycolor x reg eenv regenv i next =  (*Spillの場合はまだ考えない*)
  try List.mem_find x regenv -> Not_found
  let overlaplist = assoc2 reg.(i) regenv [] in
    if can_color x eenv overlaplist then reg.(i)
    else if next = -1 then trycolor x reg eenv regenv (i+1) next
    else trycolor x reg eenv regenv next (-1)

let rec coloring x t e r' eenv reg regenv regmax =
    let (b, i) = color_funargs x t r' in
    let xreg =
      if b then trycolor x reg eenv regenv i regmax
      else trycolor x reg eenv regenv regmax (-1)
      in
    xreg


      match e withlet regenv' =
      | CallCls(_) | CallCls2(_) | CallDir(_) -> regenv
      | IfEq(_, _, r1, r2) | IfLE(_, _, r1, r2) | IfGE(_, _, r1, r2) | IfFEq(_, _, r1, r2) ->
          let regenv' = color_others eenv r2 (color_others eenv r1 regenv) in
          let regenv2' =
                  if t = Type.Float then trycolor x fregs eenv regenv' 0
                  else if t = Type.Unit then regenv'
                  else trycolor x regs eenv regenv' 0 in
          color_others eenv r' regenv2'
      | _ -> let regenv' =
              if t = Type.Float then trycolor x fregs eenv regenv 0
              else if t = Type.Unit then regenv
              else trycolor x regs eenv regenv 0 in
              color_others eenv r' regenv'


let block_merge rlist1 rlist2 = rlist1 @ (List.filter (fun r -> List.mem r rlist1) rlist2)

let rec dividing r rlist rsum headinfo =
  match r with
  | Ans(_) -> rlist@[(headinfo, rsum)]
  | Let(((x, t), e, r'), live) ->
      match e with
        | CallCls(_) | CallCls2(_) | CallDir(_) ->
          let rlist' = rlist@[(headinfo, rsum)] in
          if t = Type.Float then dividing r' rlist' r [(x, "fv")]
          else if t = Type.Unit then dividing r' rlist' r []
          else dividing r' rlist' r [(x, "v0")]
        | IfEq(_, _, r1, r2) | IfLE(_, _, r1, r2) | IfGE(_, _, r1, r2) | IfFEq(_, _, r1, r2) | IfFLE(_, _, r1, r2) ->
          let r1list = dividing r1 rlist rsum headinfo in
          let r2list = dividing r2 rlist rsum headinfo in
          let rlist' = block_merge rlist1 rlist2
          dividing r' rlist' rsum headinfo
        | _ -> dividing r' rlist rsum headinfo

exception NoReg of Id.t * Type.t
let find x t regenv =
  if is_reg x then x else
  try List.assoc x regenv
  with Not_found -> raise (NoReg(x, t))


let rec g r regenv eenv =
  match r with
  | Ans(e, live) ->  restore_analysis Ans(e)
  | Let(((x, t), e, r'), live) ->
      let xreg =
        if t = Type.Float then coloring x t e r' eenv fregs regenv fmax
        else coloring x t e r' eenv regs regenv imax in
      let e' = restore_analysis e r regenv eenv in

and restore_analysis e r live regenv eenv =
  try g' e regenv
  with NoReg(x, t) ->
    (Format.eprintf "restoring %s@." x;
      (g (Let(((x, t), Restore(x), r), live)) regenv eenv))

and g' e regenv =
  match e with
  | Nop | Li(_) | FLi(_) | SetL(_) | Comment(_) -> e
  | Neg(x) -> Neg(find x regenv)
  | Mr(x) -> Mr(find x regenv)
  | Add(x, V(y)) -> Add(find x regenv, V(find y regenv))
  | Add(x, C(y)) -> Add(find x regenv, C(y))
  | Sub(x, V(y)) -> Sub(find x regenv, V(find y regenv))
  | Sub(x, C(y)) -> Sub(find x regenv, C(y))
  | Mul(x, V(y)) -> Mul(find x regenv, V(find y regenv))
  | Mul(x, C(y)) -> Mul(find x regenv, C(y))
  | Div(x, V(y)) -> Div(find x regenv, V(find y regenv))
  | Div(x, C(y)) -> Div(find x regenv, C(y))
  | ShiltL2(x) -> ShiftL2(find x regenv)
  | ShiftR1(x) -> ShiftR1(find x regenv)
  | Slw(x, V(y)) -> Slw(find x regenv V(find y regenv))
  | Slw(x, C(y)) -> Slw(find x regenv, C(y))
  | Lwz(x, V(y)) -> Lwz(find x regenv V(find y regenv))
  | Lwz(x, C(y)) -> Lwz(find x regenv, C(y))
  | Stw(x, y, V(z)) -> Stw(find x regenv, find y regenv, V(find z regenv))
  | Stw(x, y, C(z)) -> Stw(find x regenv, find y regenv, C(z))
  | FMr(x) -> FMr(find x regenv)
  | FAdd(x, y) -> FAdd(find x regenv, find y regenv)
  | FSub(x, y) -> FSub(find x regenv, find y regenv)
  | FMul(x, y) -> FMul(find x regenv, find y regenv)
  | FDiv(x, y) -> FDiv(find x regenv, find y regenv)
  | FReciprocal(x) -> FReciprocal(find x regenv)
  | Lfd(x, V(y)) -> Lfd(find x regenv V(find y regenv))
  | Lfd(x, C(y)) -> Lfd(find x regenv, C(y))
  | Stfd(x, y, V(z)) -> Stfd(find x regenv, find y regenv, V(find z regenv))
  | Stfd(x, y, C(z)) -> Stfd(find x regenv, find y regenv, C(z))
  | IfEq(x, y, r1, r2) -> IfEq(find x regenv, find y regenv, alloc r1 regenv, alloc r2 regenv)
  | IfLE(x, y, r1, r2) -> IfLE(find x regenv, find y regenv, alloc r1 regenv, alloc r2 regenv)
  | IfFEq(x, y, r1, r2) -> IfFEq(find x regenv, find y regenv, alloc r1 regenv, alloc r2 regenv)
  | IfFLE(x, y, r1, r2) -> IfFLE(find x regenv, find y regenv, alloc r1 regenv, alloc r2 regenv)
  | CallCls(x, _, its, fts) -> CallCls(x, _, List.map (fun y -> find y regenv) its, List.map (fun y -> find y regenv) fts)
  | CallCls2(x, its, fts) -> CallCls2(x, List.map (fun y -> find y regenv) its, List.map (fun y -> find y regenv) fts)  (*要修正*)
  | CallDir(x, its, fts) -> CallDir(x, List.map (fun y -> find y regenv) its, List.map (fun y -> find y regenv) fts)
  | Save(_) -> assert false
and g'_if




let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t} =
  let live = (ys, zs) in


let f (Prog(data, fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e', regenv' = g (Id.gentmp Type.Unit, Type.Unit) (Ans(Nop)) M.empty e in
  Prog(data, fundefs', e')
