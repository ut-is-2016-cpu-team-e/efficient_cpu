open Asm

let regenv := []

let rec mem_assoc2 x xlist =
  match xlist with
  | [] -> false
  | (x1, x2)::xs -> if x = x2 then true else mem_assoc2 x xs

type regt =
  | Ans of exp * ((Id.t) * (Id.t))
  | Let of ((Id.t * Type.t) * exp * regt) * (Id.t * Id.t) list
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

let function_args venv eenv r regenv =
  match r with
  | Ans(e', live) ->
    let regenv' =
  | Let(((x, t), e, r'), live) | Let(((x, t), e, r'), live) | Let(((x, t), e, r'), live) ->
    match e with
      | CallCls(_, _, its, fts) | CallCls2(_, its, fts) | CallDir(_, its, fts) ->
        let ilength = List.length its in
        let flength = List.length fts in
        let rec color_args argslist reg i regenv2 len =
          match argslist with
          | [] -> regenv2
          | y::ys ->
            if List.mem_assoc y regenv2 then ()
            else if mem_assoc2 reg.(i) regenv2 then
              color_args ys reg (i+1) ((y, reg.(len))::regenv2) (len+1)
            else
              color_args ys reg (i+1) ((y, reg.(i))::regenv2) len
        in
        let regenv' = color_args fts fregs ((color_args its regs !regenv) ilength) flength in
          function_args venv eenv r' regenv'
      | IfEq(_, _, r1, r2) | IfLE(_, _, r1, r2) | IfGE(_, _, r1, r2) | IfFEq(_, _, r1, r2) | IfFLE(_, _, r1, r2)->
        let regenv1 = function_args venv eenv r1 regenv in
        let regenv2 = function_args venv eenv r2 regenv1 in
        function_args venv eenv r' regenv2
      | _ -> function_args venv r' regenv


let rec coloring v e r regenv =



let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t} =
  let live = (ys, zs) in


let f (Prog(data, fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e', regenv' = g (Id.gentmp Type.Unit, Type.Unit) (Ans(Nop)) M.empty e in
  Prog(data, fundefs', e')
