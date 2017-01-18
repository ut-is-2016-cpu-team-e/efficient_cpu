open KNormal

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)

let rec g env = function (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
  | Var(x) when memi x env -> Int(findi x env)
  (* | Var(x) when memf x env -> Float(findf x env) *)
  (* | Var(x) when memt x env -> Tuple(findt x env) *)
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env) (* 足し算のケース (caml2html: constfold_add) *)
  | Add(x, y) when memi x env && ((Id.by_const x) = false) -> let t = Id.gentmp2 Type.Int in Let((t, Type.Int), Int(findi x env), Add(t, y))
  | Add(x, y) when memi y env && ((Id.by_const y) = false) -> let t = Id.gentmp2 Type.Int in Let((t, Type.Int), Int(findi y env), Add(x, t))
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Sub(x, y) when memi x env && ((Id.by_const x) = false) -> let t = Id.gentmp2 Type.Int in Let((t, Type.Int), Int(findi x env), Sub(t, y))
  | Sub(x, y) when memi y env && ((Id.by_const y) = false) -> let t = Id.gentmp2 Type.Int in Let((t, Type.Int), Int(findi y env), Sub(x, t))
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | ShiftL2(x) when memi x env -> Int(findi x env * 4)
  | ShiftR1(x) when memi x env -> Int(findi x env / 2)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FAdd(x, y) when memf x env && ((Id.by_const x) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf x env), FAdd(t, y))
  | FAdd(x, y) when memf y env && ((Id.by_const y) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf y env), FAdd(x, t))
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FSub(x, y) when memf x env && ((Id.by_const x) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf x env), FSub(t, y))
  | FSub(x, y) when memf y env && ((Id.by_const y) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf y env), FSub(x, t))
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FMul(x, y) when memf x env && ((Id.by_const x) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf x env), FMul(t, y))
  | FMul(x, y) when memf y env && ((Id.by_const y) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf y env), FMul(x, t))
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | FDiv(x, y) when memf x env && ((Id.by_const x) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf x env), FDiv(t, y))
  | FDiv(x, y) when memf y env && ((Id.by_const y) = false) -> let t = Id.gentmp2 Type.Float in Let((t, Type.Float), Float(findf y env), FDiv(x, t))
  | FMAdd(x, y, z) when memf x env && memf y env && memf z env -> Float(findf x env *. findf y env +. findf z env)
  | FMAdd(x, y, z) when memf x env && memf y env -> let t = Id.gentmp2 Type.Float in
  Let((t, Type.Float), Float(findf x env *. findf y env), FAdd(t, z))
  | IfEq(x, y, e1, e2) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) when memf x env && memf y env -> if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) when memf x env && memf y env -> if findf x env <= findf y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | IfFAbsLE(x, y, e1, e2) -> IfFAbsLE(x, y, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのケース (caml2html: constfold_let) *)
      let e1' = g env e1 in
      let e2' = g (M.add x e1' env) e2 in
      Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
      List.fold_left2
	(fun e' xt z -> Let(xt, Var(z), e'))
	(g env e)
	xts
	(findt y env)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  | e -> e

let f = g M.empty
